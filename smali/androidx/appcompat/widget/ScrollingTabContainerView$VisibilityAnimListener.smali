.class public Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VisibilityAnimListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field private mFinalVisibility:I

.field final synthetic this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;


# direct methods
.method protected constructor <init>(Landroidx/appcompat/widget/ScrollingTabContainerView;)V
    .locals 4

    .prologue
    .line 567
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/widget/ScrollingTabContainerView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

    move-object v2, v0

    invoke-direct {v2}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 568
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 594
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;
    move-object v1, p1

    .local v1, "animator":Landroid/animation/Animator;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    .line 595
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 586
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;
    move-object v1, p1

    .local v1, "animator":Landroid/animation/Animator;
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    if-eqz v2, :cond_0

    .line 590
    :goto_0
    return-void

    .line 588
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/appcompat/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/view/ViewPropertyAnimator;

    .line 589
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;->mFinalVisibility:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 590
    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 580
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;
    move-object v1, p1

    .local v1, "animator":Landroid/animation/Animator;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 581
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    .line 582
    return-void
.end method

.method public withFinalVisibility(Landroid/view/ViewPropertyAnimator;I)Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;
    .locals 5

    .prologue
    .line 573
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;
    move-object v1, p1

    .local v1, "animation":Landroid/view/ViewPropertyAnimator;
    move v2, p2

    .local v2, "visibility":I
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;->mFinalVisibility:I

    .line 574
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/view/ViewPropertyAnimator;

    .line 575
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;
    return-object v0
.end method
