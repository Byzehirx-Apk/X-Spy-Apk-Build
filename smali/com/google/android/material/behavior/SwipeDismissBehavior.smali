.class public Lcom/google/android/material/behavior/SwipeDismissBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "SwipeDismissBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable;,
        Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;
    }
.end annotation

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
.field private static final DEFAULT_ALPHA_END_DISTANCE:F = 0.5f

.field private static final DEFAULT_ALPHA_START_DISTANCE:F = 0.0f

.field private static final DEFAULT_DRAG_DISMISS_THRESHOLD:F = 0.5f

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field public static final SWIPE_DIRECTION_ANY:I = 0x2

.field public static final SWIPE_DIRECTION_END_TO_START:I = 0x1

.field public static final SWIPE_DIRECTION_START_TO_END:I


# instance fields
.field alphaEndSwipeDistance:F

.field alphaStartSwipeDistance:F

.field private final dragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

.field dragDismissThreshold:F

.field private interceptingEvents:Z

.field listener:Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

.field private sensitivity:F

.field private sensitivitySet:Z

.field swipeDirection:I

.field viewDragHelper:Landroidx/customview/widget/ViewDragHelper;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior;, "Lcom/google/android/material/behavior/SwipeDismissBehavior<TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 84
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->sensitivity:F

    .line 87
    move-object v1, v0

    const/4 v2, 0x2

    iput v2, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    .line 88
    move-object v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->dragDismissThreshold:F

    .line 89
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->alphaStartSwipeDistance:F

    .line 90
    move-object v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->alphaEndSwipeDistance:F

    .line 207
    move-object v1, v0

    new-instance v2, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V

    iput-object v2, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->dragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    return-void
.end method

.method static clamp(FFF)F
    .locals 5

    .prologue
    .line 384
    move v0, p0

    .local v0, "min":F
    move v1, p1

    .local v1, "value":F
    move v2, p2

    .local v2, "max":F
    move v3, v0

    move v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    move v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move v0, v3

    .end local v0    # "min":F
    return v0
.end method

.method static clamp(III)I
    .locals 5

    .prologue
    .line 388
    move v0, p0

    .local v0, "min":I
    move v1, p1

    .local v1, "value":I
    move v2, p2

    .local v2, "max":I
    move v3, v0

    move v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v0, v3

    .end local v0    # "min":I
    return v0
.end method

.method private ensureViewDragHelper(Landroid/view/ViewGroup;)V
    .locals 6

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior;, "Lcom/google/android/material/behavior/SwipeDismissBehavior<TV;>;"
    move-object v1, p1

    .local v1, "parent":Landroid/view/ViewGroup;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-nez v2, :cond_0

    .line 355
    move-object v2, v0

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/android/material/behavior/SwipeDismissBehavior;->sensitivitySet:Z

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/behavior/SwipeDismissBehavior;->sensitivity:F

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/behavior/SwipeDismissBehavior;->dragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 357
    invoke-static {v3, v4, v5}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object v3

    .line 358
    :goto_0
    iput-object v3, v2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 360
    :cond_0
    return-void

    .line 357
    :cond_1
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/behavior/SwipeDismissBehavior;->dragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 358
    invoke-static {v3, v4}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object v3

    goto :goto_0
.end method

.method static fraction(FFF)F
    .locals 6

    .prologue
    .line 403
    move v0, p0

    .local v0, "startValue":F
    move v1, p1

    .local v1, "endValue":F
    move v2, p2

    .local v2, "value":F
    move v3, v2

    move v4, v0

    sub-float/2addr v3, v4

    move v4, v1

    move v5, v0

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    move v0, v3

    .end local v0    # "startValue":F
    return v0
.end method


# virtual methods
.method public canSwipeDismissView(Landroid/view/View;)Z
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior;, "Lcom/google/android/material/behavior/SwipeDismissBehavior<TV;>;"
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/behavior/SwipeDismissBehavior;, "Lcom/google/android/material/behavior/SwipeDismissBehavior<TV;>;"
    return v0
.end method

.method public getDragState()I
    .locals 2

    .prologue
    .line 398
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior;, "Lcom/google/android/material/behavior/SwipeDismissBehavior<TV;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v1}, Landroidx/customview/widget/ViewDragHelper;->getViewDragState()I

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/behavior/SwipeDismissBehavior;, "Lcom/google/android/material/behavior/SwipeDismissBehavior<TV;>;"
    return v0

    .restart local v0    # "this":Lcom/google/android/material/behavior/SwipeDismissBehavior;, "Lcom/google/android/material/behavior/SwipeDismissBehavior<TV;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
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
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior;, "Lcom/google/android/material/behavior/SwipeDismissBehavior<TV;>;"
    move-object v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;, "TV;"
    move-object v3, p3

    .local v3, "event":Landroid/view/MotionEvent;
    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/android/material/behavior/SwipeDismissBehavior;->interceptingEvents:Z

    move v4, v5

    .line 168
    .local v4, "dispatchEventToHelper":Z
    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 181
    :goto_0
    :pswitch_0
    move v5, v4

    if-eqz v5, :cond_0

    .line 182
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->ensureViewDragHelper(Landroid/view/ViewGroup;)V

    .line 183
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/behavior/SwipeDismissBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    move v0, v5

    .line 185
    .end local v0    # "this":Lcom/google/android/material/behavior/SwipeDismissBehavior;, "Lcom/google/android/material/behavior/SwipeDismissBehavior<TV;>;"
    :goto_1
    return v0

    .line 170
    .restart local v0    # "this":Lcom/google/android/material/behavior/SwipeDismissBehavior;, "Lcom/google/android/material/behavior/SwipeDismissBehavior<TV;>;"
    :pswitch_1
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    .line 171
    invoke-virtual {v8}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    move-object v9, v3

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v6, v7, v8, v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v6

    iput-boolean v6, v5, Lcom/google/android/material/behavior/SwipeDismissBehavior;->interceptingEvents:Z

    .line 172
    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/android/material/behavior/SwipeDismissBehavior;->interceptingEvents:Z

    move v4, v5

    .line 173
    goto :goto_0

    .line 177
    :pswitch_2
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/google/android/material/behavior/SwipeDismissBehavior;->interceptingEvents:Z

    goto :goto_0

    .line 185
    :cond_0
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1

    .line 168
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
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
    .line 190
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior;, "Lcom/google/android/material/behavior/SwipeDismissBehavior<TV;>;"
    move-object v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;, "TV;"
    move-object v3, p3

    .local v3, "event":Landroid/view/MotionEvent;
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/behavior/SwipeDismissBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-eqz v4, :cond_0

    .line 191
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/behavior/SwipeDismissBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 192
    const/4 v4, 0x1

    move v0, v4

    .line 194
    .end local v0    # "this":Lcom/google/android/material/behavior/SwipeDismissBehavior;, "Lcom/google/android/material/behavior/SwipeDismissBehavior<TV;>;"
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/google/android/material/behavior/SwipeDismissBehavior;, "Lcom/google/android/material/behavior/SwipeDismissBehavior<TV;>;"
    :cond_0
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public setDragDismissDistance(F)V
    .locals 6

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior;, "Lcom/google/android/material/behavior/SwipeDismissBehavior<TV;>;"
    move v1, p1

    .local v1, "distance":F
    move-object v2, v0

    const/4 v3, 0x0

    move v4, v1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v5}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->clamp(FFF)F

    move-result v3

    iput v3, v2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->dragDismissThreshold:F

    .line 132
    return-void
.end method

.method public setEndAlphaSwipeDistance(F)V
    .locals 6

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior;, "Lcom/google/android/material/behavior/SwipeDismissBehavior<TV;>;"
    move v1, p1

    .local v1, "fraction":F
    move-object v2, v0

    const/4 v3, 0x0

    move v4, v1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v5}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->clamp(FFF)F

    move-result v3

    iput v3, v2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->alphaEndSwipeDistance:F

    .line 150
    return-void
.end method

.method public setListener(Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;)V
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior;, "Lcom/google/android/material/behavior/SwipeDismissBehavior<TV;>;"
    move-object v1, p1

    .local v1, "listener":Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->listener:Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

    .line 113
    return-void
.end method

.method public setSensitivity(F)V
    .locals 4

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior;, "Lcom/google/android/material/behavior/SwipeDismissBehavior<TV;>;"
    move v1, p1

    .local v1, "sensitivity":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->sensitivity:F

    .line 161
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->sensitivitySet:Z

    .line 162
    return-void
.end method

.method public setStartAlphaSwipeDistance(F)V
    .locals 6

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior;, "Lcom/google/android/material/behavior/SwipeDismissBehavior<TV;>;"
    move v1, p1

    .local v1, "fraction":F
    move-object v2, v0

    const/4 v3, 0x0

    move v4, v1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v5}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->clamp(FFF)F

    move-result v3

    iput v3, v2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->alphaStartSwipeDistance:F

    .line 141
    return-void
.end method

.method public setSwipeDirection(I)V
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior;, "Lcom/google/android/material/behavior/SwipeDismissBehavior<TV;>;"
    move v1, p1

    .local v1, "direction":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    .line 123
    return-void
.end method
