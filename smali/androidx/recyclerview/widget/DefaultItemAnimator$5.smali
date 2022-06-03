.class Landroidx/recyclerview/widget/DefaultItemAnimator$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/DefaultItemAnimator;->animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
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
.method constructor <init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V
    .locals 7

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DefaultItemAnimator$5;
    move-object v1, p1

    .local v1, "this$0":Landroidx/recyclerview/widget/DefaultItemAnimator;
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroidx/recyclerview/widget/DefaultItemAnimator$5;->this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroidx/recyclerview/widget/DefaultItemAnimator$5;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroidx/recyclerview/widget/DefaultItemAnimator$5;->val$view:Landroid/view/View;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroidx/recyclerview/widget/DefaultItemAnimator$5;->val$animation:Landroid/view/ViewPropertyAnimator;

    move-object v5, v0

    invoke-direct {v5}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DefaultItemAnimator$5;
    move-object v1, p1

    .local v1, "animator":Landroid/animation/Animator;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/DefaultItemAnimator$5;->val$view:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 242
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DefaultItemAnimator$5;
    move-object v1, p1

    .local v1, "animator":Landroid/animation/Animator;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/DefaultItemAnimator$5;->val$animation:Landroid/view/ViewPropertyAnimator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 247
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/DefaultItemAnimator$5;->this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/DefaultItemAnimator$5;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 248
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/DefaultItemAnimator$5;->this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

    iget-object v2, v2, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/DefaultItemAnimator$5;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 249
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/DefaultItemAnimator$5;->this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    .line 250
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DefaultItemAnimator$5;
    move-object v1, p1

    .local v1, "animator":Landroid/animation/Animator;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/DefaultItemAnimator$5;->this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/DefaultItemAnimator$5;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchAddStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 237
    return-void
.end method
