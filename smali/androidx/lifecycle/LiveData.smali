.class public abstract Landroidx/lifecycle/LiveData;
.super Ljava/lang/Object;
.source "LiveData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/LiveData$AlwaysActiveObserver;,
        Landroidx/lifecycle/LiveData$ObserverWrapper;,
        Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final NOT_SET:Ljava/lang/Object;

.field static final START_VERSION:I = -0x1


# instance fields
.field mActiveCount:I

.field private volatile mData:Ljava/lang/Object;

.field final mDataLock:Ljava/lang/Object;

.field private mDispatchInvalidated:Z

.field private mDispatchingValue:Z

.field private mObservers:Landroidx/arch/core/internal/SafeIterableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/arch/core/internal/SafeIterableMap",
            "<",
            "Landroidx/lifecycle/Observer",
            "<-TT;>;",
            "Landroidx/lifecycle/LiveData",
            "<TT;>.ObserverWrapper;>;"
        }
    .end annotation
.end field

.field volatile mPendingData:Ljava/lang/Object;

.field private final mPostValueRunnable:Ljava/lang/Runnable;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 60
    move-object v1, v0

    new-instance v2, Ljava/lang/Object;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Landroidx/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    .line 66
    move-object v1, v0

    new-instance v2, Landroidx/arch/core/internal/SafeIterableMap;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Landroidx/arch/core/internal/SafeIterableMap;-><init>()V

    iput-object v2, v1, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    .line 70
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/lifecycle/LiveData;->mActiveCount:I

    .line 72
    move-object v1, v0

    sget-object v2, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    iput-object v2, v1, Landroidx/lifecycle/LiveData;->mData:Ljava/lang/Object;

    .line 75
    move-object v1, v0

    sget-object v2, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    iput-object v2, v1, Landroidx/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    .line 77
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/lifecycle/LiveData;->mVersion:I

    .line 82
    move-object v1, v0

    new-instance v2, Landroidx/lifecycle/LiveData$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/lifecycle/LiveData$1;-><init>(Landroidx/lifecycle/LiveData;)V

    iput-object v2, v1, Landroidx/lifecycle/LiveData;->mPostValueRunnable:Ljava/lang/Runnable;

    .line 429
    return-void
.end method

.method private static assertMainThread(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 442
    move-object v0, p0

    .local v0, "methodName":Ljava/lang/String;
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/arch/core/executor/ArchTaskExecutor;->isMainThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 443
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot invoke "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " on a background"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " thread"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 446
    :cond_0
    return-void
.end method

.method private considerNotify(Landroidx/lifecycle/LiveData$ObserverWrapper;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData",
            "<TT;>.ObserverWrapper;)V"
        }
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TT;>;"
    move-object v1, p1

    .local v1, "observer":Landroidx/lifecycle/LiveData$ObserverWrapper;, "Landroidx/lifecycle/LiveData<TT;>.ObserverWrapper;"
    move-object v2, v1

    iget-boolean v2, v2, Landroidx/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-nez v2, :cond_0

    .line 97
    .line 114
    :goto_0
    return-void

    .line 104
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData$ObserverWrapper;->shouldBeActive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 105
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/lifecycle/LiveData$ObserverWrapper;->activeStateChanged(Z)V

    .line 106
    goto :goto_0

    .line 108
    :cond_1
    move-object v2, v1

    iget v2, v2, Landroidx/lifecycle/LiveData$ObserverWrapper;->mLastVersion:I

    move-object v3, v0

    iget v3, v3, Landroidx/lifecycle/LiveData;->mVersion:I

    if-lt v2, v3, :cond_2

    .line 109
    goto :goto_0

    .line 111
    :cond_2
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/lifecycle/LiveData;->mVersion:I

    iput v3, v2, Landroidx/lifecycle/LiveData$ObserverWrapper;->mLastVersion:I

    .line 113
    move-object v2, v1

    iget-object v2, v2, Landroidx/lifecycle/LiveData$ObserverWrapper;->mObserver:Landroidx/lifecycle/Observer;

    move-object v3, v0

    iget-object v3, v3, Landroidx/lifecycle/LiveData;->mData:Ljava/lang/Object;

    invoke-interface {v2, v3}, Landroidx/lifecycle/Observer;->onChanged(Ljava/lang/Object;)V

    .line 114
    goto :goto_0
.end method


# virtual methods
.method dispatchingValue(Landroidx/lifecycle/LiveData$ObserverWrapper;)V
    .locals 5
    .param p1    # Landroidx/lifecycle/LiveData$ObserverWrapper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData",
            "<TT;>.ObserverWrapper;)V"
        }
    .end annotation

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TT;>;"
    move-object v1, p1

    .local v1, "initiator":Landroidx/lifecycle/LiveData$ObserverWrapper;, "Landroidx/lifecycle/LiveData<TT;>.ObserverWrapper;"
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/lifecycle/LiveData;->mDispatchingValue:Z

    if-eqz v3, :cond_0

    .line 119
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/lifecycle/LiveData;->mDispatchInvalidated:Z

    .line 120
    .line 139
    :goto_0
    return-void

    .line 122
    :cond_0
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/lifecycle/LiveData;->mDispatchingValue:Z

    .line 124
    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/lifecycle/LiveData;->mDispatchInvalidated:Z

    .line 125
    move-object v3, v1

    if-eqz v3, :cond_3

    .line 126
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/lifecycle/LiveData;->considerNotify(Landroidx/lifecycle/LiveData$ObserverWrapper;)V

    .line 127
    const/4 v3, 0x0

    move-object v1, v3

    .line 137
    :cond_2
    :goto_1
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/lifecycle/LiveData;->mDispatchInvalidated:Z

    if-nez v3, :cond_1

    .line 138
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/lifecycle/LiveData;->mDispatchingValue:Z

    .line 139
    goto :goto_0

    .line 129
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    .line 130
    invoke-virtual {v3}, Landroidx/arch/core/internal/SafeIterableMap;->iteratorWithAdditions()Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;

    move-result-object v3

    move-object v2, v3

    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroidx/lifecycle/Observer<-TT;>;Landroidx/lifecycle/LiveData<TT;>.ObserverWrapper;>;>;"
    :cond_4
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 131
    move-object v3, v0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/lifecycle/LiveData$ObserverWrapper;

    invoke-direct {v3, v4}, Landroidx/lifecycle/LiveData;->considerNotify(Landroidx/lifecycle/LiveData$ObserverWrapper;)V

    .line 132
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/lifecycle/LiveData;->mDispatchInvalidated:Z

    if-eqz v3, :cond_4

    .line 133
    goto :goto_1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Landroidx/lifecycle/LiveData;->mData:Ljava/lang/Object;

    move-object v1, v2

    .line 302
    .local v1, "data":Ljava/lang/Object;
    move-object v2, v1

    sget-object v3, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    if-eq v2, v3, :cond_0

    .line 304
    move-object v2, v1

    move-object v0, v2

    .line 306
    .end local v0    # "this":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TT;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TT;>;"
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method getVersion()I
    .locals 2

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TT;>;"
    move-object v1, v0

    iget v1, v1, Landroidx/lifecycle/LiveData;->mVersion:I

    move v0, v1

    .end local v0    # "this":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TT;>;"
    return v0
.end method

.method public hasActiveObservers()Z
    .locals 2

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TT;>;"
    move-object v1, v0

    iget v1, v1, Landroidx/lifecycle/LiveData;->mActiveCount:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TT;>;"
    return v0

    .restart local v0    # "this":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TT;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasObservers()Z
    .locals 2

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v1}, Landroidx/arch/core/internal/SafeIterableMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TT;>;"
    return v0

    .restart local v0    # "this":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TT;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 11
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Observer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TT;>;"
    move-object v1, p1

    .local v1, "owner":Landroidx/lifecycle/LifecycleOwner;
    move-object v2, p2

    .local v2, "observer":Landroidx/lifecycle/Observer;, "Landroidx/lifecycle/Observer<-TT;>;"
    const-string/jumbo v5, "observe"

    invoke-static {v5}, Landroidx/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 172
    move-object v5, v1

    invoke-interface {v5}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v5

    sget-object v6, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v5, v6, :cond_0

    .line 174
    .line 186
    :goto_0
    return-void

    .line 176
    :cond_0
    new-instance v5, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-direct {v6, v7, v8, v9}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    move-object v3, v5

    .line 177
    .local v3, "wrapper":Landroidx/lifecycle/LiveData$LifecycleBoundObserver;, "Landroidx/lifecycle/LiveData<TT;>.LifecycleBoundObserver;"
    move-object v5, v0

    iget-object v5, v5, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Landroidx/arch/core/internal/SafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/lifecycle/LiveData$ObserverWrapper;

    move-object v4, v5

    .line 178
    .local v4, "existing":Landroidx/lifecycle/LiveData$ObserverWrapper;, "Landroidx/lifecycle/LiveData<TT;>.ObserverWrapper;"
    move-object v5, v4

    if-eqz v5, :cond_1

    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/lifecycle/LiveData$ObserverWrapper;->isAttachedTo(Landroidx/lifecycle/LifecycleOwner;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 179
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "Cannot add the same observer with different lifecycles"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 182
    :cond_1
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 183
    goto :goto_0

    .line 185
    :cond_2
    move-object v5, v1

    invoke-interface {v5}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 186
    goto :goto_0
.end method

.method public observeForever(Landroidx/lifecycle/Observer;)V
    .locals 9
    .param p1    # Landroidx/lifecycle/Observer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TT;>;"
    move-object v1, p1

    .local v1, "observer":Landroidx/lifecycle/Observer;, "Landroidx/lifecycle/Observer<-TT;>;"
    const-string/jumbo v4, "observeForever"

    invoke-static {v4}, Landroidx/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 205
    new-instance v4, Landroidx/lifecycle/LiveData$AlwaysActiveObserver;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Landroidx/lifecycle/LiveData$AlwaysActiveObserver;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    move-object v2, v4

    .line 206
    .local v2, "wrapper":Landroidx/lifecycle/LiveData$AlwaysActiveObserver;, "Landroidx/lifecycle/LiveData<TT;>.AlwaysActiveObserver;"
    move-object v4, v0

    iget-object v4, v4, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/arch/core/internal/SafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/lifecycle/LiveData$ObserverWrapper;

    move-object v3, v4

    .line 207
    .local v3, "existing":Landroidx/lifecycle/LiveData$ObserverWrapper;, "Landroidx/lifecycle/LiveData<TT;>.ObserverWrapper;"
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    instance-of v4, v4, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    if-eqz v4, :cond_0

    .line 208
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "Cannot add the same observer with different lifecycles"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 211
    :cond_0
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 212
    .line 215
    :goto_0
    return-void

    .line 214
    :cond_1
    move-object v4, v2

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroidx/lifecycle/LiveData$AlwaysActiveObserver;->activeStateChanged(Z)V

    .line 215
    goto :goto_0
.end method

.method protected onActive()V
    .locals 0

    .prologue
    .line 321
    .local p0, "this":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TT;>;"
    return-void
.end method

.method protected onInactive()V
    .locals 0

    .prologue
    .line 334
    .local p0, "this":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TT;>;"
    return-void
.end method

.method protected postValue(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TT;"
    move-object v5, v0

    iget-object v5, v5, Landroidx/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    move-object v3, v6

    monitor-enter v5

    .line 267
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroidx/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    sget-object v6, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v2, v5

    .line 268
    .local v2, "postTask":Z
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroidx/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    .line 269
    move-object v5, v3

    monitor-exit v5

    .line 270
    move v5, v2

    if-nez v5, :cond_1

    .line 271
    .line 274
    :goto_1
    return-void

    .line 267
    .end local v2    # "postTask":Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 269
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5

    .line 273
    .restart local v2    # "postTask":Z
    :cond_1
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroidx/lifecycle/LiveData;->mPostValueRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroidx/arch/core/executor/ArchTaskExecutor;->postToMainThread(Ljava/lang/Runnable;)V

    .line 274
    goto :goto_1
.end method

.method public removeObserver(Landroidx/lifecycle/Observer;)V
    .locals 5
    .param p1    # Landroidx/lifecycle/Observer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TT;>;"
    move-object v1, p1

    .local v1, "observer":Landroidx/lifecycle/Observer;, "Landroidx/lifecycle/Observer<-TT;>;"
    const-string/jumbo v3, "removeObserver"

    invoke-static {v3}, Landroidx/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 225
    move-object v3, v0

    iget-object v3, v3, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/arch/core/internal/SafeIterableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/LiveData$ObserverWrapper;

    move-object v2, v3

    .line 226
    .local v2, "removed":Landroidx/lifecycle/LiveData$ObserverWrapper;, "Landroidx/lifecycle/LiveData<TT;>.ObserverWrapper;"
    move-object v3, v2

    if-nez v3, :cond_0

    .line 227
    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData$ObserverWrapper;->detachObserver()V

    .line 230
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/lifecycle/LiveData$ObserverWrapper;->activeStateChanged(Z)V

    .line 231
    goto :goto_0
.end method

.method public removeObservers(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 6
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TT;>;"
    move-object v1, p1

    .local v1, "owner":Landroidx/lifecycle/LifecycleOwner;
    const-string/jumbo v4, "removeObservers"

    invoke-static {v4}, Landroidx/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 242
    move-object v4, v0

    iget-object v4, v4, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v4}, Landroidx/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v3, v4

    .line 243
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/lifecycle/Observer<-TT;>;Landroidx/lifecycle/LiveData<TT;>.ObserverWrapper;>;"
    move-object v4, v3

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/lifecycle/LiveData$ObserverWrapper;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/lifecycle/LiveData$ObserverWrapper;->isAttachedTo(Landroidx/lifecycle/LifecycleOwner;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 244
    move-object v4, v0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/lifecycle/Observer;

    invoke-virtual {v4, v5}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 246
    :cond_0
    goto :goto_0

    .line 247
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/lifecycle/Observer<-TT;>;Landroidx/lifecycle/LiveData<TT;>.ObserverWrapper;>;"
    :cond_1
    return-void
.end method

.method protected setValue(Ljava/lang/Object;)V
    .locals 6
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TT;"
    const-string/jumbo v2, "setValue"

    invoke-static {v2}, Landroidx/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 287
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroidx/lifecycle/LiveData;->mVersion:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroidx/lifecycle/LiveData;->mVersion:I

    .line 288
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/lifecycle/LiveData;->mData:Ljava/lang/Object;

    .line 289
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/lifecycle/LiveData;->dispatchingValue(Landroidx/lifecycle/LiveData$ObserverWrapper;)V

    .line 290
    return-void
.end method
