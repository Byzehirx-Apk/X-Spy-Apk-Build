.class Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
.super Landroidx/lifecycle/LiveData$ObserverWrapper;
.source "LiveData.java"

# interfaces
.implements Landroidx/lifecycle/GenericLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LifecycleBoundObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData",
        "<TT;>.ObserverWrapper;",
        "Landroidx/lifecycle/GenericLifecycleObserver;"
    }
.end annotation


# instance fields
.field final mOwner:Landroidx/lifecycle/LifecycleOwner;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final synthetic this$0:Landroidx/lifecycle/LiveData;


# direct methods
.method constructor <init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 7
    .param p1    # Landroidx/lifecycle/LiveData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 360
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/LiveData$LifecycleBoundObserver;, "Landroidx/lifecycle/LiveData<TT;>.LifecycleBoundObserver;"
    move-object v1, p1

    .local v1, "this$0":Landroidx/lifecycle/LiveData;
    move-object v2, p2

    .local v2, "owner":Landroidx/lifecycle/LifecycleOwner;
    move-object v3, p3

    .local v3, "observer":Landroidx/lifecycle/Observer;, "Landroidx/lifecycle/Observer<-TT;>;"
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->this$0:Landroidx/lifecycle/LiveData;

    .line 361
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Landroidx/lifecycle/LiveData$ObserverWrapper;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 362
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->mOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 363
    return-void
.end method


# virtual methods
.method detachObserver()V
    .locals 3

    .prologue
    .line 386
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/LiveData$LifecycleBoundObserver;, "Landroidx/lifecycle/LiveData<TT;>.LifecycleBoundObserver;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->mOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {v1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 387
    return-void
.end method

.method isAttachedTo(Landroidx/lifecycle/LifecycleOwner;)Z
    .locals 4

    .prologue
    .line 381
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/LiveData$LifecycleBoundObserver;, "Landroidx/lifecycle/LiveData<TT;>.LifecycleBoundObserver;"
    move-object v1, p1

    .local v1, "owner":Landroidx/lifecycle/LifecycleOwner;
    move-object v2, v0

    iget-object v2, v2, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->mOwner:Landroidx/lifecycle/LifecycleOwner;

    move-object v3, v1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/lifecycle/LiveData$LifecycleBoundObserver;, "Landroidx/lifecycle/LiveData<TT;>.LifecycleBoundObserver;"
    return v0

    .restart local v0    # "this":Landroidx/lifecycle/LiveData$LifecycleBoundObserver;, "Landroidx/lifecycle/LiveData<TT;>.LifecycleBoundObserver;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 5

    .prologue
    .line 372
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/LiveData$LifecycleBoundObserver;, "Landroidx/lifecycle/LiveData<TT;>.LifecycleBoundObserver;"
    move-object v1, p1

    .local v1, "source":Landroidx/lifecycle/LifecycleOwner;
    move-object v2, p2

    .local v2, "event":Landroidx/lifecycle/Lifecycle$Event;
    move-object v3, v0

    iget-object v3, v3, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->mOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {v3}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v3

    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v3, v4, :cond_0

    .line 373
    move-object v3, v0

    iget-object v3, v3, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->this$0:Landroidx/lifecycle/LiveData;

    move-object v4, v0

    iget-object v4, v4, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->mObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 374
    .line 377
    :goto_0
    return-void

    .line 376
    :cond_0
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->shouldBeActive()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->activeStateChanged(Z)V

    .line 377
    goto :goto_0
.end method

.method shouldBeActive()Z
    .locals 3

    .prologue
    .line 367
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/LiveData$LifecycleBoundObserver;, "Landroidx/lifecycle/LiveData<TT;>.LifecycleBoundObserver;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->mOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {v1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/lifecycle/LiveData$LifecycleBoundObserver;, "Landroidx/lifecycle/LiveData<TT;>.LifecycleBoundObserver;"
    return v0
.end method
