.class Landroidx/transition/TransitionSet$1;
.super Landroidx/transition/TransitionListenerAdapter;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/TransitionSet;->runAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/transition/TransitionSet;

.field final synthetic val$nextTransition:Landroidx/transition/Transition;


# direct methods
.method constructor <init>(Landroidx/transition/TransitionSet;Landroidx/transition/Transition;)V
    .locals 5

    .prologue
    .line 493
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/transition/TransitionSet;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/transition/TransitionSet$1;->this$0:Landroidx/transition/TransitionSet;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/transition/TransitionSet$1;->val$nextTransition:Landroidx/transition/Transition;

    move-object v3, v0

    invoke-direct {v3}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 4
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 496
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet$1;
    move-object v1, p1

    .local v1, "transition":Landroidx/transition/Transition;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/TransitionSet$1;->val$nextTransition:Landroidx/transition/Transition;

    invoke-virtual {v2}, Landroidx/transition/Transition;->runAnimators()V

    .line 497
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    move-result-object v2

    .line 498
    return-void
.end method
