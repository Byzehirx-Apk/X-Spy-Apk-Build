.class Lcom/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable;
.super Ljava/lang/Object;
.source "SwipeDismissBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/behavior/SwipeDismissBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettleRunnable"
.end annotation


# instance fields
.field private final dismiss:Z

.field final synthetic this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

.field private final view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;Landroid/view/View;Z)V
    .locals 6

    .prologue
    .line 366
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable;, "Lcom/google/android/material/behavior/SwipeDismissBehavior<TV;>.SettleRunnable;"
    move-object v1, p1

    move-object v2, p2

    .local v2, "view":Landroid/view/View;
    move v3, p3

    .local v3, "dismiss":Z
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 367
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable;->view:Landroid/view/View;

    .line 368
    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Lcom/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable;->dismiss:Z

    .line 369
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 373
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable;, "Lcom/google/android/material/behavior/SwipeDismissBehavior<TV;>.SettleRunnable;"
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v1, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v1, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 374
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable;->view:Landroid/view/View;

    move-object v2, v0

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable;->dismiss:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v1, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->listener:Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

    if-eqz v1, :cond_0

    .line 377
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v1, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->listener:Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable;->view:Landroid/view/View;

    invoke-interface {v1, v2}, Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;->onDismiss(Landroid/view/View;)V

    goto :goto_0
.end method
