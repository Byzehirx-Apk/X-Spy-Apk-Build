.class public Landroidx/transition/TransitionManager;
.super Ljava/lang/Object;
.source "TransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/TransitionManager$MultiListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TransitionManager"

.field private static sDefaultTransition:Landroidx/transition/Transition;

.field static sPendingTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static sRunningTransitions:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroidx/collection/ArrayMap",
            "<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/transition/Transition;",
            ">;>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private mScenePairTransitions:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap",
            "<",
            "Landroidx/transition/Scene;",
            "Landroidx/collection/ArrayMap",
            "<",
            "Landroidx/transition/Scene;",
            "Landroidx/transition/Transition;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSceneTransitions:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap",
            "<",
            "Landroidx/transition/Scene;",
            "Landroidx/transition/Transition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 83
    new-instance v0, Landroidx/transition/AutoTransition;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/transition/AutoTransition;-><init>()V

    sput-object v0, Landroidx/transition/TransitionManager;->sDefaultTransition:Landroidx/transition/Transition;

    .line 88
    new-instance v0, Ljava/lang/ThreadLocal;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/transition/TransitionManager;->sRunningTransitions:Ljava/lang/ThreadLocal;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionManager;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 85
    move-object v1, v0

    new-instance v2, Landroidx/collection/ArrayMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v2, v1, Landroidx/transition/TransitionManager;->mSceneTransitions:Landroidx/collection/ArrayMap;

    .line 86
    move-object v1, v0

    new-instance v2, Landroidx/collection/ArrayMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v2, v1, Landroidx/transition/TransitionManager;->mScenePairTransitions:Landroidx/collection/ArrayMap;

    .line 226
    return-void
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;)V
    .locals 3
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 374
    move-object v0, p0

    .local v0, "sceneRoot":Landroid/view/ViewGroup;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 375
    return-void
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V
    .locals 5
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "sceneRoot":Landroid/view/ViewGroup;
    move-object v1, p1

    .local v1, "transition":Landroidx/transition/Transition;
    sget-object v3, Landroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v0

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 407
    sget-object v3, Landroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 408
    move-object v3, v1

    if-nez v3, :cond_0

    .line 409
    sget-object v3, Landroidx/transition/TransitionManager;->sDefaultTransition:Landroidx/transition/Transition;

    move-object v1, v3

    .line 411
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/transition/Transition;->clone()Landroidx/transition/Transition;

    move-result-object v3

    move-object v2, v3

    .line 412
    .local v2, "transitionClone":Landroidx/transition/Transition;
    move-object v3, v0

    move-object v4, v2

    invoke-static {v3, v4}, Landroidx/transition/TransitionManager;->sceneChangeSetup(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 413
    move-object v3, v0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroidx/transition/Scene;->setCurrentScene(Landroid/view/View;Landroidx/transition/Scene;)V

    .line 414
    move-object v3, v0

    move-object v4, v2

    invoke-static {v3, v4}, Landroidx/transition/TransitionManager;->sceneChangeRunTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 416
    .end local v2    # "transitionClone":Landroidx/transition/Transition;
    :cond_1
    return-void
.end method

.method private static changeScene(Landroidx/transition/Scene;Landroidx/transition/Transition;)V
    .locals 7

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "scene":Landroidx/transition/Scene;
    move-object v1, p1

    .local v1, "transition":Landroidx/transition/Transition;
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v5

    move-object v2, v5

    .line 171
    .local v2, "sceneRoot":Landroid/view/ViewGroup;
    sget-object v5, Landroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 172
    move-object v5, v1

    if-nez v5, :cond_1

    .line 173
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/transition/Scene;->enter()V

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    sget-object v5, Landroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 177
    move-object v5, v1

    invoke-virtual {v5}, Landroidx/transition/Transition;->clone()Landroidx/transition/Transition;

    move-result-object v5

    move-object v3, v5

    .line 178
    .local v3, "transitionClone":Landroidx/transition/Transition;
    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroidx/transition/Transition;->setSceneRoot(Landroid/view/ViewGroup;)Landroidx/transition/Transition;

    move-result-object v5

    .line 180
    move-object v5, v2

    invoke-static {v5}, Landroidx/transition/Scene;->getCurrentScene(Landroid/view/View;)Landroidx/transition/Scene;

    move-result-object v5

    move-object v4, v5

    .line 181
    .local v4, "oldScene":Landroidx/transition/Scene;
    move-object v5, v4

    if-eqz v5, :cond_2

    move-object v5, v4

    invoke-virtual {v5}, Landroidx/transition/Scene;->isCreatedFromLayoutResource()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 182
    move-object v5, v3

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/transition/Transition;->setCanRemoveViews(Z)V

    .line 185
    :cond_2
    move-object v5, v2

    move-object v6, v3

    invoke-static {v5, v6}, Landroidx/transition/TransitionManager;->sceneChangeSetup(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 187
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/transition/Scene;->enter()V

    .line 189
    move-object v5, v2

    move-object v6, v3

    invoke-static {v5, v6}, Landroidx/transition/TransitionManager;->sceneChangeRunTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    goto :goto_0
.end method

.method public static endTransitions(Landroid/view/ViewGroup;)V
    .locals 9

    .prologue
    .line 424
    move-object v0, p0

    .local v0, "sceneRoot":Landroid/view/ViewGroup;
    sget-object v5, Landroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 425
    invoke-static {}, Landroidx/transition/TransitionManager;->getRunningTransitions()Landroidx/collection/ArrayMap;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    move-object v1, v5

    .line 426
    .local v1, "runningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition;>;"
    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 428
    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v5

    .line 429
    .local v2, "copy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition;>;"
    move-object v5, v2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    if-ltz v5, :cond_0

    .line 430
    move-object v5, v2

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/Transition;

    move-object v4, v5

    .line 431
    .local v4, "transition":Landroidx/transition/Transition;
    move-object v5, v4

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroidx/transition/Transition;->forceToEnd(Landroid/view/ViewGroup;)V

    .line 429
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 434
    .end local v2    # "copy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition;>;"
    .end local v3    # "i":I
    .end local v4    # "transition":Landroidx/transition/Transition;
    :cond_0
    return-void
.end method

.method static getRunningTransitions()Landroidx/collection/ArrayMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/ArrayMap",
            "<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/transition/Transition;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 195
    sget-object v2, Landroidx/transition/TransitionManager;->sRunningTransitions:Ljava/lang/ThreadLocal;

    .line 196
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    move-object v0, v2

    .line 197
    .local v0, "runningTransitions":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/collection/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroidx/transition/Transition;>;>;>;"
    move-object v2, v0

    if-eqz v2, :cond_0

    .line 198
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/collection/ArrayMap;

    move-object v1, v2

    .line 199
    .local v1, "transitions":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroidx/transition/Transition;>;>;"
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 200
    move-object v2, v1

    move-object v0, v2

    .line 206
    .end local v0    # "runningTransitions":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/collection/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroidx/transition/Transition;>;>;>;"
    :goto_0
    return-object v0

    .line 203
    .end local v1    # "transitions":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroidx/transition/Transition;>;>;"
    .restart local v0    # "runningTransitions":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/collection/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroidx/transition/Transition;>;>;>;"
    :cond_0
    new-instance v2, Landroidx/collection/ArrayMap;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    move-object v1, v2

    .line 204
    .restart local v1    # "transitions":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroidx/transition/Transition;>;>;"
    new-instance v2, Ljava/lang/ref/WeakReference;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v0, v2

    .line 205
    sget-object v2, Landroidx/transition/TransitionManager;->sRunningTransitions:Ljava/lang/ThreadLocal;

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 206
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method private getTransition(Landroidx/transition/Scene;)Landroidx/transition/Transition;
    .locals 8

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionManager;
    move-object v1, p1

    .local v1, "scene":Landroidx/transition/Scene;
    move-object v6, v1

    invoke-virtual {v6}, Landroidx/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v6

    move-object v3, v6

    .line 140
    .local v3, "sceneRoot":Landroid/view/ViewGroup;
    move-object v6, v3

    if-eqz v6, :cond_0

    .line 142
    move-object v6, v3

    invoke-static {v6}, Landroidx/transition/Scene;->getCurrentScene(Landroid/view/View;)Landroidx/transition/Scene;

    move-result-object v6

    move-object v4, v6

    .line 143
    .local v4, "currScene":Landroidx/transition/Scene;
    move-object v6, v4

    if-eqz v6, :cond_0

    .line 144
    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/TransitionManager;->mScenePairTransitions:Landroidx/collection/ArrayMap;

    move-object v7, v1

    .line 145
    invoke-virtual {v6, v7}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/collection/ArrayMap;

    move-object v5, v6

    .line 146
    .local v5, "sceneTransitionMap":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroidx/transition/Scene;Landroidx/transition/Transition;>;"
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 147
    move-object v6, v5

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/transition/Transition;

    move-object v2, v6

    .line 148
    .local v2, "transition":Landroidx/transition/Transition;
    move-object v6, v2

    if-eqz v6, :cond_0

    .line 149
    move-object v6, v2

    move-object v0, v6

    .line 155
    .end local v0    # "this":Landroidx/transition/TransitionManager;
    .end local v4    # "currScene":Landroidx/transition/Scene;
    .end local v5    # "sceneTransitionMap":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroidx/transition/Scene;Landroidx/transition/Transition;>;"
    :goto_0
    return-object v0

    .line 154
    .end local v2    # "transition":Landroidx/transition/Transition;
    .restart local v0    # "this":Landroidx/transition/TransitionManager;
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/TransitionManager;->mSceneTransitions:Landroidx/collection/ArrayMap;

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/transition/Transition;

    move-object v2, v6

    .line 155
    .restart local v2    # "transition":Landroidx/transition/Transition;
    move-object v6, v2

    if-eqz v6, :cond_1

    move-object v6, v2

    :goto_1
    move-object v0, v6

    goto :goto_0

    :cond_1
    sget-object v6, Landroidx/transition/TransitionManager;->sDefaultTransition:Landroidx/transition/Transition;

    goto :goto_1
.end method

.method public static go(Landroidx/transition/Scene;)V
    .locals 3
    .param p0    # Landroidx/transition/Scene;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "scene":Landroidx/transition/Scene;
    move-object v1, v0

    sget-object v2, Landroidx/transition/TransitionManager;->sDefaultTransition:Landroidx/transition/Transition;

    invoke-static {v1, v2}, Landroidx/transition/TransitionManager;->changeScene(Landroidx/transition/Scene;Landroidx/transition/Transition;)V

    .line 344
    return-void
.end method

.method public static go(Landroidx/transition/Scene;Landroidx/transition/Transition;)V
    .locals 4
    .param p0    # Landroidx/transition/Scene;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 361
    move-object v0, p0

    .local v0, "scene":Landroidx/transition/Scene;
    move-object v1, p1

    .local v1, "transition":Landroidx/transition/Transition;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/transition/TransitionManager;->changeScene(Landroidx/transition/Scene;Landroidx/transition/Transition;)V

    .line 362
    return-void
.end method

.method private static sceneChangeRunTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V
    .locals 8

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "sceneRoot":Landroid/view/ViewGroup;
    move-object v1, p1

    .local v1, "transition":Landroidx/transition/Transition;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    if-eqz v3, :cond_0

    .line 212
    new-instance v3, Landroidx/transition/TransitionManager$MultiListener;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Landroidx/transition/TransitionManager$MultiListener;-><init>(Landroidx/transition/Transition;Landroid/view/ViewGroup;)V

    move-object v2, v3

    .line 213
    .local v2, "listener":Landroidx/transition/TransitionManager$MultiListener;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 214
    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 216
    .end local v2    # "listener":Landroidx/transition/TransitionManager$MultiListener;
    :cond_0
    return-void
.end method

.method private static sceneChangeSetup(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V
    .locals 8

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "sceneRoot":Landroid/view/ViewGroup;
    move-object v1, p1

    .local v1, "transition":Landroidx/transition/Transition;
    invoke-static {}, Landroidx/transition/TransitionManager;->getRunningTransitions()Landroidx/collection/ArrayMap;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    move-object v2, v5

    .line 305
    .local v2, "runningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition;>;"
    move-object v5, v2

    if-eqz v5, :cond_0

    move-object v5, v2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 306
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

    .line 307
    .local v4, "runningTransition":Landroidx/transition/Transition;
    move-object v5, v4

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroidx/transition/Transition;->pause(Landroid/view/View;)V

    .line 308
    goto :goto_0

    .line 311
    .end local v4    # "runningTransition":Landroidx/transition/Transition;
    :cond_0
    move-object v5, v1

    if-eqz v5, :cond_1

    .line 312
    move-object v5, v1

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroidx/transition/Transition;->captureValues(Landroid/view/ViewGroup;Z)V

    .line 316
    :cond_1
    move-object v5, v0

    invoke-static {v5}, Landroidx/transition/Scene;->getCurrentScene(Landroid/view/View;)Landroidx/transition/Scene;

    move-result-object v5

    move-object v3, v5

    .line 317
    .local v3, "previousScene":Landroidx/transition/Scene;
    move-object v5, v3

    if-eqz v5, :cond_2

    .line 318
    move-object v5, v3

    invoke-virtual {v5}, Landroidx/transition/Scene;->exit()V

    .line 320
    :cond_2
    return-void
.end method


# virtual methods
.method public setTransition(Landroidx/transition/Scene;Landroidx/transition/Scene;Landroidx/transition/Transition;)V
    .locals 9
    .param p1    # Landroidx/transition/Scene;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/transition/Scene;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionManager;
    move-object v1, p1

    .local v1, "fromScene":Landroidx/transition/Scene;
    move-object v2, p2

    .local v2, "toScene":Landroidx/transition/Scene;
    move-object v3, p3

    .local v3, "transition":Landroidx/transition/Transition;
    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/TransitionManager;->mScenePairTransitions:Landroidx/collection/ArrayMap;

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/collection/ArrayMap;

    move-object v4, v5

    .line 120
    .local v4, "sceneTransitionMap":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroidx/transition/Scene;Landroidx/transition/Transition;>;"
    move-object v5, v4

    if-nez v5, :cond_0

    .line 121
    new-instance v5, Landroidx/collection/ArrayMap;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroidx/collection/ArrayMap;-><init>()V

    move-object v4, v5

    .line 122
    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/TransitionManager;->mScenePairTransitions:Landroidx/collection/ArrayMap;

    move-object v6, v2

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 124
    :cond_0
    move-object v5, v4

    move-object v6, v1

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 125
    return-void
.end method

.method public setTransition(Landroidx/transition/Scene;Landroidx/transition/Transition;)V
    .locals 6
    .param p1    # Landroidx/transition/Scene;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionManager;
    move-object v1, p1

    .local v1, "scene":Landroidx/transition/Scene;
    move-object v2, p2

    .local v2, "transition":Landroidx/transition/Transition;
    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/TransitionManager;->mSceneTransitions:Landroidx/collection/ArrayMap;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 103
    return-void
.end method

.method public transitionTo(Landroidx/transition/Scene;)V
    .locals 5
    .param p1    # Landroidx/transition/Scene;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionManager;
    move-object v1, p1

    .local v1, "scene":Landroidx/transition/Scene;
    move-object v2, v1

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/transition/TransitionManager;->getTransition(Landroidx/transition/Scene;)Landroidx/transition/Transition;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/transition/TransitionManager;->changeScene(Landroidx/transition/Scene;Landroidx/transition/Transition;)V

    .line 334
    return-void
.end method
