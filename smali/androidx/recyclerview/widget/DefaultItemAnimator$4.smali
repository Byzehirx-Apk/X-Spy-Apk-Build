.class Landroidx/recyclerview/widget/DefaultItemAnimator$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/DefaultItemAnimator;->animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

.field final synthetic val$animation:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 7

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DefaultItemAnimator$4;
    move-object v1, p1

    .local v1, "this$0":Landroidx/recyclerview/widget/DefaultItemAnimator;
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroidx/recyclerview/widget/DefaultItemAnimator$4;->this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroidx/recyclerview/widget/DefaultItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroidx/recyclerview/widget/DefaultItemAnimator$4;->val$animation:Landroid/view/ViewPropertyAnimator;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroidx/recyclerview/widget/DefaultItemAnimator$4;->val$view:Landroid/view/View;

    move-object v5, v0

    invoke-direct {v5}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DefaultItemAnimator$4;
    move-object v1, p1

    .local v1, "animator":Landroid/animation/Animator;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/DefaultItemAnimator$4;->val$animation:Landroid/view/ViewPropertyAnimator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 212
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/DefaultItemAnimator$4;->val$view:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 213
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/DefaultItemAnimator$4;->this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/DefaultItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 214
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/DefaultItemAnimator$4;->this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

    iget-object v2, v2, Landroidx/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/DefaultItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 215
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/DefaultItemAnimator$4;->this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    .line 216
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DefaultItemAnimator$4;
    move-object v1, p1

    .local v1, "animator":Landroid/animation/Animator;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/DefaultItemAnimator$4;->this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/DefaultItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchRemoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 207
    return-void
.end method
