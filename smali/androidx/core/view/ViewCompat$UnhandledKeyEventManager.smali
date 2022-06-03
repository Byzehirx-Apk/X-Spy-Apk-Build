.class Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnhandledKeyEventManager"
.end annotation


# static fields
.field private static final sViewsWithListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mCapturedKeys:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLastDispatchedPreViewKeyEvent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mViewsContainingListeners:Ljava/util/WeakHashMap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 3515
    new-instance v0, Ljava/util/ArrayList;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 3511
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 3519
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    .line 3524
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mCapturedKeys:Landroid/util/SparseArray;

    .line 3530
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mLastDispatchedPreViewKeyEvent:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static at(Landroid/view/View;)Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;
    .locals 6

    .prologue
    .line 3540
    move-object v0, p0

    .local v0, "root":Landroid/view/View;
    move-object v2, v0

    sget v3, Landroidx/core/R$id;->tag_unhandled_key_event_manager:I

    .line 3541
    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;

    move-object v1, v2

    .line 3542
    .local v1, "manager":Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 3543
    new-instance v2, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;-><init>()V

    move-object v1, v2

    .line 3544
    move-object v2, v0

    sget v3, Landroidx/core/R$id;->tag_unhandled_key_event_manager:I

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 3546
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "root":Landroid/view/View;
    return-object v0
.end method

.method private dispatchInOrder(Landroid/view/View;Landroid/view/KeyEvent;)Landroid/view/View;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 3569
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, p2

    .local v2, "event":Landroid/view/KeyEvent;
    move-object v7, v0

    iget-object v7, v7, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 3570
    :cond_0
    const/4 v7, 0x0

    move-object v0, v7

    .line 3586
    .end local v0    # "this":Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;
    :goto_0
    return-object v0

    .line 3572
    .restart local v0    # "this":Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;
    :cond_1
    move-object v7, v1

    instance-of v7, v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_3

    .line 3573
    move-object v7, v1

    check-cast v7, Landroid/view/ViewGroup;

    move-object v3, v7

    .line 3575
    .local v3, "vg":Landroid/view/ViewGroup;
    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v4, v7

    .local v4, "i":I
    :goto_1
    move v7, v4

    if-ltz v7, :cond_3

    .line 3576
    move-object v7, v3

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v5, v7

    .line 3577
    .local v5, "v":Landroid/view/View;
    move-object v7, v0

    move-object v8, v5

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->dispatchInOrder(Landroid/view/View;Landroid/view/KeyEvent;)Landroid/view/View;

    move-result-object v7

    move-object v6, v7

    .line 3578
    .local v6, "consumer":Landroid/view/View;
    move-object v7, v6

    if-eqz v7, :cond_2

    .line 3579
    move-object v7, v6

    move-object v0, v7

    goto :goto_0

    .line 3575
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 3583
    .end local v3    # "vg":Landroid/view/ViewGroup;
    .end local v4    # "i":I
    .end local v5    # "v":Landroid/view/View;
    .end local v6    # "consumer":Landroid/view/View;
    :cond_3
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3584
    move-object v7, v1

    move-object v0, v7

    goto :goto_0

    .line 3586
    :cond_4
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_0
.end method

.method private getCapturedKeys()Landroid/util/SparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 3533
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mCapturedKeys:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 3534
    move-object v1, v0

    new-instance v2, Landroid/util/SparseArray;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v1, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mCapturedKeys:Landroid/util/SparseArray;

    .line 3536
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mCapturedKeys:Landroid/util/SparseArray;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;
    return-object v0
.end method

.method private onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3628
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move-object v2, p2

    .local v2, "event":Landroid/view/KeyEvent;
    move-object v5, v1

    sget v6, Landroidx/core/R$id;->tag_unhandled_key_listeners:I

    .line 3630
    invoke-virtual {v5, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    move-object v3, v5

    .line 3631
    .local v3, "viewListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;>;"
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 3632
    move-object v5, v3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    if-ltz v5, :cond_1

    .line 3633
    move-object v5, v3

    move v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;

    move-object v6, v1

    move-object v7, v2

    invoke-interface {v5, v6, v7}, Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;->onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3634
    const/4 v5, 0x1

    move v0, v5

    .line 3638
    .end local v0    # "this":Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;
    .end local v4    # "i":I
    :goto_1
    return v0

    .line 3632
    .restart local v0    # "this":Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;
    .restart local v4    # "i":I
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 3638
    .end local v4    # "i":I
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1
.end method

.method private recalcViewsWithUnhandled()V
    .locals 11

    .prologue
    .line 3668
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;
    move-object v7, v0

    iget-object v7, v7, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    if-eqz v7, :cond_0

    .line 3669
    move-object v7, v0

    iget-object v7, v7, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v7}, Ljava/util/WeakHashMap;->clear()V

    .line 3671
    :cond_0
    sget-object v7, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3672
    .line 3693
    :goto_0
    return-void

    .line 3674
    :cond_1
    sget-object v7, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v1, v8

    monitor-enter v7

    .line 3675
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    if-nez v7, :cond_2

    .line 3676
    move-object v7, v0

    new-instance v8, Ljava/util/WeakHashMap;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v8, v7, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    .line 3678
    :cond_2
    sget-object v7, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v2, v7

    .local v2, "i":I
    :goto_1
    move v7, v2

    if-ltz v7, :cond_5

    .line 3679
    sget-object v7, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    move v8, v2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    move-object v3, v7

    .line 3680
    .local v3, "vw":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    move-object v4, v7

    .line 3681
    .local v4, "v":Landroid/view/View;
    move-object v7, v4

    if-nez v7, :cond_4

    .line 3682
    sget-object v7, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    move v8, v2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    .line 3678
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3684
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    move-object v8, v4

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 3685
    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    move-object v5, v7

    .line 3686
    .local v5, "nxt":Landroid/view/ViewParent;
    :goto_2
    move-object v7, v5

    instance-of v7, v7, Landroid/view/View;

    if-eqz v7, :cond_3

    .line 3687
    move-object v7, v0

    iget-object v7, v7, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    move-object v8, v5

    check-cast v8, Landroid/view/View;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 3688
    move-object v7, v5

    invoke-interface {v7}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    move-object v5, v7

    goto :goto_2

    .line 3692
    .end local v3    # "vw":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    .end local v4    # "v":Landroid/view/View;
    .end local v5    # "nxt":Landroid/view/ViewParent;
    :cond_5
    move-object v7, v1

    monitor-exit v7

    .line 3693
    goto :goto_0

    .line 3692
    .end local v2    # "i":I
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v6

    throw v7
.end method

.method static registerListeningView(Landroid/view/View;)V
    .locals 10

    .prologue
    .line 3646
    move-object v0, p0

    .local v0, "v":Landroid/view/View;
    sget-object v5, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v1, v6

    monitor-enter v5

    .line 3647
    :try_start_0
    sget-object v5, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_0
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    move-object v3, v5

    .line 3648
    .local v3, "wv":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v0

    if-ne v5, v6, :cond_0

    .line 3649
    move-object v5, v1

    monitor-exit v5

    .line 3654
    .end local v3    # "wv":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    :goto_1
    return-void

    .line 3651
    .restart local v3    # "wv":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    :cond_0
    goto :goto_0

    .line 3652
    .end local v3    # "wv":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    :cond_1
    sget-object v5, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/ref/WeakReference;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 3653
    move-object v5, v1

    monitor-exit v5

    .line 3654
    goto :goto_1

    .line 3653
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method static unregisterListeningView(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 3657
    move-object v0, p0

    .local v0, "v":Landroid/view/View;
    sget-object v4, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v1, v5

    monitor-enter v4

    .line 3658
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    :try_start_0
    sget-object v5, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 3659
    sget-object v4, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v0

    if-ne v4, v5, :cond_0

    .line 3660
    sget-object v4, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    .line 3661
    move-object v4, v1

    monitor-exit v4

    .line 3665
    :goto_1
    return-void

    .line 3658
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3664
    :cond_1
    move-object v4, v1

    monitor-exit v4

    .line 3665
    goto :goto_1

    .line 3664
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method


# virtual methods
.method dispatch(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 11

    .prologue
    .line 3550
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;
    move-object v1, p1

    .local v1, "root":Landroid/view/View;
    move-object v2, p2

    .local v2, "event":Landroid/view/KeyEvent;
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_0

    .line 3551
    move-object v5, v0

    invoke-direct {v5}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->recalcViewsWithUnhandled()V

    .line 3554
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->dispatchInOrder(Landroid/view/View;Landroid/view/KeyEvent;)Landroid/view/View;

    move-result-object v5

    move-object v3, v5

    .line 3558
    .local v3, "consumer":Landroid/view/View;
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_1

    .line 3559
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    move v4, v5

    .line 3560
    .local v4, "keycode":I
    move-object v5, v3

    if-eqz v5, :cond_1

    move v5, v4

    invoke-static {v5}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3561
    move-object v5, v0

    invoke-direct {v5}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->getCapturedKeys()Landroid/util/SparseArray;

    move-result-object v5

    move v6, v4

    new-instance v7, Ljava/lang/ref/WeakReference;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v3

    invoke-direct {v8, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3564
    .end local v4    # "keycode":I
    :cond_1
    move-object v5, v3

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_0
    move v0, v5

    .end local v0    # "this":Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;
    return v0

    .restart local v0    # "this":Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method preDispatch(Landroid/view/KeyEvent;)Z
    .locals 10

    .prologue
    .line 3595
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;
    move-object v1, p1

    .local v1, "event":Landroid/view/KeyEvent;
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mLastDispatchedPreViewKeyEvent:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mLastDispatchedPreViewKeyEvent:Ljava/lang/ref/WeakReference;

    .line 3596
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v1

    if-ne v5, v6, :cond_0

    .line 3597
    const/4 v5, 0x0

    move v0, v5

    .line 3623
    .end local v0    # "this":Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;
    :goto_0
    return v0

    .line 3599
    .restart local v0    # "this":Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;
    :cond_0
    move-object v5, v0

    new-instance v6, Ljava/lang/ref/WeakReference;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-direct {v7, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, v5, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mLastDispatchedPreViewKeyEvent:Ljava/lang/ref/WeakReference;

    .line 3603
    const/4 v5, 0x0

    move-object v2, v5

    .line 3604
    .local v2, "currentReceiver":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    move-object v5, v0

    invoke-direct {v5}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->getCapturedKeys()Landroid/util/SparseArray;

    move-result-object v5

    move-object v3, v5

    .line 3605
    .local v3, "capturedKeys":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 3606
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    move v4, v5

    .line 3607
    .local v4, "idx":I
    move v5, v4

    if-ltz v5, :cond_1

    .line 3608
    move-object v5, v3

    move v6, v4

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    move-object v2, v5

    .line 3609
    move-object v5, v3

    move v6, v4

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3612
    .end local v4    # "idx":I
    :cond_1
    move-object v5, v2

    if-nez v5, :cond_2

    .line 3613
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    move-object v2, v5

    .line 3615
    :cond_2
    move-object v5, v2

    if-eqz v5, :cond_4

    .line 3616
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    move-object v4, v5

    .line 3617
    .local v4, "target":Landroid/view/View;
    move-object v5, v4

    if-eqz v5, :cond_3

    move-object v5, v4

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3618
    move-object v5, v0

    move-object v6, v4

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v5

    .line 3621
    :cond_3
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 3623
    .end local v4    # "target":Landroid/view/View;
    :cond_4
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method
