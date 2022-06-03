.class Landroidx/recyclerview/widget/FastScroller$AnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Landroidx/recyclerview/widget/FastScroller;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/FastScroller;)V
    .locals 4

    .prologue
    .line 560
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/FastScroller$AnimatorListener;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->this$0:Landroidx/recyclerview/widget/FastScroller;

    move-object v2, v0

    invoke-direct {v2}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 558
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->mCanceled:Z

    .line 561
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 581
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/FastScroller$AnimatorListener;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/Animator;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->mCanceled:Z

    .line 582
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 566
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/FastScroller$AnimatorListener;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/Animator;
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->mCanceled:Z

    if-eqz v2, :cond_0

    .line 567
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->mCanceled:Z

    .line 568
    .line 577
    :goto_0
    return-void

    .line 570
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->this$0:Landroidx/recyclerview/widget/FastScroller;

    iget-object v2, v2, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 571
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->this$0:Landroidx/recyclerview/widget/FastScroller;

    const/4 v3, 0x0

    iput v3, v2, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    .line 572
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->this$0:Landroidx/recyclerview/widget/FastScroller;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    .line 577
    :goto_1
    goto :goto_0

    .line 574
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->this$0:Landroidx/recyclerview/widget/FastScroller;

    const/4 v3, 0x2

    iput v3, v2, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    .line 575
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->this$0:Landroidx/recyclerview/widget/FastScroller;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/FastScroller;->requestRedraw()V

    goto :goto_1
.end method
