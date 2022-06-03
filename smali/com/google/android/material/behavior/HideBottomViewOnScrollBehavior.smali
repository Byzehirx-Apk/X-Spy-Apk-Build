.class public Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "HideBottomViewOnScrollBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior",
        "<TV;>;"
    }
.end annotation


# static fields
.field protected static final ENTER_ANIMATION_DURATION:I = 0xe1

.field protected static final EXIT_ANIMATION_DURATION:I = 0xaf

.field private static final STATE_SCROLLED_DOWN:I = 0x1

.field private static final STATE_SCROLLED_UP:I = 0x2


# instance fields
.field private currentAnimator:Landroid/view/ViewPropertyAnimator;

.field private currentState:I

.field private height:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 43
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->height:I

    .line 44
    move-object v1, v0

    const/4 v2, 0x2

    iput v2, v1, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentState:I

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->height:I

    .line 44
    move-object v3, v0

    const/4 v4, 0x2

    iput v4, v3, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentState:I

    .line 58
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 7

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;
    move-object v1, p1

    .local v1, "x1":Landroid/view/ViewPropertyAnimator;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentAnimator:Landroid/view/ViewPropertyAnimator;

    move-object v0, v2

    .end local v0    # "x0":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;
    return-object v0
.end method

.method private animateChildTo(Landroid/view/View;IJLandroid/animation/TimeInterpolator;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;IJ",
            "Landroid/animation/TimeInterpolator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    move-object v1, p1

    .local v1, "child":Landroid/view/View;, "TV;"
    move v2, p2

    .local v2, "targetY":I
    move-wide/from16 v3, p3

    .local v3, "duration":J
    move-object/from16 v5, p5

    .local v5, "interpolator":Landroid/animation/TimeInterpolator;
    move-object v6, v0

    move-object v7, v1

    .line 115
    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    move v8, v2

    int-to-float v8, v8

    .line 116
    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    move-object v8, v5

    .line 117
    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    move-wide v8, v3

    .line 118
    invoke-virtual {v7, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    new-instance v8, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$1;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$1;-><init>(Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;)V

    .line 119
    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    iput-object v7, v6, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentAnimator:Landroid/view/ViewPropertyAnimator;

    .line 126
    return-void
.end method


# virtual methods
.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    move-object v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;, "TV;"
    move v3, p3

    .local v3, "layoutDirection":I
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iput v5, v4, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->height:I

    .line 63
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-super {v4, v5, v6, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    return v0
.end method

.method public onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "IIII)V"
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    move-object v1, p1

    .local v1, "coordinatorLayout":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;, "TV;"
    move-object v3, p3

    .local v3, "target":Landroid/view/View;
    move v4, p4

    .local v4, "dxConsumed":I
    move v5, p5

    .local v5, "dyConsumed":I
    move/from16 v6, p6

    .local v6, "dxUnconsumed":I
    move/from16 v7, p7

    .local v7, "dyUnconsumed":I
    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentState:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1

    move v8, v5

    if-lez v8, :cond_1

    .line 86
    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v8, v9}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->slideDown(Landroid/view/View;)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentState:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    move v8, v5

    if-gez v8, :cond_0

    .line 88
    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v8, v9}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->slideUp(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "I)Z"
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    move-object v1, p1

    .local v1, "coordinatorLayout":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;, "TV;"
    move-object v3, p3

    .local v3, "directTargetChild":Landroid/view/View;
    move-object v4, p4

    .local v4, "target":Landroid/view/View;
    move v5, p5

    .local v5, "nestedScrollAxes":I
    move v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    :goto_0
    move v0, v6

    .end local v0    # "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    return v0

    .restart local v0    # "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected slideDown(Landroid/view/View;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 103
    move-object v1, p0

    .local v1, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    move-object v2, p1

    .local v2, "child":Landroid/view/View;, "TV;"
    move-object v3, v1

    iget-object v3, v3, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v3, :cond_0

    .line 104
    move-object v3, v1

    iget-object v3, v3, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 105
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 107
    :cond_0
    move-object v3, v1

    const/4 v4, 0x1

    iput v4, v3, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentState:I

    .line 108
    move-object v3, v1

    move-object v4, v2

    move-object v5, v1

    iget v5, v5, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->height:I

    const-wide/16 v6, 0xaf

    sget-object v8, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-direct/range {v3 .. v8}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->animateChildTo(Landroid/view/View;IJLandroid/animation/TimeInterpolator;)V

    .line 110
    return-void
.end method

.method protected slideUp(Landroid/view/View;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 93
    move-object v1, p0

    .local v1, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    move-object v2, p1

    .local v2, "child":Landroid/view/View;, "TV;"
    move-object v3, v1

    iget-object v3, v3, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v3, :cond_0

    .line 94
    move-object v3, v1

    iget-object v3, v3, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 95
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 97
    :cond_0
    move-object v3, v1

    const/4 v4, 0x2

    iput v4, v3, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentState:I

    .line 98
    move-object v3, v1

    move-object v4, v2

    const/4 v5, 0x0

    const-wide/16 v6, 0xe1

    sget-object v8, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-direct/range {v3 .. v8}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->animateChildTo(Landroid/view/View;IJLandroid/animation/TimeInterpolator;)V

    .line 100
    return-void
.end method
