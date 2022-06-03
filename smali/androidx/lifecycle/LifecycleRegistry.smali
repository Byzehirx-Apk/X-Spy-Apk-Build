.class public Landroidx/lifecycle/LifecycleRegistry;
.super Landroidx/lifecycle/Lifecycle;
.source "LifecycleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LifecycleRegistry"


# instance fields
.field private mAddingObserverCounter:I

.field private mHandlingEvent:Z

.field private final mLifecycleOwner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroidx/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation
.end field

.field private mNewEventOccurred:Z

.field private mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/arch/core/internal/FastSafeIterableMap",
            "<",
            "Landroidx/lifecycle/LifecycleObserver;",
            "Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;",
            ">;"
        }
    .end annotation
.end field

.field private mParentStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/lifecycle/Lifecycle$State;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Landroidx/lifecycle/Lifecycle$State;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 7
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/LifecycleRegistry;
    move-object v1, p1

    .local v1, "provider":Landroidx/lifecycle/LifecycleOwner;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/lifecycle/Lifecycle;-><init>()V

    .line 60
    move-object v2, v0

    new-instance v3, Landroidx/arch/core/internal/FastSafeIterableMap;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroidx/arch/core/internal/FastSafeIterableMap;-><init>()V

    iput-object v3, v2, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    .line 75
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    .line 77
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    .line 78
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    .line 88
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    .line 99
    move-object v2, v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Landroidx/lifecycle/LifecycleRegistry;->mLifecycleOwner:Ljava/lang/ref/WeakReference;

    .line 100
    move-object v2, v0

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    iput-object v3, v2, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 101
    return-void
.end method

.method private backwardPass(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 9

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/LifecycleRegistry;
    move-object v1, p1

    .local v1, "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    move-object v6, v0

    iget-object v6, v6, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    .line 301
    invoke-virtual {v6}, Landroidx/arch/core/internal/FastSafeIterableMap;->descendingIterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v6

    .line 302
    .local v2, "descendingIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroidx/lifecycle/LifecycleObserver;Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;>;>;"
    :goto_0
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v6, :cond_1

    .line 303
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    move-object v3, v6

    .line 304
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/lifecycle/LifecycleObserver;Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;>;"
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    move-object v4, v6

    .line 305
    .local v4, "observer":Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;
    :goto_1
    move-object v6, v4

    iget-object v6, v6, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    move-object v7, v0

    iget-object v7, v7, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v6, v7}, Landroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v6

    if-lez v6, :cond_0

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    move-object v7, v3

    .line 306
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/arch/core/internal/FastSafeIterableMap;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 307
    move-object v6, v4

    iget-object v6, v6, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v6}, Landroidx/lifecycle/LifecycleRegistry;->downEvent(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v6

    move-object v5, v6

    .line 308
    .local v5, "event":Landroidx/lifecycle/Lifecycle$Event;
    move-object v6, v0

    move-object v7, v5

    invoke-static {v7}, Landroidx/lifecycle/LifecycleRegistry;->getStateAfter(Landroidx/lifecycle/Lifecycle$Event;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object v7

    invoke-direct {v6, v7}, Landroidx/lifecycle/LifecycleRegistry;->pushParentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 309
    move-object v6, v4

    move-object v7, v1

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->dispatchEvent(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 310
    move-object v6, v0

    invoke-direct {v6}, Landroidx/lifecycle/LifecycleRegistry;->popParentState()V

    .line 311
    goto :goto_1

    .line 312
    .end local v5    # "event":Landroidx/lifecycle/Lifecycle$Event;
    :cond_0
    goto :goto_0

    .line 313
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/lifecycle/LifecycleObserver;Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;>;"
    .end local v4    # "observer":Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;
    :cond_1
    return-void
.end method

.method private calculateTargetState(Landroidx/lifecycle/LifecycleObserver;)Landroidx/lifecycle/Lifecycle$State;
    .locals 8

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/LifecycleRegistry;
    move-object v1, p1

    .local v1, "observer":Landroidx/lifecycle/LifecycleObserver;
    move-object v5, v0

    iget-object v5, v5, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/arch/core/internal/FastSafeIterableMap;->ceil(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    move-object v2, v5

    .line 154
    .local v2, "previous":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/lifecycle/LifecycleObserver;Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;>;"
    move-object v5, v2

    if-eqz v5, :cond_0

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v5, v5, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    :goto_0
    move-object v3, v5

    .line 155
    .local v3, "siblingState":Landroidx/lifecycle/Lifecycle$State;
    move-object v5, v0

    iget-object v5, v5, Landroidx/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Landroidx/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    move-object v6, v0

    iget-object v6, v6, Landroidx/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/lifecycle/Lifecycle$State;

    :goto_1
    move-object v4, v5

    .line 157
    .local v4, "parentState":Landroidx/lifecycle/Lifecycle$State;
    move-object v5, v0

    iget-object v5, v5, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    move-object v6, v3

    invoke-static {v5, v6}, Landroidx/lifecycle/LifecycleRegistry;->min(Landroidx/lifecycle/Lifecycle$State;Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object v5

    move-object v6, v4

    invoke-static {v5, v6}, Landroidx/lifecycle/LifecycleRegistry;->min(Landroidx/lifecycle/Lifecycle$State;Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Landroidx/lifecycle/LifecycleRegistry;
    return-object v0

    .line 154
    .end local v3    # "siblingState":Landroidx/lifecycle/Lifecycle$State;
    .end local v4    # "parentState":Landroidx/lifecycle/Lifecycle$State;
    .restart local v0    # "this":Landroidx/lifecycle/LifecycleRegistry;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 155
    .restart local v3    # "siblingState":Landroidx/lifecycle/Lifecycle$State;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private static downEvent(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;
    .locals 6

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "state":Landroidx/lifecycle/Lifecycle$State;
    sget-object v1, Landroidx/lifecycle/LifecycleRegistry$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 266
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected state value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 256
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 258
    :pswitch_1
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    move-object v0, v1

    .line 262
    .end local v0    # "state":Landroidx/lifecycle/Lifecycle$State;
    :goto_0
    return-object v0

    .line 260
    .restart local v0    # "state":Landroidx/lifecycle/Lifecycle$State;
    :pswitch_2
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    move-object v0, v1

    goto :goto_0

    .line 262
    :pswitch_3
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    move-object v0, v1

    goto :goto_0

    .line 264
    :pswitch_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 254
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private forwardPass(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 8

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/LifecycleRegistry;
    move-object v1, p1

    .local v1, "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    move-object v5, v0

    iget-object v5, v5, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    .line 286
    invoke-virtual {v5}, Landroidx/arch/core/internal/FastSafeIterableMap;->iteratorWithAdditions()Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;

    move-result-object v5

    move-object v2, v5

    .line 287
    .local v2, "ascendingIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroidx/lifecycle/LifecycleObserver;Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;>;>;"
    :goto_0
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v5, :cond_1

    .line 288
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    move-object v3, v5

    .line 289
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/lifecycle/LifecycleObserver;Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;>;"
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    move-object v4, v5

    .line 290
    .local v4, "observer":Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;
    :goto_1
    move-object v5, v4

    iget-object v5, v5, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    move-object v6, v0

    iget-object v6, v6, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v5, v6}, Landroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-gez v5, :cond_0

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    move-object v6, v3

    .line 291
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/arch/core/internal/FastSafeIterableMap;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 292
    move-object v5, v0

    move-object v6, v4

    iget-object v6, v6, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-direct {v5, v6}, Landroidx/lifecycle/LifecycleRegistry;->pushParentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 293
    move-object v5, v4

    move-object v6, v1

    move-object v7, v4

    iget-object v7, v7, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v7}, Landroidx/lifecycle/LifecycleRegistry;->upEvent(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->dispatchEvent(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 294
    move-object v5, v0

    invoke-direct {v5}, Landroidx/lifecycle/LifecycleRegistry;->popParentState()V

    goto :goto_1

    .line 296
    :cond_0
    goto :goto_0

    .line 297
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/lifecycle/LifecycleObserver;Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;>;"
    .end local v4    # "observer":Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;
    :cond_1
    return-void
.end method

.method static getStateAfter(Landroidx/lifecycle/Lifecycle$Event;)Landroidx/lifecycle/Lifecycle$State;
    .locals 6

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "event":Landroidx/lifecycle/Lifecycle$Event;
    sget-object v1, Landroidx/lifecycle/LifecycleRegistry$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 250
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected event value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 239
    :pswitch_0
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    move-object v0, v1

    .line 246
    .end local v0    # "event":Landroidx/lifecycle/Lifecycle$Event;
    :goto_0
    return-object v0

    .line 242
    .restart local v0    # "event":Landroidx/lifecycle/Lifecycle$Event;
    :pswitch_1
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    move-object v0, v1

    goto :goto_0

    .line 244
    :pswitch_2
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    move-object v0, v1

    goto :goto_0

    .line 246
    :pswitch_3
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    move-object v0, v1

    goto :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isSynced()Z
    .locals 5

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/LifecycleRegistry;
    move-object v3, v0

    iget-object v3, v3, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v3}, Landroidx/arch/core/internal/FastSafeIterableMap;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 144
    const/4 v3, 0x1

    move v0, v3

    .line 148
    .end local v0    # "this":Landroidx/lifecycle/LifecycleRegistry;
    .local v1, "eldestObserverState":Landroidx/lifecycle/Lifecycle$State;
    .local v2, "newestObserverState":Landroidx/lifecycle/Lifecycle$State;
    :goto_0
    return v0

    .line 146
    .end local v1    # "eldestObserverState":Landroidx/lifecycle/Lifecycle$State;
    .end local v2    # "newestObserverState":Landroidx/lifecycle/Lifecycle$State;
    .restart local v0    # "this":Landroidx/lifecycle/LifecycleRegistry;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v3}, Landroidx/arch/core/internal/FastSafeIterableMap;->eldest()Ljava/util/Map$Entry;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v3, v3, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    move-object v1, v3

    .line 147
    .restart local v1    # "eldestObserverState":Landroidx/lifecycle/Lifecycle$State;
    move-object v3, v0

    iget-object v3, v3, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v3}, Landroidx/arch/core/internal/FastSafeIterableMap;->newest()Ljava/util/Map$Entry;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v3, v3, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    move-object v2, v3

    .line 148
    .restart local v2    # "newestObserverState":Landroidx/lifecycle/Lifecycle$State;
    move-object v3, v1

    move-object v4, v2

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget-object v3, v3, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    move-object v4, v2

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method static min(Landroidx/lifecycle/Lifecycle$State;Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$State;
    .locals 4
    .param p0    # Landroidx/lifecycle/Lifecycle$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/lifecycle/Lifecycle$State;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "state1":Landroidx/lifecycle/Lifecycle$State;
    move-object v1, p1

    .local v1, "state2":Landroidx/lifecycle/Lifecycle$State;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-gez v2, :cond_0

    move-object v2, v1

    :goto_0
    move-object v0, v2

    .end local v0    # "state1":Landroidx/lifecycle/Lifecycle$State;
    return-object v0

    .restart local v0    # "state1":Landroidx/lifecycle/Lifecycle$State;
    :cond_0
    move-object v2, v0

    goto :goto_0
.end method

.method private moveToState(Landroidx/lifecycle/Lifecycle$State;)V
    .locals 4

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/LifecycleRegistry;
    move-object v1, p1

    .local v1, "next":Landroidx/lifecycle/Lifecycle$State;
    move-object v2, v0

    iget-object v2, v2, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    move-object v3, v1

    if-ne v2, v3, :cond_0

    .line 129
    .line 140
    :goto_0
    return-void

    .line 131
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 132
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    if-nez v2, :cond_1

    move-object v2, v0

    iget v2, v2, Landroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    if-eqz v2, :cond_2

    .line 133
    :cond_1
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    .line 135
    goto :goto_0

    .line 137
    :cond_2
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    .line 138
    move-object v2, v0

    invoke-direct {v2}, Landroidx/lifecycle/LifecycleRegistry;->sync()V

    .line 139
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    .line 140
    goto :goto_0
.end method

.method private popParentState()V
    .locals 4

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/LifecycleRegistry;
    move-object v1, v0

    iget-object v1, v1, Landroidx/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    move-object v2, v0

    iget-object v2, v2, Landroidx/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .line 196
    return-void
.end method

.method private pushParentState(Landroidx/lifecycle/Lifecycle$State;)V
    .locals 4

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/LifecycleRegistry;
    move-object v1, p1

    .local v1, "state":Landroidx/lifecycle/Lifecycle$State;
    move-object v2, v0

    iget-object v2, v2, Landroidx/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 200
    return-void
.end method

.method private sync()V
    .locals 5

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/LifecycleRegistry;
    move-object v3, v0

    iget-object v3, v3, Landroidx/lifecycle/LifecycleRegistry;->mLifecycleOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/LifecycleOwner;

    move-object v1, v3

    .line 319
    .local v1, "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 320
    const-string/jumbo v3, "LifecycleRegistry"

    const-string/jumbo v4, "LifecycleOwner is garbage collected, you shouldn\'t try dispatch new events from it."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 322
    .line 337
    :goto_0
    return-void

    .line 324
    :cond_0
    :goto_1
    move-object v3, v0

    invoke-direct {v3}, Landroidx/lifecycle/LifecycleRegistry;->isSynced()Z

    move-result v3

    if-nez v3, :cond_3

    .line 325
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    .line 327
    move-object v3, v0

    iget-object v3, v3, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    move-object v4, v0

    iget-object v4, v4, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v4}, Landroidx/arch/core/internal/FastSafeIterableMap;->eldest()Ljava/util/Map$Entry;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v4, v4, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_1

    .line 328
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/lifecycle/LifecycleRegistry;->backwardPass(Landroidx/lifecycle/LifecycleOwner;)V

    .line 330
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v3}, Landroidx/arch/core/internal/FastSafeIterableMap;->newest()Ljava/util/Map$Entry;

    move-result-object v3

    move-object v2, v3

    .line 331
    .local v2, "newest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/lifecycle/LifecycleObserver;Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;>;"
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v3, :cond_2

    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    move-object v4, v2

    .line 332
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v4, v4, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-lez v3, :cond_2

    .line 333
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/lifecycle/LifecycleRegistry;->forwardPass(Landroidx/lifecycle/LifecycleOwner;)V

    .line 335
    :cond_2
    goto :goto_1

    .line 336
    .end local v2    # "newest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/lifecycle/LifecycleObserver;Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;>;"
    :cond_3
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    .line 337
    goto :goto_0
.end method

.method private static upEvent(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;
    .locals 6

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "state":Landroidx/lifecycle/Lifecycle$State;
    sget-object v1, Landroidx/lifecycle/LifecycleRegistry$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 281
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected state value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 273
    :pswitch_0
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    move-object v0, v1

    .line 277
    .end local v0    # "state":Landroidx/lifecycle/Lifecycle$State;
    :goto_0
    return-object v0

    .line 275
    .restart local v0    # "state":Landroidx/lifecycle/Lifecycle$State;
    :pswitch_1
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    move-object v0, v1

    goto :goto_0

    .line 277
    :pswitch_2
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    move-object v0, v1

    goto :goto_0

    .line 279
    :pswitch_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addObserver(Landroidx/lifecycle/LifecycleObserver;)V
    .locals 13
    .param p1    # Landroidx/lifecycle/LifecycleObserver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/LifecycleRegistry;
    move-object v1, p1

    .local v1, "observer":Landroidx/lifecycle/LifecycleObserver;
    move-object v8, v0

    iget-object v8, v8, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    sget-object v9, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v8, v9, :cond_0

    sget-object v8, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    :goto_0
    move-object v2, v8

    .line 163
    .local v2, "initialState":Landroidx/lifecycle/Lifecycle$State;
    new-instance v8, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v1

    move-object v11, v2

    invoke-direct {v9, v10, v11}, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;-><init>(Landroidx/lifecycle/LifecycleObserver;Landroidx/lifecycle/Lifecycle$State;)V

    move-object v3, v8

    .line 164
    .local v3, "statefulObserver":Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;
    move-object v8, v0

    iget-object v8, v8, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    move-object v9, v1

    move-object v10, v3

    invoke-virtual {v8, v9, v10}, Landroidx/arch/core/internal/FastSafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    move-object v4, v8

    .line 166
    .local v4, "previous":Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;
    move-object v8, v4

    if-eqz v8, :cond_1

    .line 167
    .line 192
    :goto_1
    return-void

    .line 162
    .end local v2    # "initialState":Landroidx/lifecycle/Lifecycle$State;
    .end local v3    # "statefulObserver":Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;
    .end local v4    # "previous":Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;
    :cond_0
    sget-object v8, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    goto :goto_0

    .line 169
    .restart local v2    # "initialState":Landroidx/lifecycle/Lifecycle$State;
    .restart local v3    # "statefulObserver":Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;
    .restart local v4    # "previous":Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Landroidx/lifecycle/LifecycleRegistry;->mLifecycleOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/lifecycle/LifecycleOwner;

    move-object v5, v8

    .line 170
    .local v5, "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    move-object v8, v5

    if-nez v8, :cond_2

    .line 172
    goto :goto_1

    .line 175
    :cond_2
    move-object v8, v0

    iget v8, v8, Landroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    if-nez v8, :cond_3

    move-object v8, v0

    iget-boolean v8, v8, Landroidx/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    if-eqz v8, :cond_4

    :cond_3
    const/4 v8, 0x1

    :goto_2
    move v6, v8

    .line 176
    .local v6, "isReentrance":Z
    move-object v8, v0

    move-object v9, v1

    invoke-direct {v8, v9}, Landroidx/lifecycle/LifecycleRegistry;->calculateTargetState(Landroidx/lifecycle/LifecycleObserver;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object v8

    move-object v7, v8

    .line 177
    .local v7, "targetState":Landroidx/lifecycle/Lifecycle$State;
    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Landroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    .line 178
    :goto_3
    move-object v8, v3

    iget-object v8, v8, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v8

    if-gez v8, :cond_5

    move-object v8, v0

    iget-object v8, v8, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    move-object v9, v1

    .line 179
    invoke-virtual {v8, v9}, Landroidx/arch/core/internal/FastSafeIterableMap;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 180
    move-object v8, v0

    move-object v9, v3

    iget-object v9, v9, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-direct {v8, v9}, Landroidx/lifecycle/LifecycleRegistry;->pushParentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 181
    move-object v8, v3

    move-object v9, v5

    move-object v10, v3

    iget-object v10, v10, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v10}, Landroidx/lifecycle/LifecycleRegistry;->upEvent(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->dispatchEvent(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 182
    move-object v8, v0

    invoke-direct {v8}, Landroidx/lifecycle/LifecycleRegistry;->popParentState()V

    .line 184
    move-object v8, v0

    move-object v9, v1

    invoke-direct {v8, v9}, Landroidx/lifecycle/LifecycleRegistry;->calculateTargetState(Landroidx/lifecycle/LifecycleObserver;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object v8

    move-object v7, v8

    goto :goto_3

    .line 175
    .end local v6    # "isReentrance":Z
    .end local v7    # "targetState":Landroidx/lifecycle/Lifecycle$State;
    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    .line 187
    .restart local v6    # "isReentrance":Z
    .restart local v7    # "targetState":Landroidx/lifecycle/Lifecycle$State;
    :cond_5
    move v8, v6

    if-nez v8, :cond_6

    .line 189
    move-object v8, v0

    invoke-direct {v8}, Landroidx/lifecycle/LifecycleRegistry;->sync()V

    .line 191
    :cond_6
    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Landroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Landroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    .line 192
    goto :goto_1
.end method

.method public getCurrentState()Landroidx/lifecycle/Lifecycle$State;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/LifecycleRegistry;
    move-object v1, v0

    iget-object v1, v1, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    move-object v0, v1

    .end local v0    # "this":Landroidx/lifecycle/LifecycleRegistry;
    return-object v0
.end method

.method public getObserverCount()I
    .locals 2

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/LifecycleRegistry;
    move-object v1, v0

    iget-object v1, v1, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v1}, Landroidx/arch/core/internal/FastSafeIterableMap;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/lifecycle/LifecycleRegistry;
    return v0
.end method

.method public handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 5
    .param p1    # Landroidx/lifecycle/Lifecycle$Event;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/LifecycleRegistry;
    move-object v1, p1

    .local v1, "event":Landroidx/lifecycle/Lifecycle$Event;
    move-object v3, v1

    invoke-static {v3}, Landroidx/lifecycle/LifecycleRegistry;->getStateAfter(Landroidx/lifecycle/Lifecycle$Event;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object v3

    move-object v2, v3

    .line 124
    .local v2, "next":Landroidx/lifecycle/Lifecycle$State;
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroidx/lifecycle/LifecycleRegistry;->moveToState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 125
    return-void
.end method

.method public markState(Landroidx/lifecycle/Lifecycle$State;)V
    .locals 4
    .param p1    # Landroidx/lifecycle/Lifecycle$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/LifecycleRegistry;
    move-object v1, p1

    .local v1, "state":Landroidx/lifecycle/Lifecycle$State;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/lifecycle/LifecycleRegistry;->moveToState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 112
    return-void
.end method

.method public removeObserver(Landroidx/lifecycle/LifecycleObserver;)V
    .locals 4
    .param p1    # Landroidx/lifecycle/LifecycleObserver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/LifecycleRegistry;
    move-object v1, p1

    .local v1, "observer":Landroidx/lifecycle/LifecycleObserver;
    move-object v2, v0

    iget-object v2, v2, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/arch/core/internal/FastSafeIterableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 217
    return-void
.end method
