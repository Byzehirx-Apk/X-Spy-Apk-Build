.class Lcom/google/android/material/appbar/HeaderBehavior$FlingRunnable;
.super Ljava/lang/Object;
.source "HeaderBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/HeaderBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private final layout:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final parent:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field final synthetic this$0:Lcom/google/android/material/appbar/HeaderBehavior;


# direct methods
.method constructor <init>(Lcom/google/android/material/appbar/HeaderBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/HeaderBehavior$FlingRunnable;, "Lcom/google/android/material/appbar/HeaderBehavior<TV;>.FlingRunnable;"
    move-object v1, p1

    move-object v2, p2

    .local v2, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v3, p3

    .local v3, "layout":Landroid/view/View;, "TV;"
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/android/material/appbar/HeaderBehavior$FlingRunnable;->this$0:Lcom/google/android/material/appbar/HeaderBehavior;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 305
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/google/android/material/appbar/HeaderBehavior$FlingRunnable;->parent:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 306
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/android/material/appbar/HeaderBehavior$FlingRunnable;->layout:Landroid/view/View;

    .line 307
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/HeaderBehavior$FlingRunnable;, "Lcom/google/android/material/appbar/HeaderBehavior<TV;>.FlingRunnable;"
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/appbar/HeaderBehavior$FlingRunnable;->layout:Landroid/view/View;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/appbar/HeaderBehavior$FlingRunnable;->this$0:Lcom/google/android/material/appbar/HeaderBehavior;

    iget-object v1, v1, Lcom/google/android/material/appbar/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    if-eqz v1, :cond_0

    .line 312
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/appbar/HeaderBehavior$FlingRunnable;->this$0:Lcom/google/android/material/appbar/HeaderBehavior;

    iget-object v1, v1, Lcom/google/android/material/appbar/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/appbar/HeaderBehavior$FlingRunnable;->this$0:Lcom/google/android/material/appbar/HeaderBehavior;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/HeaderBehavior$FlingRunnable;->parent:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/appbar/HeaderBehavior$FlingRunnable;->layout:Landroid/view/View;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/appbar/HeaderBehavior$FlingRunnable;->this$0:Lcom/google/android/material/appbar/HeaderBehavior;

    iget-object v4, v4, Lcom/google/android/material/appbar/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/material/appbar/HeaderBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I

    move-result v1

    .line 315
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/appbar/HeaderBehavior$FlingRunnable;->layout:Landroid/view/View;

    move-object v2, v0

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/appbar/HeaderBehavior$FlingRunnable;->this$0:Lcom/google/android/material/appbar/HeaderBehavior;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/HeaderBehavior$FlingRunnable;->parent:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/appbar/HeaderBehavior$FlingRunnable;->layout:Landroid/view/View;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/appbar/HeaderBehavior;->onFlingFinished(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V

    goto :goto_0
.end method
