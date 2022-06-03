.class Landroidx/transition/TransitionSet$TransitionSetListener;
.super Landroidx/transition/TransitionListenerAdapter;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/TransitionSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransitionSetListener"
.end annotation


# instance fields
.field mTransitionSet:Landroidx/transition/TransitionSet;


# direct methods
.method constructor <init>(Landroidx/transition/TransitionSet;)V
    .locals 4

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet$TransitionSetListener;
    move-object v1, p1

    .local v1, "transitionSet":Landroidx/transition/TransitionSet;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    .line 424
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroidx/transition/TransitionSet;

    .line 425
    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 6
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 437
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet$TransitionSetListener;
    move-object v1, p1

    .local v1, "transition":Landroidx/transition/Transition;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroidx/transition/TransitionSet;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroidx/transition/TransitionSet;->mCurrentListeners:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroidx/transition/TransitionSet;->mCurrentListeners:I

    .line 438
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroidx/transition/TransitionSet;

    iget v2, v2, Landroidx/transition/TransitionSet;->mCurrentListeners:I

    if-nez v2, :cond_0

    .line 440
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroidx/transition/TransitionSet;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/transition/TransitionSet;->mStarted:Z

    .line 441
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroidx/transition/TransitionSet;

    invoke-virtual {v2}, Landroidx/transition/TransitionSet;->end()V

    .line 443
    :cond_0
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    move-result-object v2

    .line 444
    return-void
.end method

.method public onTransitionStart(Landroidx/transition/Transition;)V
    .locals 4
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 429
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet$TransitionSetListener;
    move-object v1, p1

    .local v1, "transition":Landroidx/transition/Transition;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroidx/transition/TransitionSet;

    iget-boolean v2, v2, Landroidx/transition/TransitionSet;->mStarted:Z

    if-nez v2, :cond_0

    .line 430
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroidx/transition/TransitionSet;

    invoke-virtual {v2}, Landroidx/transition/TransitionSet;->start()V

    .line 431
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroidx/transition/TransitionSet;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/transition/TransitionSet;->mStarted:Z

    .line 433
    :cond_0
    return-void
.end method
