.class Landroidx/transition/TransitionManager$MultiListener;
.super Ljava/lang/Object;
.source "TransitionManager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/TransitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiListener"
.end annotation


# instance fields
.field mSceneRoot:Landroid/view/ViewGroup;

.field mTransition:Landroidx/transition/Transition;


# direct methods
.method constructor <init>(Landroidx/transition/Transition;Landroid/view/ViewGroup;)V
    .locals 5

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionManager$MultiListener;
    move-object v1, p1

    .local v1, "transition":Landroidx/transition/Transition;
    move-object v2, p2

    .local v2, "sceneRoot":Landroid/view/ViewGroup;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 234
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/transition/TransitionManager$MultiListener;->mTransition:Landroidx/transition/Transition;

    .line 235
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    .line 236
    return-void
.end method

.method private removeListeners()V
    .locals 3

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionManager$MultiListener;
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 240
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 241
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 12

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionManager$MultiListener;
    move-object v6, v0

    invoke-direct {v6}, Landroidx/transition/TransitionManager$MultiListener;->removeListeners()V

    .line 266
    sget-object v6, Landroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    move-object v7, v0

    iget-object v7, v7, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 267
    const/4 v6, 0x1

    move v0, v6

    .line 297
    .end local v0    # "this":Landroidx/transition/TransitionManager$MultiListener;
    .local v1, "runningTransitions":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroidx/transition/Transition;>;>;"
    .local v2, "currentTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition;>;"
    .local v3, "previousRunningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition;>;"
    :goto_0
    return v0

    .line 272
    .end local v1    # "runningTransitions":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroidx/transition/Transition;>;>;"
    .end local v2    # "currentTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition;>;"
    .end local v3    # "previousRunningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition;>;"
    .restart local v0    # "this":Landroidx/transition/TransitionManager$MultiListener;
    :cond_0
    invoke-static {}, Landroidx/transition/TransitionManager;->getRunningTransitions()Landroidx/collection/ArrayMap;

    move-result-object v6

    move-object v1, v6

    .line 273
    .restart local v1    # "runningTransitions":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroidx/transition/Transition;>;>;"
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    move-object v2, v6

    .line 274
    .restart local v2    # "currentTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition;>;"
    const/4 v6, 0x0

    move-object v3, v6

    .line 275
    .restart local v3    # "previousRunningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition;>;"
    move-object v6, v2

    if-nez v6, :cond_2

    .line 276
    new-instance v6, Ljava/util/ArrayList;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v6

    .line 277
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 281
    :cond_1
    :goto_1
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Landroidx/transition/TransitionManager$MultiListener;->mTransition:Landroidx/transition/Transition;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 282
    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/TransitionManager$MultiListener;->mTransition:Landroidx/transition/Transition;

    new-instance v7, Landroidx/transition/TransitionManager$MultiListener$1;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    move-object v10, v1

    invoke-direct {v8, v9, v10}, Landroidx/transition/TransitionManager$MultiListener$1;-><init>(Landroidx/transition/TransitionManager$MultiListener;Landroidx/collection/ArrayMap;)V

    invoke-virtual {v6, v7}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    move-result-object v6

    .line 289
    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/TransitionManager$MultiListener;->mTransition:Landroidx/transition/Transition;

    move-object v7, v0

    iget-object v7, v7, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroidx/transition/Transition;->captureValues(Landroid/view/ViewGroup;Z)V

    .line 290
    move-object v6, v3

    if-eqz v6, :cond_3

    .line 291
    move-object v6, v3

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_2
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/transition/Transition;

    move-object v5, v6

    .line 292
    .local v5, "runningTransition":Landroidx/transition/Transition;
    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7}, Landroidx/transition/Transition;->resume(Landroid/view/View;)V

    .line 293
    goto :goto_2

    .line 278
    .end local v5    # "runningTransition":Landroidx/transition/Transition;
    :cond_2
    move-object v6, v2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 279
    new-instance v6, Ljava/util/ArrayList;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v2

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v3, v6

    goto :goto_1

    .line 295
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/TransitionManager$MultiListener;->mTransition:Landroidx/transition/Transition;

    move-object v7, v0

    iget-object v7, v7, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7}, Landroidx/transition/Transition;->playTransition(Landroid/view/ViewGroup;)V

    .line 297
    const/4 v6, 0x1

    move v0, v6

    goto/16 :goto_0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 245
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionManager$MultiListener;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move-object v5, v0

    invoke-direct {v5}, Landroidx/transition/TransitionManager$MultiListener;->removeListeners()V

    .line 251
    sget-object v5, Landroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 252
    invoke-static {}, Landroidx/transition/TransitionManager;->getRunningTransitions()Landroidx/collection/ArrayMap;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    move-object v2, v5

    .line 253
    .local v2, "runningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition;>;"
    move-object v5, v2

    if-eqz v5, :cond_0

    move-object v5, v2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 254
    move-object v5, v2

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/Transition;

    move-object v4, v5

    .line 255
    .local v4, "runningTransition":Landroidx/transition/Transition;
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroidx/transition/Transition;->resume(Landroid/view/View;)V

    .line 256
    goto :goto_0

    .line 258
    .end local v4    # "runningTransition":Landroidx/transition/Transition;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/TransitionManager$MultiListener;->mTransition:Landroidx/transition/Transition;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/transition/Transition;->clearValues(Z)V

    .line 259
    return-void
.end method
