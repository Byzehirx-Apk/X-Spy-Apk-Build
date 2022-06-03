.class public Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
.super Ljava/lang/Object;
.source "ThumbnailRequestCoordinator.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestCoordinator;
.implements Lcom/bumptech/glide/request/Request;


# instance fields
.field private coordinator:Lcom/bumptech/glide/request/RequestCoordinator;

.field private full:Lcom/bumptech/glide/request/Request;

.field private thumb:Lcom/bumptech/glide/request/Request;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;-><init>(Lcom/bumptech/glide/request/RequestCoordinator;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/request/RequestCoordinator;)V
    .locals 4

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    move-object v1, p1

    .local v1, "coordinator":Lcom/bumptech/glide/request/RequestCoordinator;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 17
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->coordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    .line 18
    return-void
.end method

.method private parentCanNotifyStatusChanged()Z
    .locals 3

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->coordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->coordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    move-object v2, v0

    invoke-interface {v1, v2}, Lcom/bumptech/glide/request/RequestCoordinator;->canNotifyStatusChanged(Lcom/bumptech/glide/request/Request;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    return v0

    .restart local v0    # "this":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parentCanSetImage()Z
    .locals 3

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->coordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->coordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    move-object v2, v0

    invoke-interface {v1, v2}, Lcom/bumptech/glide/request/RequestCoordinator;->canSetImage(Lcom/bumptech/glide/request/Request;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    return v0

    .restart local v0    # "this":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parentIsAnyResourceSet()Z
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->coordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->coordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v1}, Lcom/bumptech/glide/request/RequestCoordinator;->isAnyResourceSet()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    return v0

    .restart local v0    # "this":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public begin()V
    .locals 2

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->begin()V

    .line 89
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 90
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->begin()V

    .line 92
    :cond_1
    return-void
.end method

.method public canNotifyStatusChanged(Lcom/bumptech/glide/request/Request;)Z
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    move-object v1, p1

    .local v1, "request":Lcom/bumptech/glide/request/Request;
    move-object v2, v0

    invoke-direct {v2}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->parentCanNotifyStatusChanged()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->isAnyResourceSet()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    return v0

    .restart local v0    # "this":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public canSetImage(Lcom/bumptech/glide/request/Request;)Z
    .locals 4

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    move-object v1, p1

    .local v1, "request":Lcom/bumptech/glide/request/Request;
    move-object v2, v0

    invoke-direct {v2}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->parentCanSetImage()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    invoke-interface {v2}, Lcom/bumptech/glide/request/Request;->isResourceSet()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    return v0

    .restart local v0    # "this":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->clear()V

    .line 106
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->clear()V

    .line 107
    return-void
.end method

.method public isAnyResourceSet()Z
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    move-object v1, v0

    invoke-direct {v1}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->parentIsAnyResourceSet()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->isResourceSet()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    return v0

    .restart local v0    # "this":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCancelled()Z
    .locals 2

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->isCancelled()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    return v0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->isComplete()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    return v0

    .restart local v0    # "this":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFailed()Z
    .locals 2

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->isFailed()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    return v0
.end method

.method public isPaused()Z
    .locals 2

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->isPaused()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    return v0
.end method

.method public isResourceSet()Z
    .locals 2

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->isResourceSet()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->isResourceSet()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    return v0

    .restart local v0    # "this":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->isRunning()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    return v0
.end method

.method public onRequestSuccess(Lcom/bumptech/glide/request/Request;)V
    .locals 4

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    move-object v1, p1

    .local v1, "request":Lcom/bumptech/glide/request/Request;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    .line 75
    :goto_0
    return-void

    .line 66
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->coordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v2, :cond_1

    .line 67
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->coordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/bumptech/glide/request/RequestCoordinator;->onRequestSuccess(Lcom/bumptech/glide/request/Request;)V

    .line 72
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    invoke-interface {v2}, Lcom/bumptech/glide/request/Request;->isComplete()Z

    move-result v2

    if-nez v2, :cond_2

    .line 73
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    invoke-interface {v2}, Lcom/bumptech/glide/request/Request;->clear()V

    .line 75
    :cond_2
    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->pause()V

    .line 97
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->pause()V

    .line 98
    return-void
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->recycle()V

    .line 154
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->recycle()V

    .line 155
    return-void
.end method

.method public setRequests(Lcom/bumptech/glide/request/Request;Lcom/bumptech/glide/request/Request;)V
    .locals 5

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    move-object v1, p1

    .local v1, "full":Lcom/bumptech/glide/request/Request;
    move-object v2, p2

    .local v2, "thumb":Lcom/bumptech/glide/request/Request;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    .line 22
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    .line 23
    return-void
.end method
