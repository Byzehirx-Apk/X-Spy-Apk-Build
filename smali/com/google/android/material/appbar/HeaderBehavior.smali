.class abstract Lcom/google/android/material/appbar/HeaderBehavior;
.super Lcom/google/android/material/appbar/ViewOffsetBehavior;
.source "HeaderBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/HeaderBehavior$FlingRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lcom/google/android/material/appbar/ViewOffsetBehavior",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field private activePointerId:I

.field private flingRunnable:Ljava/lang/Runnable;

.field private isBeingDragged:Z

.field private lastMotionY:I

.field scroller:Landroid/widget/OverScroller;

.field private touchSlop:I

.field private velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/HeaderBehavior;, "Lcom/google/android/material/appbar/HeaderBehavior<TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/appbar/ViewOffsetBehavior;-><init>()V

    .line 43
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lcom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    .line 45
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lcom/google/android/material/appbar/HeaderBehavior;->touchSlop:I

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/HeaderBehavior;, "Lcom/google/android/material/appbar/HeaderBehavior<TV;>;"
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/android/material/appbar/ViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    .line 45
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/google/android/material/appbar/HeaderBehavior;->touchSlop:I

    .line 52
    return-void
.end method

.method private ensureVelocityTracker()V
    .locals 3

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/HeaderBehavior;, "Lcom/google/android/material/appbar/HeaderBehavior<TV;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_0

    .line 296
    move-object v1, v0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 298
    :cond_0
    return-void
.end method


# virtual methods
.method canDragView(Landroid/view/View;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/HeaderBehavior;, "Lcom/google/android/material/appbar/HeaderBehavior<TV;>;"
    move-object v1, p1

    .local v1, "view":Landroid/view/View;, "TV;"
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/appbar/HeaderBehavior;, "Lcom/google/android/material/appbar/HeaderBehavior<TV;>;"
    return v0
.end method

.method final fling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIF)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;IIF)Z"
        }
    .end annotation

    .prologue
    .line 243
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/HeaderBehavior;, "Lcom/google/android/material/appbar/HeaderBehavior<TV;>;"
    move-object/from16 v1, p1

    .local v1, "coordinatorLayout":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object/from16 v2, p2

    .local v2, "layout":Landroid/view/View;, "TV;"
    move/from16 v3, p3

    .local v3, "minOffset":I
    move/from16 v4, p4

    .local v4, "maxOffset":I
    move/from16 v5, p5

    .local v5, "velocityY":F
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/appbar/HeaderBehavior;->flingRunnable:Ljava/lang/Runnable;

    if-eqz v6, :cond_0

    .line 244
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/appbar/HeaderBehavior;->flingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v6

    .line 245
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/google/android/material/appbar/HeaderBehavior;->flingRunnable:Ljava/lang/Runnable;

    .line 248
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/appbar/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    if-nez v6, :cond_1

    .line 249
    move-object v6, v0

    new-instance v7, Landroid/widget/OverScroller;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    move-object v9, v2

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v7, v6, Lcom/google/android/material/appbar/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    .line 252
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/appbar/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    const/4 v7, 0x0

    move-object v8, v0

    .line 254
    invoke-virtual {v8}, Lcom/google/android/material/appbar/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v8

    const/4 v9, 0x0

    move v10, v5

    .line 256
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v3

    move v14, v4

    .line 252
    invoke-virtual/range {v6 .. v14}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 262
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/appbar/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 263
    move-object v6, v0

    new-instance v7, Lcom/google/android/material/appbar/HeaderBehavior$FlingRunnable;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    invoke-direct {v8, v9, v10, v11}, Lcom/google/android/material/appbar/HeaderBehavior$FlingRunnable;-><init>(Lcom/google/android/material/appbar/HeaderBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V

    iput-object v7, v6, Lcom/google/android/material/appbar/HeaderBehavior;->flingRunnable:Ljava/lang/Runnable;

    .line 264
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/appbar/HeaderBehavior;->flingRunnable:Ljava/lang/Runnable;

    invoke-static {v6, v7}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 265
    const/4 v6, 0x1

    move v0, v6

    .line 268
    .end local v0    # "this":Lcom/google/android/material/appbar/HeaderBehavior;, "Lcom/google/android/material/appbar/HeaderBehavior<TV;>;"
    :goto_0
    return v0

    .line 267
    .restart local v0    # "this":Lcom/google/android/material/appbar/HeaderBehavior;, "Lcom/google/android/material/appbar/HeaderBehavior<TV;>;"
    :cond_2
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/google/android/material/appbar/HeaderBehavior;->onFlingFinished(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V

    .line 268
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method

.method getMaxDragOffset(Landroid/view/View;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/HeaderBehavior;, "Lcom/google/android/material/appbar/HeaderBehavior<TV;>;"
    move-object v1, p1

    .local v1, "view":Landroid/view/View;, "TV;"
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/appbar/HeaderBehavior;, "Lcom/google/android/material/appbar/HeaderBehavior<TV;>;"
    return v0
.end method

.method getScrollRangeForDragFling(Landroid/view/View;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/HeaderBehavior;, "Lcom/google/android/material/appbar/HeaderBehavior<TV;>;"
    move-object v1, p1

    .local v1, "view":Landroid/view/View;, "TV;"
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/appbar/HeaderBehavior;, "Lcom/google/android/material/appbar/HeaderBehavior<TV;>;"
    return v0
.end method

.method getTopBottomOffsetForScrollingSibling()I
    .locals 2

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/HeaderBehavior;, "Lcom/google/android/material/appbar/HeaderBehavior<TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/material/appbar/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/HeaderBehavior;, "Lcom/google/android/material/appbar/HeaderBehavior<TV;>;"
    return v0
.end method

.method onFlingFinished(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 278
    .local p0, "this":Lcom/google/android/material/appbar/HeaderBehavior;, "Lcom/google/android/material/appbar/HeaderBehavior<TV;>;"
    .local p2, "layout":Landroid/view/View;, "TV;"
    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/HeaderBehavior;, "Lcom/google/android/material/appbar/HeaderBehavior<TV;>;"
    move-object v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;, "TV;"
    move-object/from16 v3, p3

    .local v3, "ev":Landroid/view/MotionEvent;
    move-object v9, v0

    iget v9, v9, Lcom/google/android/material/appbar/HeaderBehavior;->touchSlop:I

    if-gez v9, :cond_0

    .line 57
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v10

    iput v10, v9, Lcom/google/android/material/appbar/HeaderBehavior;->touchSlop:I

    .line 60
    :cond_0
    move-object v9, v3

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    move v4, v9

    .line 63
    .local v4, "action":I
    move v9, v4

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    move-object v9, v0

    iget-boolean v9, v9, Lcom/google/android/material/appbar/HeaderBehavior;->isBeingDragged:Z

    if-eqz v9, :cond_1

    .line 64
    const/4 v9, 0x1

    move v0, v9

    .line 119
    .end local v0    # "this":Lcom/google/android/material/appbar/HeaderBehavior;, "Lcom/google/android/material/appbar/HeaderBehavior<TV;>;"
    :goto_0
    return v0

    .line 67
    .restart local v0    # "this":Lcom/google/android/material/appbar/HeaderBehavior;, "Lcom/google/android/material/appbar/HeaderBehavior<TV;>;"
    :cond_1
    move-object v9, v3

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 115
    :cond_2
    :goto_1
    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_3

    .line 116
    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    move-object v10, v3

    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 119
    :cond_3
    move-object v9, v0

    iget-boolean v9, v9, Lcom/google/android/material/appbar/HeaderBehavior;->isBeingDragged:Z

    move v0, v9

    goto :goto_0

    .line 70
    :pswitch_0
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/google/android/material/appbar/HeaderBehavior;->isBeingDragged:Z

    .line 71
    move-object v9, v3

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    move v5, v9

    .line 72
    .local v5, "x":I
    move-object v9, v3

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    move v6, v9

    .line 73
    .local v6, "y":I
    move-object v9, v0

    move-object v10, v2

    invoke-virtual {v9, v10}, Lcom/google/android/material/appbar/HeaderBehavior;->canDragView(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v1

    move-object v10, v2

    move v11, v5

    move v12, v6

    invoke-virtual {v9, v10, v11, v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 74
    move-object v9, v0

    move v10, v6

    iput v10, v9, Lcom/google/android/material/appbar/HeaderBehavior;->lastMotionY:I

    .line 75
    move-object v9, v0

    move-object v10, v3

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, v9, Lcom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    .line 76
    move-object v9, v0

    invoke-direct {v9}, Lcom/google/android/material/appbar/HeaderBehavior;->ensureVelocityTracker()V

    goto :goto_1

    .line 83
    .end local v5    # "x":I
    .end local v6    # "y":I
    :pswitch_1
    move-object v9, v0

    iget v9, v9, Lcom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    move v5, v9

    .line 84
    .local v5, "activePointerId":I
    move v9, v5

    const/4 v10, -0x1

    if-ne v9, v10, :cond_4

    .line 86
    goto :goto_1

    .line 88
    :cond_4
    move-object v9, v3

    move v10, v5

    invoke-virtual {v9, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    move v6, v9

    .line 89
    .local v6, "pointerIndex":I
    move v9, v6

    const/4 v10, -0x1

    if-ne v9, v10, :cond_5

    .line 90
    goto :goto_1

    .line 93
    :cond_5
    move-object v9, v3

    move v10, v6

    invoke-virtual {v9, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v9, v9

    move v7, v9

    .line 94
    .local v7, "y":I
    move v9, v7

    move-object v10, v0

    iget v10, v10, Lcom/google/android/material/appbar/HeaderBehavior;->lastMotionY:I

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    move v8, v9

    .line 95
    .local v8, "yDiff":I
    move v9, v8

    move-object v10, v0

    iget v10, v10, Lcom/google/android/material/appbar/HeaderBehavior;->touchSlop:I

    if-le v9, v10, :cond_2

    .line 96
    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/google/android/material/appbar/HeaderBehavior;->isBeingDragged:Z

    .line 97
    move-object v9, v0

    move v10, v7

    iput v10, v9, Lcom/google/android/material/appbar/HeaderBehavior;->lastMotionY:I

    goto :goto_1

    .line 105
    .end local v5    # "activePointerId":I
    .end local v6    # "pointerIndex":I
    .end local v7    # "y":I
    .end local v8    # "yDiff":I
    :pswitch_2
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/google/android/material/appbar/HeaderBehavior;->isBeingDragged:Z

    .line 106
    move-object v9, v0

    const/4 v10, -0x1

    iput v10, v9, Lcom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    .line 107
    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_2

    .line 108
    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 109
    move-object v9, v0

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/HeaderBehavior;, "Lcom/google/android/material/appbar/HeaderBehavior<TV;>;"
    move-object v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;, "TV;"
    move-object/from16 v3, p3

    .local v3, "ev":Landroid/view/MotionEvent;
    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/appbar/HeaderBehavior;->touchSlop:I

    if-gez v7, :cond_0

    .line 125
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v8

    iput v8, v7, Lcom/google/android/material/appbar/HeaderBehavior;->touchSlop:I

    .line 128
    :cond_0
    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 191
    :cond_1
    :goto_0
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v7, :cond_2

    .line 192
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 195
    :cond_2
    const/4 v7, 0x1

    move v0, v7

    .end local v0    # "this":Lcom/google/android/material/appbar/HeaderBehavior;, "Lcom/google/android/material/appbar/HeaderBehavior<TV;>;"
    :goto_1
    return v0

    .line 131
    .restart local v0    # "this":Lcom/google/android/material/appbar/HeaderBehavior;, "Lcom/google/android/material/appbar/HeaderBehavior<TV;>;"
    :pswitch_0
    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    move v4, v7

    .line 132
    .local v4, "x":I
    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    move v5, v7

    .line 134
    .local v5, "y":I
    move-object v7, v1

    move-object v8, v2

    move v9, v4

    move v10, v5

    invoke-virtual {v7, v8, v9, v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v0

    move-object v8, v2

    invoke-virtual {v7, v8}, Lcom/google/android/material/appbar/HeaderBehavior;->canDragView(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 135
    move-object v7, v0

    move v8, v5

    iput v8, v7, Lcom/google/android/material/appbar/HeaderBehavior;->lastMotionY:I

    .line 136
    move-object v7, v0

    move-object v8, v3

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, v7, Lcom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    .line 137
    move-object v7, v0

    invoke-direct {v7}, Lcom/google/android/material/appbar/HeaderBehavior;->ensureVelocityTracker()V

    goto :goto_0

    .line 139
    :cond_3
    const/4 v7, 0x0

    move v0, v7

    goto :goto_1

    .line 146
    .end local v4    # "x":I
    .end local v5    # "y":I
    :pswitch_1
    move-object v7, v3

    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v7

    move v4, v7

    .line 147
    .local v4, "activePointerIndex":I
    move v7, v4

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    .line 148
    const/4 v7, 0x0

    move v0, v7

    goto :goto_1

    .line 151
    :cond_4
    move-object v7, v3

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v7, v7

    move v5, v7

    .line 152
    .restart local v5    # "y":I
    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/appbar/HeaderBehavior;->lastMotionY:I

    move v8, v5

    sub-int/2addr v7, v8

    move v6, v7

    .line 154
    .local v6, "dy":I
    move-object v7, v0

    iget-boolean v7, v7, Lcom/google/android/material/appbar/HeaderBehavior;->isBeingDragged:Z

    if-nez v7, :cond_5

    move v7, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/appbar/HeaderBehavior;->touchSlop:I

    if-le v7, v8, :cond_5

    .line 155
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/google/android/material/appbar/HeaderBehavior;->isBeingDragged:Z

    .line 156
    move v7, v6

    if-lez v7, :cond_6

    .line 157
    move v7, v6

    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/appbar/HeaderBehavior;->touchSlop:I

    sub-int/2addr v7, v8

    move v6, v7

    .line 163
    :cond_5
    :goto_2
    move-object v7, v0

    iget-boolean v7, v7, Lcom/google/android/material/appbar/HeaderBehavior;->isBeingDragged:Z

    if-eqz v7, :cond_1

    .line 164
    move-object v7, v0

    move v8, v5

    iput v8, v7, Lcom/google/android/material/appbar/HeaderBehavior;->lastMotionY:I

    .line 166
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v6

    move-object v11, v0

    move-object v12, v2

    invoke-virtual {v11, v12}, Lcom/google/android/material/appbar/HeaderBehavior;->getMaxDragOffset(Landroid/view/View;)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/google/android/material/appbar/HeaderBehavior;->scroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v7

    goto/16 :goto_0

    .line 159
    :cond_6
    move v7, v6

    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/appbar/HeaderBehavior;->touchSlop:I

    add-int/2addr v7, v8

    move v6, v7

    goto :goto_2

    .line 172
    .end local v4    # "activePointerIndex":I
    .end local v5    # "y":I
    .end local v6    # "dy":I
    :pswitch_2
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v7, :cond_7

    .line 173
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 174
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v8, 0x3e8

    invoke-virtual {v7, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 175
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    invoke-virtual {v7, v8}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v7

    move v4, v7

    .line 176
    .local v4, "yvel":F
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v0

    move-object v11, v2

    invoke-virtual {v10, v11}, Lcom/google/android/material/appbar/HeaderBehavior;->getScrollRangeForDragFling(Landroid/view/View;)I

    move-result v10

    neg-int v10, v10

    const/4 v11, 0x0

    move v12, v4

    invoke-virtual/range {v7 .. v12}, Lcom/google/android/material/appbar/HeaderBehavior;->fling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIF)Z

    move-result v7

    .line 181
    .end local v4    # "yvel":F
    :cond_7
    :pswitch_3
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/google/android/material/appbar/HeaderBehavior;->isBeingDragged:Z

    .line 182
    move-object v7, v0

    const/4 v8, -0x1

    iput v8, v7, Lcom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    .line 183
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v7, :cond_1

    .line 184
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->recycle()V

    .line 185
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method final scroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/HeaderBehavior;, "Lcom/google/android/material/appbar/HeaderBehavior<TV;>;"
    move-object v1, p1

    .local v1, "coordinatorLayout":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "header":Landroid/view/View;, "TV;"
    move v3, p3

    .local v3, "dy":I
    move/from16 v4, p4

    .local v4, "minOffset":I
    move/from16 v5, p5

    .local v5, "maxOffset":I
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v0

    .line 232
    invoke-virtual {v9}, Lcom/google/android/material/appbar/HeaderBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v9

    move v10, v3

    sub-int/2addr v9, v10

    move v10, v4

    move v11, v5

    .line 229
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/material/appbar/HeaderBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v6

    move v0, v6

    .end local v0    # "this":Lcom/google/android/material/appbar/HeaderBehavior;, "Lcom/google/android/material/appbar/HeaderBehavior<TV;>;"
    return v0
.end method

.method setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)I"
        }
    .end annotation

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/HeaderBehavior;, "Lcom/google/android/material/appbar/HeaderBehavior<TV;>;"
    move-object v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "header":Landroid/view/View;, "TV;"
    move v3, p3

    .local v3, "newOffset":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/material/appbar/HeaderBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v4

    move v0, v4

    .end local v0    # "this":Lcom/google/android/material/appbar/HeaderBehavior;, "Lcom/google/android/material/appbar/HeaderBehavior<TV;>;"
    return v0
.end method

.method setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/HeaderBehavior;, "Lcom/google/android/material/appbar/HeaderBehavior<TV;>;"
    move-object v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "header":Landroid/view/View;, "TV;"
    move v3, p3

    .local v3, "newOffset":I
    move v4, p4

    .local v4, "minOffset":I
    move/from16 v5, p5

    .local v5, "maxOffset":I
    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/android/material/appbar/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v8

    move v6, v8

    .line 206
    .local v6, "curOffset":I
    const/4 v8, 0x0

    move v7, v8

    .line 208
    .local v7, "consumed":I
    move v8, v4

    if-eqz v8, :cond_0

    move v8, v6

    move v9, v4

    if-lt v8, v9, :cond_0

    move v8, v6

    move v9, v5

    if-gt v8, v9, :cond_0

    .line 211
    move v8, v3

    move v9, v4

    move v10, v5

    invoke-static {v8, v9, v10}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v8

    move v3, v8

    .line 213
    move v8, v6

    move v9, v3

    if-eq v8, v9, :cond_0

    .line 214
    move-object v8, v0

    move v9, v3

    invoke-virtual {v8, v9}, Lcom/google/android/material/appbar/HeaderBehavior;->setTopAndBottomOffset(I)Z

    move-result v8

    .line 216
    move v8, v6

    move v9, v3

    sub-int/2addr v8, v9

    move v7, v8

    .line 220
    :cond_0
    move v8, v7

    move v0, v8

    .end local v0    # "this":Lcom/google/android/material/appbar/HeaderBehavior;, "Lcom/google/android/material/appbar/HeaderBehavior<TV;>;"
    return v0
.end method
