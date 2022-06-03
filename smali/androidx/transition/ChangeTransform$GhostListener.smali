.class Landroidx/transition/ChangeTransform$GhostListener;
.super Landroidx/transition/TransitionListenerAdapter;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GhostListener"
.end annotation


# instance fields
.field private mGhostView:Landroidx/transition/GhostViewImpl;

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroidx/transition/GhostViewImpl;)V
    .locals 5

    .prologue
    .line 518
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeTransform$GhostListener;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, p2

    .local v2, "ghostView":Landroidx/transition/GhostViewImpl;
    move-object v3, v0

    invoke-direct {v3}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    .line 519
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    .line 520
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/transition/ChangeTransform$GhostListener;->mGhostView:Landroidx/transition/GhostViewImpl;

    .line 521
    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 5
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 525
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeTransform$GhostListener;
    move-object v1, p1

    .local v1, "transition":Landroidx/transition/Transition;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    move-result-object v2

    .line 526
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    invoke-static {v2}, Landroidx/transition/GhostViewUtils;->removeGhost(Landroid/view/View;)V

    .line 527
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    sget v3, Landroidx/transition/R$id;->transition_transform:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 528
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    sget v3, Landroidx/transition/R$id;->parent_matrix:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 529
    return-void
.end method

.method public onTransitionPause(Landroidx/transition/Transition;)V
    .locals 4
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 533
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeTransform$GhostListener;
    move-object v1, p1

    .local v1, "transition":Landroidx/transition/Transition;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ChangeTransform$GhostListener;->mGhostView:Landroidx/transition/GhostViewImpl;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroidx/transition/GhostViewImpl;->setVisibility(I)V

    .line 534
    return-void
.end method

.method public onTransitionResume(Landroidx/transition/Transition;)V
    .locals 4
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 538
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeTransform$GhostListener;
    move-object v1, p1

    .local v1, "transition":Landroidx/transition/Transition;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ChangeTransform$GhostListener;->mGhostView:Landroidx/transition/GhostViewImpl;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroidx/transition/GhostViewImpl;->setVisibility(I)V

    .line 539
    return-void
.end method
