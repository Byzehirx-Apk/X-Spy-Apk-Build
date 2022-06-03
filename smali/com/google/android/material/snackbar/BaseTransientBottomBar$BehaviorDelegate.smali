.class public Lcom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BehaviorDelegate"
.end annotation


# instance fields
.field private managerCallback:Lcom/google/android/material/snackbar/SnackbarManager$Callback;


# direct methods
.method public constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/behavior/SwipeDismissBehavior",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 818
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;
    move-object v1, p1

    .local v1, "behavior":Lcom/google/android/material/behavior/SwipeDismissBehavior;, "Lcom/google/android/material/behavior/SwipeDismissBehavior<*>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 819
    move-object v2, v1

    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v2, v3}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->setStartAlphaSwipeDistance(F)V

    .line 820
    move-object v2, v1

    const v3, 0x3f19999a    # 0.6f

    invoke-virtual {v2, v3}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->setEndAlphaSwipeDistance(F)V

    .line 821
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->setSwipeDirection(I)V

    .line 822
    return-void
.end method


# virtual methods
.method public canSwipeDismissView(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 829
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, v1

    instance-of v2, v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;
    return v0
.end method

.method public onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 8

    .prologue
    .line 833
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;
    move-object v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;
    move-object v3, p3

    .local v3, "event":Landroid/view/MotionEvent;
    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 848
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 837
    :pswitch_1
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v4, v5, v6, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 838
    invoke-static {}, Lcom/google/android/material/snackbar/SnackbarManager;->getInstance()Lcom/google/android/material/snackbar/SnackbarManager;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;->managerCallback:Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    invoke-virtual {v4, v5}, Lcom/google/android/material/snackbar/SnackbarManager;->pauseTimeout(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)V

    goto :goto_0

    .line 843
    :pswitch_2
    invoke-static {}, Lcom/google/android/material/snackbar/SnackbarManager;->getInstance()Lcom/google/android/material/snackbar/SnackbarManager;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;->managerCallback:Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    invoke-virtual {v4, v5}, Lcom/google/android/material/snackbar/SnackbarManager;->restoreTimeoutIfPaused(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)V

    .line 844
    goto :goto_0

    .line 833
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setBaseTransientBottomBar(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/snackbar/BaseTransientBottomBar",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 825
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;
    move-object v1, p1

    .local v1, "baseTransientBottomBar":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<*>;"
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->managerCallback:Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    iput-object v3, v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;->managerCallback:Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    .line 826
    return-void
.end method
