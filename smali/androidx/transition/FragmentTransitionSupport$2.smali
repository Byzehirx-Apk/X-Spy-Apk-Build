.class Landroidx/transition/FragmentTransitionSupport$2;
.super Ljava/lang/Object;
.source "FragmentTransitionSupport.java"

# interfaces
.implements Landroidx/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/FragmentTransitionSupport;->scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/transition/FragmentTransitionSupport;

.field final synthetic val$exitingViews:Ljava/util/ArrayList;

.field final synthetic val$fragmentView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/transition/FragmentTransitionSupport;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 6

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Landroidx/transition/FragmentTransitionSupport$2;
    move-object v1, p1

    .local v1, "this$0":Landroidx/transition/FragmentTransitionSupport;
    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/transition/FragmentTransitionSupport$2;->this$0:Landroidx/transition/FragmentTransitionSupport;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/transition/FragmentTransitionSupport$2;->val$fragmentView:Landroid/view/View;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/transition/FragmentTransitionSupport$2;->val$exitingViews:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroidx/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 165
    return-void
.end method

.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 6
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Landroidx/transition/FragmentTransitionSupport$2;
    move-object v1, p1

    .local v1, "transition":Landroidx/transition/Transition;
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    move-result-object v4

    .line 156
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/FragmentTransitionSupport$2;->val$fragmentView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 157
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/FragmentTransitionSupport$2;->val$exitingViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v4

    .line 158
    .local v2, "numViews":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 159
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/FragmentTransitionSupport$2;->val$exitingViews:Ljava/util/ArrayList;

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 158
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 161
    :cond_0
    return-void
.end method

.method public onTransitionPause(Landroidx/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 169
    return-void
.end method

.method public onTransitionResume(Landroidx/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 173
    return-void
.end method

.method public onTransitionStart(Landroidx/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 151
    return-void
.end method
