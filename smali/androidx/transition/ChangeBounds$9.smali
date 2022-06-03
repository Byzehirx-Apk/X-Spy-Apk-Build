.class Landroidx/transition/ChangeBounds$9;
.super Landroidx/transition/TransitionListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/ChangeBounds;->createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCanceled:Z

.field final synthetic this$0:Landroidx/transition/ChangeBounds;

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroidx/transition/ChangeBounds;Landroid/view/ViewGroup;)V
    .locals 5

    .prologue
    .line 391
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeBounds$9;
    move-object v1, p1

    .local v1, "this$0":Landroidx/transition/ChangeBounds;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/transition/ChangeBounds$9;->this$0:Landroidx/transition/ChangeBounds;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    move-object v3, v0

    invoke-direct {v3}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    .line 392
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/transition/ChangeBounds$9;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroidx/transition/Transition;)V
    .locals 4
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 396
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeBounds$9;
    move-object v1, p1

    .local v1, "transition":Landroidx/transition/Transition;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroidx/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    .line 397
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/transition/ChangeBounds$9;->mCanceled:Z

    .line 398
    return-void
.end method

.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 4
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeBounds$9;
    move-object v1, p1

    .local v1, "transition":Landroidx/transition/Transition;
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/transition/ChangeBounds$9;->mCanceled:Z

    if-nez v2, :cond_0

    .line 403
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroidx/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    .line 405
    :cond_0
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    move-result-object v2

    .line 406
    return-void
.end method

.method public onTransitionPause(Landroidx/transition/Transition;)V
    .locals 4
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 410
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeBounds$9;
    move-object v1, p1

    .local v1, "transition":Landroidx/transition/Transition;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroidx/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    .line 411
    return-void
.end method

.method public onTransitionResume(Landroidx/transition/Transition;)V
    .locals 4
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 415
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeBounds$9;
    move-object v1, p1

    .local v1, "transition":Landroidx/transition/Transition;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroidx/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    .line 416
    return-void
.end method
