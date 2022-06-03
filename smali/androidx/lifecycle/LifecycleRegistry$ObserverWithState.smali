.class Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;
.super Ljava/lang/Object;
.source "LifecycleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LifecycleRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ObserverWithState"
.end annotation


# instance fields
.field mLifecycleObserver:Landroidx/lifecycle/GenericLifecycleObserver;

.field mState:Landroidx/lifecycle/Lifecycle$State;


# direct methods
.method constructor <init>(Landroidx/lifecycle/LifecycleObserver;Landroidx/lifecycle/Lifecycle$State;)V
    .locals 5

    .prologue
    .line 347
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;
    move-object v1, p1

    .local v1, "observer":Landroidx/lifecycle/LifecycleObserver;
    move-object v2, p2

    .local v2, "initialState":Landroidx/lifecycle/Lifecycle$State;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 348
    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Landroidx/lifecycle/Lifecycling;->getCallback(Ljava/lang/Object;)Landroidx/lifecycle/GenericLifecycleObserver;

    move-result-object v4

    iput-object v4, v3, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mLifecycleObserver:Landroidx/lifecycle/GenericLifecycleObserver;

    .line 349
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 350
    return-void
.end method


# virtual methods
.method dispatchEvent(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 7

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;
    move-object v1, p1

    .local v1, "owner":Landroidx/lifecycle/LifecycleOwner;
    move-object v2, p2

    .local v2, "event":Landroidx/lifecycle/Lifecycle$Event;
    move-object v4, v2

    invoke-static {v4}, Landroidx/lifecycle/LifecycleRegistry;->getStateAfter(Landroidx/lifecycle/Lifecycle$Event;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object v4

    move-object v3, v4

    .line 354
    .local v3, "newState":Landroidx/lifecycle/Lifecycle$State;
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    move-object v6, v3

    invoke-static {v5, v6}, Landroidx/lifecycle/LifecycleRegistry;->min(Landroidx/lifecycle/Lifecycle$State;Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object v5

    iput-object v5, v4, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 355
    move-object v4, v0

    iget-object v4, v4, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mLifecycleObserver:Landroidx/lifecycle/GenericLifecycleObserver;

    move-object v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Landroidx/lifecycle/GenericLifecycleObserver;->onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 356
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 357
    return-void
.end method
