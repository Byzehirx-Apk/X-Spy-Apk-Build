.class public Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;
.super Lcom/google/android/material/appbar/HeaderBehavior;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BaseBehavior"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;,
        Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/material/appbar/AppBarLayout;",
        ">",
        "Lcom/google/android/material/appbar/HeaderBehavior",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final INVALID_POSITION:I = -0x1

.field private static final MAX_OFFSET_ANIMATION_DURATION:I = 0x258


# instance fields
.field private lastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private lastStartedType:I

.field private offsetAnimator:Landroid/animation/ValueAnimator;

.field private offsetDelta:I

.field private offsetToChildIndexOnLayout:I

.field private offsetToChildIndexOnLayoutIsMinHeight:Z

.field private offsetToChildIndexOnLayoutPerc:F

.field private onDragCallback:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 900
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/appbar/HeaderBehavior;-><init>()V

    .line 893
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayout:I

    .line 900
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    .line 903
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/android/material/appbar/HeaderBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 893
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayout:I

    .line 904
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;)I
    .locals 2

    .prologue
    .line 869
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetDelta:I

    move v0, v1

    .end local v0    # "x0":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;
    return v0
.end method

.method private animateOffsetTo(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IF)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;IF)V"
        }
    .end annotation

    .prologue
    .line 1029
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object v1, p1

    .local v1, "coordinatorLayout":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "child":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    move/from16 v3, p3

    .local v3, "offset":I
    move/from16 v4, p4

    .local v4, "velocity":F
    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v8

    move v9, v3

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    move v5, v8

    .line 1032
    .local v5, "distance":I
    move v8, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    move v4, v8

    .line 1033
    move v8, v4

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    .line 1034
    const/4 v8, 0x3

    const/high16 v9, 0x447a0000    # 1000.0f

    move v10, v5

    int-to-float v10, v10

    move v11, v4

    div-float/2addr v10, v11

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    mul-int/2addr v8, v9

    move v6, v8

    .line 1040
    .local v6, "duration":I
    :goto_0
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move v11, v3

    move v12, v6

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->animateOffsetWithDuration(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;II)V

    .line 1041
    return-void

    .line 1036
    .end local v6    # "duration":I
    :cond_0
    move v8, v5

    int-to-float v8, v8

    move-object v9, v2

    invoke-virtual {v9}, Lcom/google/android/material/appbar/AppBarLayout;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    move v7, v8

    .line 1037
    .local v7, "distanceRatio":F
    move v8, v7

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v8, v9

    const/high16 v9, 0x43160000    # 150.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    move v6, v8

    .restart local v6    # "duration":I
    goto :goto_0
.end method

.method private animateOffsetWithDuration(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;II)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;II)V"
        }
    .end annotation

    .prologue
    .line 1048
    move-object v1, p0

    .local v1, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object v2, p1

    .local v2, "coordinatorLayout":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object/from16 v3, p2

    .local v3, "child":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    move/from16 v4, p3

    .local v4, "offset":I
    move/from16 v5, p4

    .local v5, "duration":I
    move-object v7, v1

    invoke-virtual {v7}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v7

    move v6, v7

    .line 1049
    .local v6, "currentOffset":I
    move v7, v6

    move v8, v4

    if-ne v7, v8, :cond_1

    .line 1050
    move-object v7, v1

    iget-object v7, v7, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz v7, :cond_0

    move-object v7, v1

    iget-object v7, v7, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1051
    move-object v7, v1

    iget-object v7, v7, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1053
    .line 1074
    :cond_0
    :goto_0
    return-void

    .line 1056
    :cond_1
    move-object v7, v1

    iget-object v7, v7, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    if-nez v7, :cond_2

    .line 1057
    move-object v7, v1

    new-instance v8, Landroid/animation/ValueAnimator;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v8, v7, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    .line 1058
    move-object v7, v1

    iget-object v7, v7, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    sget-object v8, Lcom/google/android/material/animation/AnimationUtils;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1059
    move-object v7, v1

    iget-object v7, v7, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$1;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    invoke-direct {v9, v10, v11, v12}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$1;-><init>(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1071
    :goto_1
    move-object v7, v1

    iget-object v7, v7, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    move v8, v5

    const/16 v9, 0x258

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 1072
    move-object v7, v1

    iget-object v7, v7, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    const/4 v8, 0x2

    new-array v8, v8, [I

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x0

    move v11, v6

    aput v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x1

    move v11, v4

    aput v11, v9, v10

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1073
    move-object v7, v1

    iget-object v7, v7, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 1074
    goto :goto_0

    .line 1068
    :cond_2
    move-object v7, v1

    iget-object v7, v7, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_1
.end method

.method private canScrollChildren(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 936
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "child":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    move-object v3, p3

    .local v3, "directTargetChild":Landroid/view/View;
    move-object v4, v2

    invoke-virtual {v4}, Lcom/google/android/material/appbar/AppBarLayout;->hasScrollableChildren()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v1

    .line 937
    invoke-virtual {v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v4

    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    move-object v5, v2

    invoke-virtual {v5}, Lcom/google/android/material/appbar/AppBarLayout;->getHeight()I

    move-result v5

    if-gt v4, v5, :cond_0

    const/4 v4, 0x1

    .line 936
    :goto_0
    move v0, v4

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    return v0

    .line 937
    .restart local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static checkFlag(II)Z
    .locals 4

    .prologue
    .line 1143
    move v0, p0

    .local v0, "flags":I
    move v1, p1

    .local v1, "check":I
    move v2, v0

    move v3, v1

    and-int/2addr v2, v3

    move v3, v1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "flags":I
    return v0

    .restart local v0    # "flags":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private findFirstScrollingChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1455
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    move-object v5, v1

    invoke-virtual {v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v5

    move v3, v5

    .local v3, "z":I
    :goto_0
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_1

    .line 1456
    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    .line 1457
    .local v4, "child":Landroid/view/View;
    move-object v5, v4

    instance-of v5, v5, Landroidx/core/view/NestedScrollingChild;

    if-eqz v5, :cond_0

    .line 1458
    move-object v5, v4

    move-object v0, v5

    .line 1461
    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    .end local v4    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 1455
    .restart local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    .restart local v4    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1461
    .end local v4    # "child":Landroid/view/View;
    :cond_1
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1
.end method

.method private static getAppBarChildOnOffset(Lcom/google/android/material/appbar/AppBarLayout;I)Landroid/view/View;
    .locals 8

    .prologue
    .line 1443
    move-object v0, p0

    .local v0, "layout":Lcom/google/android/material/appbar/AppBarLayout;
    move v1, p1

    .local v1, "offset":I
    move v6, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    move v2, v6

    .line 1444
    .local v2, "absOffset":I
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v6

    move v4, v6

    .local v4, "z":I
    :goto_0
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_1

    .line 1445
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    .line 1446
    .local v5, "child":Landroid/view/View;
    move v6, v2

    move-object v7, v5

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    if-lt v6, v7, :cond_0

    move v6, v2

    move-object v7, v5

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    if-gt v6, v7, :cond_0

    .line 1447
    move-object v6, v5

    move-object v0, v6

    .line 1450
    .end local v0    # "layout":Lcom/google/android/material/appbar/AppBarLayout;
    .end local v5    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 1444
    .restart local v0    # "layout":Lcom/google/android/material/appbar/AppBarLayout;
    .restart local v5    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1450
    .end local v5    # "child":Landroid/view/View;
    :cond_1
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method private getChildIndexOnOffset(Lcom/google/android/material/appbar/AppBarLayout;I)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .prologue
    .line 1077
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object v1, p1

    .local v1, "abl":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    move v2, p2

    .local v2, "offset":I
    const/4 v9, 0x0

    move v3, v9

    .local v3, "i":I
    move-object v9, v1

    invoke-virtual {v9}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v9

    move v4, v9

    .local v4, "count":I
    :goto_0
    move v9, v3

    move v10, v4

    if-ge v9, v10, :cond_2

    .line 1078
    move-object v9, v1

    move v10, v3

    invoke-virtual {v9, v10}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v5, v9

    .line 1079
    .local v5, "child":Landroid/view/View;
    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    move v6, v9

    .line 1080
    .local v6, "top":I
    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    move v7, v9

    .line 1082
    .local v7, "bottom":I
    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-object v8, v9

    .line 1083
    .local v8, "lp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    move-object v9, v8

    invoke-virtual {v9}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v9

    const/16 v10, 0x20

    invoke-static {v9, v10}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->checkFlag(II)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1085
    move v9, v6

    move-object v10, v8

    iget v10, v10, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->topMargin:I

    sub-int/2addr v9, v10

    move v6, v9

    .line 1086
    move v9, v7

    move-object v10, v8

    iget v10, v10, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v9, v10

    move v7, v9

    .line 1089
    :cond_0
    move v9, v6

    move v10, v2

    neg-int v10, v10

    if-gt v9, v10, :cond_1

    move v9, v7

    move v10, v2

    neg-int v10, v10

    if-lt v9, v10, :cond_1

    .line 1090
    move v9, v3

    move v0, v9

    .line 1093
    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "top":I
    .end local v7    # "bottom":I
    .end local v8    # "lp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    :goto_1
    return v0

    .line 1077
    .restart local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    .restart local v5    # "child":Landroid/view/View;
    .restart local v6    # "top":I
    .restart local v7    # "bottom":I
    .restart local v8    # "lp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1093
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "top":I
    .end local v7    # "bottom":I
    .end local v8    # "lp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    :cond_2
    const/4 v9, -0x1

    move v0, v9

    goto :goto_1
.end method

.method private interpolateOffset(Lcom/google/android/material/appbar/AppBarLayout;I)I
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .prologue
    .line 1328
    move-object/from16 v1, p0

    .local v1, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object/from16 v2, p1

    .local v2, "layout":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    move/from16 v3, p2

    .local v3, "offset":I
    move v14, v3

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    move v4, v14

    .line 1330
    .local v4, "absOffset":I
    const/4 v14, 0x0

    move v5, v14

    .local v5, "i":I
    move-object v14, v2

    invoke-virtual {v14}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v14

    move v6, v14

    .local v6, "z":I
    :goto_0
    move v14, v5

    move v15, v6

    if-ge v14, v15, :cond_2

    .line 1331
    move-object v14, v2

    move v15, v5

    invoke-virtual {v14, v15}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    move-object v7, v14

    .line 1332
    .local v7, "child":Landroid/view/View;
    move-object v14, v7

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-object v8, v14

    .line 1333
    .local v8, "childLp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    move-object v14, v8

    invoke-virtual {v14}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v14

    move-object v9, v14

    .line 1335
    .local v9, "interpolator":Landroid/view/animation/Interpolator;
    move v14, v4

    move-object v15, v7

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v15

    if-lt v14, v15, :cond_3

    move v14, v4

    move-object v15, v7

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v15

    if-gt v14, v15, :cond_3

    .line 1336
    move-object v14, v9

    if-eqz v14, :cond_2

    .line 1337
    const/4 v14, 0x0

    move v10, v14

    .line 1338
    .local v10, "childScrollableHeight":I
    move-object v14, v8

    invoke-virtual {v14}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v14

    move v11, v14

    .line 1339
    .local v11, "flags":I
    move v14, v11

    const/4 v15, 0x1

    and-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_0

    .line 1341
    move v14, v10

    move-object v15, v7

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v15

    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->topMargin:I

    move/from16 v16, v0

    add-int v15, v15, v16

    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->bottomMargin:I

    move/from16 v16, v0

    add-int v15, v15, v16

    add-int/2addr v14, v15

    move v10, v14

    .line 1343
    move v14, v11

    const/4 v15, 0x2

    and-int/lit8 v14, v14, 0x2

    if-eqz v14, :cond_0

    .line 1346
    move v14, v10

    move-object v15, v7

    invoke-static {v15}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v15

    sub-int/2addr v14, v15

    move v10, v14

    .line 1350
    :cond_0
    move-object v14, v7

    invoke-static {v14}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1351
    move v14, v10

    move-object v15, v2

    invoke-virtual {v15}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v15

    sub-int/2addr v14, v15

    move v10, v14

    .line 1354
    :cond_1
    move v14, v10

    if-lez v14, :cond_2

    .line 1355
    move v14, v4

    move-object v15, v7

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int/2addr v14, v15

    move v12, v14

    .line 1356
    .local v12, "offsetForView":I
    move v14, v10

    int-to-float v14, v14

    move-object v15, v9

    move/from16 v16, v12

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v17, v10

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    .line 1359
    invoke-interface/range {v15 .. v16}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v15

    mul-float/2addr v14, v15

    .line 1357
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    move v13, v14

    .line 1362
    .local v13, "interpolatedDiff":I
    move v14, v3

    invoke-static {v14}, Ljava/lang/Integer;->signum(I)I

    move-result v14

    move-object v15, v7

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v15

    move/from16 v16, v13

    add-int v15, v15, v16

    mul-int/2addr v14, v15

    move v1, v14

    .line 1372
    .end local v1    # "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "childLp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .end local v9    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v10    # "childScrollableHeight":I
    .end local v11    # "flags":I
    .end local v12    # "offsetForView":I
    .end local v13    # "interpolatedDiff":I
    :goto_1
    return v1

    .line 1364
    .line 1372
    .restart local v1    # "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    :cond_2
    move v14, v3

    move v1, v14

    goto :goto_1

    .line 1330
    .restart local v7    # "child":Landroid/view/View;
    .restart local v8    # "childLp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .restart local v9    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method

.method private shouldJumpElevationState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;)Z"
        }
    .end annotation

    .prologue
    .line 1428
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "layout":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v9, v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependents(Landroid/view/View;)Ljava/util/List;

    move-result-object v9

    move-object v3, v9

    .line 1429
    .local v3, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v9, 0x0

    move v4, v9

    .local v4, "i":I
    move-object v9, v3

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move v5, v9

    .local v5, "size":I
    :goto_0
    move v9, v4

    move v10, v5

    if-ge v9, v10, :cond_2

    .line 1430
    move-object v9, v3

    move v10, v4

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    move-object v6, v9

    .line 1431
    .local v6, "dependency":Landroid/view/View;
    move-object v9, v6

    .line 1432
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v7, v9

    .line 1433
    .local v7, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v9, v7

    invoke-virtual {v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v9

    move-object v8, v9

    .line 1435
    .local v8, "behavior":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    move-object v9, v8

    instance-of v9, v9, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;

    if-eqz v9, :cond_1

    .line 1436
    move-object v9, v8

    check-cast v9, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;

    invoke-virtual {v9}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->getOverlayTop()I

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    :goto_1
    move v0, v9

    .line 1439
    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    .end local v6    # "dependency":Landroid/view/View;
    .end local v7    # "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v8    # "behavior":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    :goto_2
    return v0

    .line 1436
    .restart local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    .restart local v6    # "dependency":Landroid/view/View;
    .restart local v7    # "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .restart local v8    # "behavior":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    :cond_0
    const/4 v9, 0x0

    goto :goto_1

    .line 1429
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1439
    .end local v6    # "dependency":Landroid/view/View;
    .end local v7    # "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v8    # "behavior":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    :cond_2
    const/4 v9, 0x0

    move v0, v9

    goto :goto_2
.end method

.method private snapToChildIfNeeded(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 1097
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object/from16 v1, p1

    .local v1, "coordinatorLayout":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object/from16 v2, p2

    .local v2, "abl":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    move-object v11, v0

    invoke-virtual {v11}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v11

    move v3, v11

    .line 1098
    .local v3, "offset":I
    move-object v11, v0

    move-object v12, v2

    move v13, v3

    invoke-direct {v11, v12, v13}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getChildIndexOnOffset(Lcom/google/android/material/appbar/AppBarLayout;I)I

    move-result v11

    move v4, v11

    .line 1099
    .local v4, "offsetChildIndex":I
    move v11, v4

    if-ltz v11, :cond_3

    .line 1100
    move-object v11, v2

    move v12, v4

    invoke-virtual {v11, v12}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    move-object v5, v11

    .line 1101
    .local v5, "offsetChild":Landroid/view/View;
    move-object v11, v5

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-object v6, v11

    .line 1102
    .local v6, "lp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    move-object v11, v6

    invoke-virtual {v11}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v11

    move v7, v11

    .line 1104
    .local v7, "flags":I
    move v11, v7

    const/16 v12, 0x11

    and-int/lit8 v11, v11, 0x11

    const/16 v12, 0x11

    if-ne v11, v12, :cond_3

    .line 1106
    move-object v11, v5

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    neg-int v11, v11

    move v8, v11

    .line 1107
    .local v8, "snapTop":I
    move-object v11, v5

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v11

    neg-int v11, v11

    move v9, v11

    .line 1109
    .local v9, "snapBottom":I
    move v11, v4

    move-object v12, v2

    invoke-virtual {v12}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    if-ne v11, v12, :cond_0

    .line 1111
    move v11, v9

    move-object v12, v2

    invoke-virtual {v12}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v12

    add-int/2addr v11, v12

    move v9, v11

    .line 1114
    :cond_0
    move v11, v7

    const/4 v12, 0x2

    invoke-static {v11, v12}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->checkFlag(II)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1116
    move v11, v9

    move-object v12, v5

    invoke-static {v12}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v12

    add-int/2addr v11, v12

    move v9, v11

    .line 1129
    :cond_1
    :goto_0
    move v11, v7

    const/16 v12, 0x20

    invoke-static {v11, v12}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->checkFlag(II)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1131
    move v11, v8

    move-object v12, v6

    iget v12, v12, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->topMargin:I

    add-int/2addr v11, v12

    move v8, v11

    .line 1132
    move v11, v9

    move-object v12, v6

    iget v12, v12, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v11, v12

    move v9, v11

    .line 1135
    :cond_2
    move v11, v3

    move v12, v9

    move v13, v8

    add-int/2addr v12, v13

    const/4 v13, 0x2

    div-int/lit8 v12, v12, 0x2

    if-ge v11, v12, :cond_6

    move v11, v9

    :goto_1
    move v10, v11

    .line 1136
    .local v10, "newOffset":I
    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    move v14, v10

    move-object v15, v2

    .line 1137
    invoke-virtual {v15}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v15

    neg-int v15, v15

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v14

    const/4 v15, 0x0

    .line 1136
    invoke-direct {v11, v12, v13, v14, v15}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->animateOffsetTo(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IF)V

    .line 1140
    .end local v5    # "offsetChild":Landroid/view/View;
    .end local v6    # "lp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .end local v7    # "flags":I
    .end local v8    # "snapTop":I
    .end local v9    # "snapBottom":I
    .end local v10    # "newOffset":I
    :cond_3
    return-void

    .line 1117
    .restart local v5    # "offsetChild":Landroid/view/View;
    .restart local v6    # "lp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .restart local v7    # "flags":I
    .restart local v8    # "snapTop":I
    .restart local v9    # "snapBottom":I
    :cond_4
    move v11, v7

    const/4 v12, 0x5

    invoke-static {v11, v12}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->checkFlag(II)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1121
    move v11, v9

    move-object v12, v5

    invoke-static {v12}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v12

    add-int/2addr v11, v12

    move v10, v11

    .line 1122
    .local v10, "seam":I
    move v11, v3

    move v12, v10

    if-ge v11, v12, :cond_5

    .line 1123
    move v11, v10

    move v8, v11

    goto :goto_0

    .line 1125
    :cond_5
    move v11, v10

    move v9, v11

    goto :goto_0

    .line 1135
    .end local v10    # "seam":I
    :cond_6
    move v11, v8

    goto :goto_1
.end method

.method private stopNestedScrollIfNeeded(ILcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 990
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move v1, p1

    .local v1, "dy":I
    move-object v2, p2

    .local v2, "child":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    move-object v3, p3

    .local v3, "target":Landroid/view/View;
    move v4, p4

    .local v4, "type":I
    move v6, v4

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 991
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v6

    move v5, v6

    .line 992
    .local v5, "curOffset":I
    move v6, v1

    if-gez v6, :cond_0

    move v6, v5

    if-eqz v6, :cond_1

    :cond_0
    move v6, v1

    if-lez v6, :cond_2

    move v6, v5

    move-object v7, v2

    .line 993
    invoke-virtual {v7}, Lcom/google/android/material/appbar/AppBarLayout;->getDownNestedScrollRange()I

    move-result v7

    neg-int v7, v7

    if-ne v6, v7, :cond_2

    .line 994
    :cond_1
    move-object v6, v3

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroidx/core/view/ViewCompat;->stopNestedScroll(Landroid/view/View;I)V

    .line 997
    .end local v5    # "curOffset":I
    :cond_2
    return-void
.end method

.method private updateAppBarLayoutDrawableState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIZ)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;IIZ)V"
        }
    .end annotation

    .prologue
    .line 1381
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object/from16 v2, p2

    .local v2, "layout":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    move/from16 v3, p3

    .local v3, "offset":I
    move/from16 v4, p4

    .local v4, "direction":I
    move/from16 v5, p5

    .local v5, "forceJump":Z
    move-object v11, v2

    move v12, v3

    invoke-static {v11, v12}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getAppBarChildOnOffset(Lcom/google/android/material/appbar/AppBarLayout;I)Landroid/view/View;

    move-result-object v11

    move-object v6, v11

    .line 1382
    .local v6, "child":Landroid/view/View;
    move-object v11, v6

    if-eqz v11, :cond_3

    .line 1383
    move-object v11, v6

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-object v7, v11

    .line 1384
    .local v7, "childLp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    move-object v11, v7

    invoke-virtual {v11}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v11

    move v8, v11

    .line 1385
    .local v8, "flags":I
    const/4 v11, 0x0

    move v9, v11

    .line 1387
    .local v9, "lifted":Z
    move v11, v8

    const/4 v12, 0x1

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_0

    .line 1388
    move-object v11, v6

    invoke-static {v11}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v11

    move v10, v11

    .line 1390
    .local v10, "minHeight":I
    move v11, v4

    if-lez v11, :cond_5

    move v11, v8

    const/16 v12, 0xc

    and-int/lit8 v11, v11, 0xc

    if-eqz v11, :cond_5

    .line 1397
    move v11, v3

    neg-int v11, v11

    move-object v12, v6

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    move v13, v10

    sub-int/2addr v12, v13

    move-object v13, v2

    invoke-virtual {v13}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v13

    sub-int/2addr v12, v13

    if-lt v11, v12, :cond_4

    const/4 v11, 0x1

    :goto_0
    move v9, v11

    .line 1405
    .end local v10    # "minHeight":I
    :cond_0
    :goto_1
    move-object v11, v2

    invoke-virtual {v11}, Lcom/google/android/material/appbar/AppBarLayout;->isLiftOnScroll()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1408
    move-object v11, v0

    move-object v12, v1

    invoke-direct {v11, v12}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->findFirstScrollingChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;

    move-result-object v11

    move-object v10, v11

    .line 1409
    .local v10, "scrollingChild":Landroid/view/View;
    move-object v11, v10

    if-eqz v11, :cond_1

    .line 1410
    move-object v11, v10

    invoke-virtual {v11}, Landroid/view/View;->getScrollY()I

    move-result v11

    if-lez v11, :cond_7

    const/4 v11, 0x1

    :goto_2
    move v9, v11

    .line 1414
    .end local v10    # "scrollingChild":Landroid/view/View;
    :cond_1
    move-object v11, v2

    move v12, v9

    invoke-virtual {v11, v12}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftedState(Z)Z

    move-result v11

    move v10, v11

    .line 1416
    .local v10, "changed":Z
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0xb

    if-lt v11, v12, :cond_3

    move v11, v5

    if-nez v11, :cond_2

    move v11, v10

    if-eqz v11, :cond_3

    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    .line 1417
    invoke-direct {v11, v12, v13}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->shouldJumpElevationState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1420
    :cond_2
    move-object v11, v2

    invoke-virtual {v11}, Lcom/google/android/material/appbar/AppBarLayout;->jumpDrawablesToCurrentState()V

    .line 1423
    .end local v7    # "childLp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .end local v8    # "flags":I
    .end local v9    # "lifted":Z
    .end local v10    # "changed":Z
    :cond_3
    return-void

    .line 1397
    .restart local v7    # "childLp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .restart local v8    # "flags":I
    .restart local v9    # "lifted":Z
    .local v10, "minHeight":I
    :cond_4
    const/4 v11, 0x0

    goto :goto_0

    .line 1398
    :cond_5
    move v11, v8

    const/4 v12, 0x2

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_0

    .line 1401
    move v11, v3

    neg-int v11, v11

    move-object v12, v6

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    move v13, v10

    sub-int/2addr v12, v13

    move-object v13, v2

    invoke-virtual {v13}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v13

    sub-int/2addr v12, v13

    if-lt v11, v12, :cond_6

    const/4 v11, 0x1

    :goto_3
    move v9, v11

    goto :goto_1

    :cond_6
    const/4 v11, 0x0

    goto :goto_3

    .line 1410
    .local v10, "scrollingChild":Landroid/view/View;
    :cond_7
    const/4 v11, 0x0

    goto :goto_2
.end method


# virtual methods
.method bridge synthetic canDragView(Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 869
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v2, v3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->canDragView(Lcom/google/android/material/appbar/AppBarLayout;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    return v0
.end method

.method canDragView(Lcom/google/android/material/appbar/AppBarLayout;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 1234
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object v1, p1

    .local v1, "view":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onDragCallback:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;

    if-eqz v3, :cond_0

    .line 1236
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onDragCallback:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;->canDrag(Lcom/google/android/material/appbar/AppBarLayout;)Z

    move-result v3

    move v0, v3

    .line 1248
    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    :goto_0
    return v0

    .line 1240
    .restart local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->lastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    .line 1242
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->lastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v2, v3

    .line 1243
    .local v2, "scrollingView":Landroid/view/View;
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    .line 1244
    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    const/4 v4, -0x1

    .line 1245
    invoke-virtual {v3, v4}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    .line 1243
    :goto_1
    move v0, v3

    goto :goto_0

    .line 1245
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 1248
    .end local v2    # "scrollingView":Landroid/view/View;
    :cond_2
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method bridge synthetic getMaxDragOffset(Landroid/view/View;)I
    .locals 4

    .prologue
    .line 869
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v2, v3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getMaxDragOffset(Lcom/google/android/material/appbar/AppBarLayout;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    return v0
.end method

.method getMaxDragOffset(Lcom/google/android/material/appbar/AppBarLayout;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 1260
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object v1, p1

    .local v1, "view":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    move-object v2, v1

    invoke-virtual {v2}, Lcom/google/android/material/appbar/AppBarLayout;->getDownNestedScrollRange()I

    move-result v2

    neg-int v2, v2

    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    return v0
.end method

.method bridge synthetic getScrollRangeForDragFling(Landroid/view/View;)I
    .locals 4

    .prologue
    .line 869
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v2, v3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getScrollRangeForDragFling(Lcom/google/android/material/appbar/AppBarLayout;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    return v0
.end method

.method getScrollRangeForDragFling(Lcom/google/android/material/appbar/AppBarLayout;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 1265
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object v1, p1

    .local v1, "view":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    move-object v2, v1

    invoke-virtual {v2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    return v0
.end method

.method getTopBottomOffsetForScrollingSibling()I
    .locals 3

    .prologue
    .line 1466
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopAndBottomOffset()I

    move-result v1

    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetDelta:I

    add-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    return v0
.end method

.method isOffsetAnimatorRunning()Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 1324
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    return v0

    .restart local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method bridge synthetic onFlingFinished(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 869
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onFlingFinished(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    return-void
.end method

.method onFlingFinished(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 1255
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "layout":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->snapToChildIfNeeded(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 1256
    return-void
.end method

.method public bridge synthetic onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 8

    .prologue
    .line 869
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    check-cast v6, Lcom/google/android/material/appbar/AppBarLayout;

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    return v0
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;I)Z"
        }
    .end annotation

    .prologue
    .line 1177
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object/from16 v2, p2

    .local v2, "abl":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    move/from16 v3, p3

    .local v3, "layoutDirection":I
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move v11, v3

    invoke-super {v8, v9, v10, v11}, Lcom/google/android/material/appbar/HeaderBehavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v8

    move v4, v8

    .line 1183
    .local v4, "handled":Z
    move-object v8, v2

    invoke-virtual {v8}, Lcom/google/android/material/appbar/AppBarLayout;->getPendingAction()I

    move-result v8

    move v5, v8

    .line 1184
    .local v5, "pendingAction":I
    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayout:I

    if-ltz v8, :cond_2

    move v8, v5

    const/16 v9, 0x8

    and-int/lit8 v8, v8, 0x8

    if-nez v8, :cond_2

    .line 1185
    move-object v8, v2

    move-object v9, v0

    iget v9, v9, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayout:I

    invoke-virtual {v8, v9}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v6, v8

    .line 1186
    .local v6, "child":Landroid/view/View;
    move-object v8, v6

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    neg-int v8, v8

    move v7, v8

    .line 1187
    .local v7, "offset":I
    move-object v8, v0

    iget-boolean v8, v8, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayoutIsMinHeight:Z

    if-eqz v8, :cond_1

    .line 1188
    move v8, v7

    move-object v9, v6

    invoke-static {v9}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v9

    move-object v10, v2

    invoke-virtual {v10}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    move v7, v8

    .line 1192
    :goto_0
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move v11, v7

    invoke-virtual {v8, v9, v10, v11}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I

    move-result v8

    .line 1193
    .line 1212
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "offset":I
    :cond_0
    :goto_1
    move-object v8, v2

    invoke-virtual {v8}, Lcom/google/android/material/appbar/AppBarLayout;->resetPendingAction()V

    .line 1213
    move-object v8, v0

    const/4 v9, -0x1

    iput v9, v8, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayout:I

    .line 1217
    move-object v8, v0

    move-object v9, v0

    .line 1218
    invoke-virtual {v9}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopAndBottomOffset()I

    move-result v9

    move-object v10, v2

    invoke-virtual {v10}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v10

    neg-int v10, v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v9

    .line 1217
    invoke-virtual {v8, v9}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->setTopAndBottomOffset(I)Z

    move-result v8

    .line 1223
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v0

    .line 1224
    invoke-virtual {v11}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopAndBottomOffset()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 1223
    invoke-direct/range {v8 .. v13}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->updateAppBarLayoutDrawableState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIZ)V

    .line 1227
    move-object v8, v2

    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopAndBottomOffset()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/google/android/material/appbar/AppBarLayout;->dispatchOffsetUpdates(I)V

    .line 1229
    move v8, v4

    move v0, v8

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    return v0

    .line 1190
    .restart local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    .restart local v6    # "child":Landroid/view/View;
    .restart local v7    # "offset":I
    :cond_1
    move v8, v7

    move-object v9, v6

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    move-object v10, v0

    iget v10, v10, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayoutPerc:F

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    add-int/2addr v8, v9

    move v7, v8

    goto :goto_0

    .line 1193
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "offset":I
    :cond_2
    move v8, v5

    if-eqz v8, :cond_0

    .line 1194
    move v8, v5

    const/4 v9, 0x4

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    :goto_2
    move v6, v8

    .line 1195
    .local v6, "animate":Z
    move v8, v5

    const/4 v9, 0x2

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_5

    .line 1196
    move-object v8, v2

    invoke-virtual {v8}, Lcom/google/android/material/appbar/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v8

    neg-int v8, v8

    move v7, v8

    .line 1197
    .restart local v7    # "offset":I
    move v8, v6

    if-eqz v8, :cond_4

    .line 1198
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move v11, v7

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->animateOffsetTo(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IF)V

    .line 1202
    :goto_3
    goto :goto_1

    .line 1194
    .end local v6    # "animate":Z
    .end local v7    # "offset":I
    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 1200
    .restart local v6    # "animate":Z
    .restart local v7    # "offset":I
    :cond_4
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move v11, v7

    invoke-virtual {v8, v9, v10, v11}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I

    move-result v8

    goto :goto_3

    .line 1202
    .end local v7    # "offset":I
    :cond_5
    move v8, v5

    const/4 v9, 0x1

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_0

    .line 1203
    move v8, v6

    if-eqz v8, :cond_6

    .line 1204
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->animateOffsetTo(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IF)V

    goto/16 :goto_1

    .line 1206
    :cond_6
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I

    move-result v8

    goto/16 :goto_1
.end method

.method public bridge synthetic onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 14

    .prologue
    .line 869
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    check-cast v9, Lcom/google/android/material/appbar/AppBarLayout;

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-virtual/range {v7 .. v13}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIII)Z

    move-result v7

    move v0, v7

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    return v0
.end method

.method public onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIII)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;IIII)Z"
        }
    .end annotation

    .prologue
    .line 1154
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object/from16 v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object/from16 v2, p2

    .local v2, "child":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    move/from16 v3, p3

    .local v3, "parentWidthMeasureSpec":I
    move/from16 v4, p4

    .local v4, "widthUsed":I
    move/from16 v5, p5

    .local v5, "parentHeightMeasureSpec":I
    move/from16 v6, p6

    .local v6, "heightUsed":I
    move-object v8, v2

    .line 1155
    invoke-virtual {v8}, Lcom/google/android/material/appbar/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v7, v8

    .line 1156
    .local v7, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v8, v7

    iget v8, v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->height:I

    const/4 v9, -0x2

    if-ne v8, v9, :cond_0

    .line 1161
    move-object v8, v1

    move-object v9, v2

    move v10, v3

    move v11, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 1165
    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    move v13, v6

    .line 1161
    invoke-virtual/range {v8 .. v13}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    .line 1167
    const/4 v8, 0x1

    move v0, v8

    .line 1171
    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    :cond_0
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    invoke-super/range {v8 .. v14}, Lcom/google/android/material/appbar/HeaderBehavior;->onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v8

    move v0, v8

    goto :goto_0
.end method

.method public bridge synthetic onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 16

    .prologue
    .line 869
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    check-cast v10, Lcom/google/android/material/appbar/AppBarLayout;

    move-object v11, v3

    move v12, v4

    move v13, v5

    move-object v14, v6

    move v15, v7

    invoke-virtual/range {v8 .. v15}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V

    return-void
.end method

.method public onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "II[II)V"
        }
    .end annotation

    .prologue
    .line 949
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object/from16 v1, p1

    .local v1, "coordinatorLayout":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object/from16 v2, p2

    .local v2, "child":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    move-object/from16 v3, p3

    .local v3, "target":Landroid/view/View;
    move/from16 v4, p4

    .local v4, "dx":I
    move/from16 v5, p5

    .local v5, "dy":I
    move-object/from16 v6, p6

    .local v6, "consumed":[I
    move/from16 v7, p7

    .local v7, "type":I
    move v10, v5

    if-eqz v10, :cond_0

    .line 952
    move v10, v5

    if-gez v10, :cond_1

    .line 954
    move-object v10, v2

    invoke-virtual {v10}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v10

    neg-int v10, v10

    move v8, v10

    .line 955
    .local v8, "min":I
    move v10, v8

    move-object v11, v2

    invoke-virtual {v11}, Lcom/google/android/material/appbar/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v11

    add-int/2addr v10, v11

    move v9, v10

    .line 961
    .local v9, "max":I
    :goto_0
    move v10, v8

    move v11, v9

    if-eq v10, v11, :cond_0

    .line 962
    move-object v10, v6

    const/4 v11, 0x1

    move-object v12, v0

    move-object v13, v1

    move-object v14, v2

    move v15, v5

    move/from16 v16, v8

    move/from16 v17, v9

    invoke-virtual/range {v12 .. v17}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->scroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v12

    aput v12, v10, v11

    .line 963
    move-object v10, v0

    move v11, v5

    move-object v12, v2

    move-object v13, v3

    move v14, v7

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->stopNestedScrollIfNeeded(ILcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    .line 966
    .end local v8    # "min":I
    .end local v9    # "max":I
    :cond_0
    return-void

    .line 958
    :cond_1
    move-object v10, v2

    invoke-virtual {v10}, Lcom/google/android/material/appbar/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v10

    neg-int v10, v10

    move v8, v10

    .line 959
    .restart local v8    # "min":I
    const/4 v10, 0x0

    move v9, v10

    .restart local v9    # "max":I
    goto :goto_0
.end method

.method public bridge synthetic onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII)V
    .locals 18

    .prologue
    .line 869
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    check-cast v11, Lcom/google/android/material/appbar/AppBarLayout;

    move-object v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-virtual/range {v9 .. v17}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII)V

    return-void
.end method

.method public onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "IIIII)V"
        }
    .end annotation

    .prologue
    .line 978
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object/from16 v1, p1

    .local v1, "coordinatorLayout":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object/from16 v2, p2

    .local v2, "child":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    move-object/from16 v3, p3

    .local v3, "target":Landroid/view/View;
    move/from16 v4, p4

    .local v4, "dxConsumed":I
    move/from16 v5, p5

    .local v5, "dyConsumed":I
    move/from16 v6, p6

    .local v6, "dxUnconsumed":I
    move/from16 v7, p7

    .local v7, "dyUnconsumed":I
    move/from16 v8, p8

    .local v8, "type":I
    move v9, v7

    if-gez v9, :cond_0

    .line 981
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move v12, v7

    move-object v13, v2

    invoke-virtual {v13}, Lcom/google/android/material/appbar/AppBarLayout;->getDownNestedScrollRange()I

    move-result v13

    neg-int v13, v13

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->scroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v9

    .line 982
    move-object v9, v0

    move v10, v7

    move-object v11, v2

    move-object v12, v3

    move v13, v8

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->stopNestedScrollIfNeeded(ILcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    .line 984
    :cond_0
    move-object v9, v2

    invoke-virtual {v9}, Lcom/google/android/material/appbar/AppBarLayout;->isLiftOnScroll()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 985
    move-object v9, v2

    move-object v10, v3

    invoke-virtual {v10}, Landroid/view/View;->getScrollY()I

    move-result v10

    if-lez v10, :cond_2

    const/4 v10, 0x1

    :goto_0
    invoke-virtual {v9, v10}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftedState(Z)Z

    move-result v9

    .line 987
    :cond_1
    return-void

    .line 985
    :cond_2
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 8

    .prologue
    .line 869
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    check-cast v6, Lcom/google/android/material/appbar/AppBarLayout;

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/os/Parcelable;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1495
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "appBarLayout":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    move-object v3, p3

    .local v3, "state":Landroid/os/Parcelable;
    move-object v5, v3

    instance-of v5, v5, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    if-eqz v5, :cond_0

    .line 1496
    move-object v5, v3

    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    move-object v4, v5

    .line 1497
    .local v4, "ss":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v4

    invoke-virtual {v8}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v8

    invoke-super {v5, v6, v7, v8}, Lcom/google/android/material/appbar/HeaderBehavior;->onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 1498
    move-object v5, v0

    move-object v6, v4

    iget v6, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildIndex:I

    iput v6, v5, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayout:I

    .line 1499
    move-object v5, v0

    move-object v6, v4

    iget v6, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildPercentageShown:F

    iput v6, v5, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayoutPerc:F

    .line 1500
    move-object v5, v0

    move-object v6, v4

    iget-boolean v6, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    iput-boolean v6, v5, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayoutIsMinHeight:Z

    .line 1501
    .line 1505
    .end local v4    # "ss":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;
    :goto_0
    return-void

    .line 1502
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-super {v5, v6, v7, v8}, Lcom/google/android/material/appbar/HeaderBehavior;->onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 1503
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayout:I

    goto :goto_0
.end method

.method public bridge synthetic onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 869
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    return-object v0
.end method

.method public onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/os/Parcelable;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .prologue
    .line 1471
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object/from16 v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object/from16 v2, p2

    .local v2, "abl":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    invoke-super {v10, v11, v12}, Lcom/google/android/material/appbar/HeaderBehavior;->onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v10

    move-object v3, v10

    .line 1472
    .local v3, "superState":Landroid/os/Parcelable;
    move-object v10, v0

    invoke-virtual {v10}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopAndBottomOffset()I

    move-result v10

    move v4, v10

    .line 1475
    .local v4, "offset":I
    const/4 v10, 0x0

    move v5, v10

    .local v5, "i":I
    move-object v10, v2

    invoke-virtual {v10}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v10

    move v6, v10

    .local v6, "count":I
    :goto_0
    move v10, v5

    move v11, v6

    if-ge v10, v11, :cond_2

    .line 1476
    move-object v10, v2

    move v11, v5

    invoke-virtual {v10, v11}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v7, v10

    .line 1477
    .local v7, "child":Landroid/view/View;
    move-object v10, v7

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    move v11, v4

    add-int/2addr v10, v11

    move v8, v10

    .line 1479
    .local v8, "visBottom":I
    move-object v10, v7

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    move v11, v4

    add-int/2addr v10, v11

    if-gtz v10, :cond_1

    move v10, v8

    if-ltz v10, :cond_1

    .line 1480
    new-instance v10, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v3

    invoke-direct {v11, v12}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;-><init>(Landroid/os/Parcelable;)V

    move-object v9, v10

    .line 1481
    .local v9, "ss":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;
    move-object v10, v9

    move v11, v5

    iput v11, v10, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildIndex:I

    .line 1482
    move-object v10, v9

    move v11, v8

    move-object v12, v7

    .line 1483
    invoke-static {v12}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v12

    move-object v13, v2

    invoke-virtual {v13}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v13

    add-int/2addr v12, v13

    if-ne v11, v12, :cond_0

    const/4 v11, 0x1

    :goto_1
    iput-boolean v11, v10, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    .line 1484
    move-object v10, v9

    move v11, v8

    int-to-float v11, v11

    move-object v12, v7

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    iput v11, v10, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildPercentageShown:F

    .line 1485
    move-object v10, v9

    move-object v0, v10

    .line 1490
    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "visBottom":I
    .end local v9    # "ss":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;
    :goto_2
    return-object v0

    .line 1483
    .restart local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    .restart local v7    # "child":Landroid/view/View;
    .restart local v8    # "visBottom":I
    .restart local v9    # "ss":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;
    :cond_0
    const/4 v11, 0x0

    goto :goto_1

    .line 1475
    .end local v9    # "ss":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1490
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "visBottom":I
    :cond_2
    move-object v10, v3

    move-object v0, v10

    goto :goto_2
.end method

.method public bridge synthetic onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 14

    .prologue
    .line 869
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    check-cast v9, Lcom/google/android/material/appbar/AppBarLayout;

    move-object v10, v3

    move-object v11, v4

    move v12, v5

    move v13, v6

    invoke-virtual/range {v7 .. v13}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result v7

    move v0, v7

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    return v0
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)Z"
        }
    .end annotation

    .prologue
    .line 916
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "child":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    move-object v3, p3

    .local v3, "directTargetChild":Landroid/view/View;
    move-object/from16 v4, p4

    .local v4, "target":Landroid/view/View;
    move/from16 v5, p5

    .local v5, "nestedScrollAxes":I
    move/from16 v6, p6

    .local v6, "type":I
    move v8, v5

    const/4 v9, 0x2

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_2

    move-object v8, v2

    .line 918
    invoke-virtual {v8}, Lcom/google/android/material/appbar/AppBarLayout;->isLiftOnScroll()Z

    move-result v8

    if-nez v8, :cond_0

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    invoke-direct {v8, v9, v10, v11}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->canScrollChildren(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    const/4 v8, 0x1

    :goto_0
    move v7, v8

    .line 920
    .local v7, "started":Z
    move v8, v7

    if-eqz v8, :cond_1

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz v8, :cond_1

    .line 922
    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->cancel()V

    .line 926
    :cond_1
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->lastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 929
    move-object v8, v0

    move v9, v6

    iput v9, v8, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->lastStartedType:I

    .line 931
    move v8, v7

    move v0, v8

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    return v0

    .line 918
    .end local v7    # "started":Z
    .restart local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    :cond_2
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 10

    .prologue
    .line 869
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    check-cast v7, Lcom/google/android/material/appbar/AppBarLayout;

    move-object v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1006
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object v1, p1

    .local v1, "coordinatorLayout":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "abl":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    move-object v3, p3

    .local v3, "target":Landroid/view/View;
    move v4, p4

    .local v4, "type":I
    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->lastStartedType:I

    if-eqz v5, :cond_0

    move v5, v4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 1008
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->snapToChildIfNeeded(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 1012
    :cond_1
    move-object v5, v0

    new-instance v6, Ljava/lang/ref/WeakReference;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v3

    invoke-direct {v7, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, v5, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->lastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 1013
    return-void
.end method

.method public setDragCallback(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;)V
    .locals 4
    .param p1    # Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1021
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object v1, p1

    .local v1, "callback":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onDragCallback:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;

    .line 1022
    return-void
.end method

.method bridge synthetic setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 12

    .prologue
    .line 869
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    check-cast v8, Lcom/google/android/material/appbar/AppBarLayout;

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;III)I

    move-result v6

    move v0, v6

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    return v0
.end method

.method setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;III)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;III)I"
        }
    .end annotation

    .prologue
    .line 1275
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object/from16 v1, p1

    .local v1, "coordinatorLayout":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object/from16 v2, p2

    .local v2, "appBarLayout":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    move/from16 v3, p3

    .local v3, "newOffset":I
    move/from16 v4, p4

    .local v4, "minOffset":I
    move/from16 v5, p5

    .local v5, "maxOffset":I
    move-object v10, v0

    invoke-virtual {v10}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v10

    move v6, v10

    .line 1276
    .local v6, "curOffset":I
    const/4 v10, 0x0

    move v7, v10

    .line 1278
    .local v7, "consumed":I
    move v10, v4

    if-eqz v10, :cond_4

    move v10, v6

    move v11, v4

    if-lt v10, v11, :cond_4

    move v10, v6

    move v11, v5

    if-gt v10, v11, :cond_4

    .line 1281
    move v10, v3

    move v11, v4

    move v12, v5

    invoke-static {v10, v11, v12}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v10

    move v3, v10

    .line 1282
    move v10, v6

    move v11, v3

    if-eq v10, v11, :cond_1

    .line 1283
    move-object v10, v2

    .line 1284
    invoke-virtual {v10}, Lcom/google/android/material/appbar/AppBarLayout;->hasChildWithInterpolator()Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v10, v0

    move-object v11, v2

    move v12, v3

    .line 1285
    invoke-direct {v10, v11, v12}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->interpolateOffset(Lcom/google/android/material/appbar/AppBarLayout;I)I

    move-result v10

    :goto_0
    move v8, v10

    .line 1288
    .local v8, "interpolatedOffset":I
    move-object v10, v0

    move v11, v8

    invoke-virtual {v10, v11}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->setTopAndBottomOffset(I)Z

    move-result v10

    move v9, v10

    .line 1291
    .local v9, "offsetChanged":Z
    move v10, v6

    move v11, v3

    sub-int/2addr v10, v11

    move v7, v10

    .line 1293
    move-object v10, v0

    move v11, v3

    move v12, v8

    sub-int/2addr v11, v12

    iput v11, v10, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetDelta:I

    .line 1295
    move v10, v9

    if-nez v10, :cond_0

    move-object v10, v2

    invoke-virtual {v10}, Lcom/google/android/material/appbar/AppBarLayout;->hasChildWithInterpolator()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1300
    move-object v10, v1

    move-object v11, v2

    invoke-virtual {v10, v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

    .line 1304
    :cond_0
    move-object v10, v2

    move-object v11, v0

    invoke-virtual {v11}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopAndBottomOffset()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/google/android/material/appbar/AppBarLayout;->dispatchOffsetUpdates(I)V

    .line 1307
    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move v13, v3

    move v14, v3

    move v15, v6

    if-ge v14, v15, :cond_3

    const/4 v14, -0x1

    :goto_1
    const/4 v15, 0x0

    invoke-direct/range {v10 .. v15}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->updateAppBarLayoutDrawableState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIZ)V

    .line 1313
    .line 1319
    .end local v8    # "interpolatedOffset":I
    .end local v9    # "offsetChanged":Z
    :cond_1
    :goto_2
    move v10, v7

    move v0, v10

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    return v0

    .line 1285
    .restart local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    :cond_2
    move v10, v3

    goto :goto_0

    .line 1307
    .restart local v8    # "interpolatedOffset":I
    .restart local v9    # "offsetChanged":Z
    :cond_3
    const/4 v14, 0x1

    goto :goto_1

    .line 1316
    .end local v8    # "interpolatedOffset":I
    .end local v9    # "offsetChanged":Z
    :cond_4
    move-object v10, v0

    const/4 v11, 0x0

    iput v11, v10, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetDelta:I

    goto :goto_2
.end method
