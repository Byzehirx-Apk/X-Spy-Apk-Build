.class Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/AutoScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollAnimationRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/widget/AutoScrollHelper;


# direct methods
.method constructor <init>(Landroidx/core/widget/AutoScrollHelper;)V
    .locals 4

    .prologue
    .line 695
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 696
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 700
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    iget-boolean v4, v4, Landroidx/core/widget/AutoScrollHelper;->mAnimating:Z

    if-nez v4, :cond_0

    .line 701
    .line 728
    :goto_0
    return-void

    .line 704
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    iget-boolean v4, v4, Landroidx/core/widget/AutoScrollHelper;->mNeedsReset:Z

    if-eqz v4, :cond_1

    .line 705
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/core/widget/AutoScrollHelper;->mNeedsReset:Z

    .line 706
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    iget-object v4, v4, Landroidx/core/widget/AutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v4}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->start()V

    .line 709
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    iget-object v4, v4, Landroidx/core/widget/AutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    move-object v1, v4

    .line 710
    .local v1, "scroller":Landroidx/core/widget/AutoScrollHelper$ClampedScroller;
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    invoke-virtual {v4}, Landroidx/core/widget/AutoScrollHelper;->shouldAnimate()Z

    move-result v4

    if-nez v4, :cond_3

    .line 711
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/core/widget/AutoScrollHelper;->mAnimating:Z

    .line 712
    goto :goto_0

    .line 715
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    iget-boolean v4, v4, Landroidx/core/widget/AutoScrollHelper;->mNeedsCancel:Z

    if-eqz v4, :cond_4

    .line 716
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/core/widget/AutoScrollHelper;->mNeedsCancel:Z

    .line 717
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    invoke-virtual {v4}, Landroidx/core/widget/AutoScrollHelper;->cancelTargetTouch()V

    .line 720
    :cond_4
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->computeScrollDelta()V

    .line 722
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->getDeltaX()I

    move-result v4

    move v2, v4

    .line 723
    .local v2, "deltaX":I
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->getDeltaY()I

    move-result v4

    move v3, v4

    .line 724
    .local v3, "deltaY":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    move v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroidx/core/widget/AutoScrollHelper;->scrollTargetBy(II)V

    .line 727
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    iget-object v4, v4, Landroidx/core/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    move-object v5, v0

    invoke-static {v4, v5}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 728
    goto :goto_0
.end method
