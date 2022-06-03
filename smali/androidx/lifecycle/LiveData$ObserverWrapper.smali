.class abstract Landroidx/lifecycle/LiveData$ObserverWrapper;
.super Ljava/lang/Object;
.source "LiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ObserverWrapper"
.end annotation


# instance fields
.field mActive:Z

.field mLastVersion:I

.field final mObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/lifecycle/LiveData;


# direct methods
.method constructor <init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 395
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/LiveData$ObserverWrapper;, "Landroidx/lifecycle/LiveData<TT;>.ObserverWrapper;"
    move-object v1, p1

    move-object v2, p2

    .local v2, "observer":Landroidx/lifecycle/Observer;, "Landroidx/lifecycle/Observer<-TT;>;"
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/lifecycle/LiveData$ObserverWrapper;->this$0:Landroidx/lifecycle/LiveData;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 393
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/lifecycle/LiveData$ObserverWrapper;->mLastVersion:I

    .line 396
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/lifecycle/LiveData$ObserverWrapper;->mObserver:Landroidx/lifecycle/Observer;

    .line 397
    return-void
.end method


# virtual methods
.method activeStateChanged(Z)V
    .locals 7

    .prologue
    .line 409
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/LiveData$ObserverWrapper;, "Landroidx/lifecycle/LiveData<TT;>.ObserverWrapper;"
    move v1, p1

    .local v1, "newActive":Z
    move v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-ne v3, v4, :cond_0

    .line 410
    .line 426
    :goto_0
    return-void

    .line 414
    :cond_0
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Landroidx/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    .line 415
    move-object v3, v0

    iget-object v3, v3, Landroidx/lifecycle/LiveData$ObserverWrapper;->this$0:Landroidx/lifecycle/LiveData;

    iget v3, v3, Landroidx/lifecycle/LiveData;->mActiveCount:I

    if-nez v3, :cond_4

    const/4 v3, 0x1

    :goto_1
    move v2, v3

    .line 416
    .local v2, "wasInactive":Z
    move-object v3, v0

    iget-object v3, v3, Landroidx/lifecycle/LiveData$ObserverWrapper;->this$0:Landroidx/lifecycle/LiveData;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Landroidx/lifecycle/LiveData;->mActiveCount:I

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    :goto_2
    add-int/2addr v4, v5

    iput v4, v3, Landroidx/lifecycle/LiveData;->mActiveCount:I

    .line 417
    move v3, v2

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-eqz v3, :cond_1

    .line 418
    move-object v3, v0

    iget-object v3, v3, Landroidx/lifecycle/LiveData$ObserverWrapper;->this$0:Landroidx/lifecycle/LiveData;

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->onActive()V

    .line 420
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/lifecycle/LiveData$ObserverWrapper;->this$0:Landroidx/lifecycle/LiveData;

    iget v3, v3, Landroidx/lifecycle/LiveData;->mActiveCount:I

    if-nez v3, :cond_2

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-nez v3, :cond_2

    .line 421
    move-object v3, v0

    iget-object v3, v3, Landroidx/lifecycle/LiveData$ObserverWrapper;->this$0:Landroidx/lifecycle/LiveData;

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->onInactive()V

    .line 423
    :cond_2
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-eqz v3, :cond_3

    .line 424
    move-object v3, v0

    iget-object v3, v3, Landroidx/lifecycle/LiveData$ObserverWrapper;->this$0:Landroidx/lifecycle/LiveData;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroidx/lifecycle/LiveData;->dispatchingValue(Landroidx/lifecycle/LiveData$ObserverWrapper;)V

    .line 426
    :cond_3
    goto :goto_0

    .line 415
    .end local v2    # "wasInactive":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 416
    .restart local v2    # "wasInactive":Z
    :cond_5
    const/4 v5, -0x1

    goto :goto_2
.end method

.method detachObserver()V
    .locals 0

    .prologue
    .line 406
    .local p0, "this":Landroidx/lifecycle/LiveData$ObserverWrapper;, "Landroidx/lifecycle/LiveData<TT;>.ObserverWrapper;"
    return-void
.end method

.method isAttachedTo(Landroidx/lifecycle/LifecycleOwner;)Z
    .locals 3

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/LiveData$ObserverWrapper;, "Landroidx/lifecycle/LiveData<TT;>.ObserverWrapper;"
    move-object v1, p1

    .local v1, "owner":Landroidx/lifecycle/LifecycleOwner;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Landroidx/lifecycle/LiveData$ObserverWrapper;, "Landroidx/lifecycle/LiveData<TT;>.ObserverWrapper;"
    return v0
.end method

.method abstract shouldBeActive()Z
.end method
