.class Landroidx/recyclerview/widget/DefaultItemAnimator$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/DefaultItemAnimator;->animateChangeImpl(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

.field final synthetic val$changeInfo:Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

.field final synthetic val$newView:Landroid/view/View;

.field final synthetic val$newViewAnimation:Landroid/view/ViewPropertyAnimator;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 7

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DefaultItemAnimator$8;
    move-object v1, p1

    .local v1, "this$0":Landroidx/recyclerview/widget/DefaultItemAnimator;
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->val$changeInfo:Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->val$newViewAnimation:Landroid/view/ViewPropertyAnimator;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    move-object v5, v0

    invoke-direct {v5}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DefaultItemAnimator$8;
    move-object v1, p1

    .local v1, "animator":Landroid/animation/Animator;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->val$newViewAnimation:Landroid/view/ViewPropertyAnimator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 388
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 389
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 390
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 391
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->val$changeInfo:Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v3, v3, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 392
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

    iget-object v2, v2, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->val$changeInfo:Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v3, v3, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 393
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    .line 394
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5

    .prologue
    .line 383
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DefaultItemAnimator$8;
    move-object v1, p1

    .local v1, "animator":Landroid/animation/Animator;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->val$changeInfo:Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v3, v3, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchChangeStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 384
    return-void
.end method
