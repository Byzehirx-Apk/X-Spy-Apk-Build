.class public Landroidx/loader/content/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/loader/content/Loader$OnLoadCanceledListener;,
        Landroidx/loader/content/Loader$OnLoadCompleteListener;,
        Landroidx/loader/content/Loader$ForceLoadContentObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mAbandoned:Z

.field mContentChanged:Z

.field mContext:Landroid/content/Context;

.field mId:I

.field mListener:Landroidx/loader/content/Loader$OnLoadCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/content/Loader$OnLoadCompleteListener",
            "<TD;>;"
        }
    .end annotation
.end field

.field mOnLoadCanceledListener:Landroidx/loader/content/Loader$OnLoadCanceledListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/content/Loader$OnLoadCanceledListener",
            "<TD;>;"
        }
    .end annotation
.end field

.field mProcessingChange:Z

.field mReset:Z

.field mStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 44
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/loader/content/Loader;->mStarted:Z

    .line 45
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/loader/content/Loader;->mAbandoned:Z

    .line 46
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/loader/content/Loader;->mReset:Z

    .line 47
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/loader/content/Loader;->mContentChanged:Z

    .line 48
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/loader/content/Loader;->mProcessingChange:Z

    .line 119
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v2, Landroidx/loader/content/Loader;->mContext:Landroid/content/Context;

    .line 120
    return-void
.end method


# virtual methods
.method public abandon()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 409
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/loader/content/Loader;->mAbandoned:Z

    .line 410
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/loader/content/Loader;->onAbandon()V

    .line 411
    return-void
.end method

.method public cancelLoad()Z
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/loader/content/Loader;->onCancelLoad()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    return v0
.end method

.method public commitContentChanged()V
    .locals 3

    .prologue
    .line 485
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/loader/content/Loader;->mProcessingChange:Z

    .line 486
    return-void
.end method

.method public dataToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 527
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    move-object v1, p1

    .local v1, "data":Ljava/lang/Object;, "TD;"
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/16 v5, 0x40

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v3

    .line 528
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Landroidx/core/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 529
    move-object v3, v2

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 530
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    return-object v0
.end method

.method public deliverCancellation()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/loader/content/Loader;->mOnLoadCanceledListener:Landroidx/loader/content/Loader$OnLoadCanceledListener;

    if-eqz v1, :cond_0

    .line 145
    move-object v1, v0

    iget-object v1, v1, Landroidx/loader/content/Loader;->mOnLoadCanceledListener:Landroidx/loader/content/Loader$OnLoadCanceledListener;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroidx/loader/content/Loader$OnLoadCanceledListener;->onLoadCanceled(Landroidx/loader/content/Loader;)V

    .line 147
    :cond_0
    return-void
.end method

.method public deliverResult(Ljava/lang/Object;)V
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    move-object v1, p1

    .local v1, "data":Ljava/lang/Object;, "TD;"
    move-object v2, v0

    iget-object v2, v2, Landroidx/loader/content/Loader;->mListener:Landroidx/loader/content/Loader$OnLoadCompleteListener;

    if-eqz v2, :cond_0

    .line 132
    move-object v2, v0

    iget-object v2, v2, Landroidx/loader/content/Loader;->mListener:Landroidx/loader/content/Loader$OnLoadCompleteListener;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroidx/loader/content/Loader$OnLoadCompleteListener;->onLoadComplete(Landroidx/loader/content/Loader;Ljava/lang/Object;)V

    .line 134
    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 555
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "fd":Ljava/io/FileDescriptor;
    move-object v3, p3

    .local v3, "writer":Ljava/io/PrintWriter;
    move-object v4, p4

    .local v4, "args":[Ljava/lang/String;
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string/jumbo v6, "mId="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Landroidx/loader/content/Loader;->mId:I

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 556
    move-object v5, v3

    const-string/jumbo v6, " mListener="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/loader/content/Loader;->mListener:Landroidx/loader/content/Loader$OnLoadCompleteListener;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 557
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/loader/content/Loader;->mStarted:Z

    if-nez v5, :cond_0

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/loader/content/Loader;->mContentChanged:Z

    if-nez v5, :cond_0

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/loader/content/Loader;->mProcessingChange:Z

    if-eqz v5, :cond_1

    .line 558
    :cond_0
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string/jumbo v6, "mStarted="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/loader/content/Loader;->mStarted:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 559
    move-object v5, v3

    const-string/jumbo v6, " mContentChanged="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/loader/content/Loader;->mContentChanged:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 560
    move-object v5, v3

    const-string/jumbo v6, " mProcessingChange="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/loader/content/Loader;->mProcessingChange:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 562
    :cond_1
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/loader/content/Loader;->mAbandoned:Z

    if-nez v5, :cond_2

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/loader/content/Loader;->mReset:Z

    if-eqz v5, :cond_3

    .line 563
    :cond_2
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string/jumbo v6, "mAbandoned="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/loader/content/Loader;->mAbandoned:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 564
    move-object v5, v3

    const-string/jumbo v6, " mReset="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/loader/content/Loader;->mReset:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 566
    :cond_3
    return-void
.end method

.method public forceLoad()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 347
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/loader/content/Loader;->onForceLoad()V

    .line 348
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/loader/content/Loader;->mContext:Landroid/content/Context;

    move-object v0, v1

    .end local v0    # "this":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    return-object v0
.end method

.method public getId()I
    .locals 2

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    move-object v1, v0

    iget v1, v1, Landroidx/loader/content/Loader;->mId:I

    move v0, v1

    .end local v0    # "this":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    return v0
.end method

.method public isAbandoned()Z
    .locals 2

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/loader/content/Loader;->mAbandoned:Z

    move v0, v1

    .end local v0    # "this":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    return v0
.end method

.method public isReset()Z
    .locals 2

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/loader/content/Loader;->mReset:Z

    move v0, v1

    .end local v0    # "this":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    return v0
.end method

.method public isStarted()Z
    .locals 2

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/loader/content/Loader;->mStarted:Z

    move v0, v1

    .end local v0    # "this":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    return v0
.end method

.method protected onAbandon()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 425
    .local p0, "this":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    return-void
.end method

.method protected onCancelLoad()Z
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    return v0
.end method

.method public onContentChanged()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 511
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/loader/content/Loader;->mStarted:Z

    if-eqz v1, :cond_0

    .line 512
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/loader/content/Loader;->forceLoad()V

    .line 519
    :goto_0
    return-void

    .line 517
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/loader/content/Loader;->mContentChanged:Z

    goto :goto_0
.end method

.method protected onForceLoad()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 356
    .local p0, "this":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    return-void
.end method

.method protected onReset()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 463
    .local p0, "this":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    return-void
.end method

.method protected onStartLoading()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 296
    .local p0, "this":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    return-void
.end method

.method protected onStopLoading()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 392
    .local p0, "this":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    return-void
.end method

.method public registerListener(ILandroidx/loader/content/Loader$OnLoadCompleteListener;)V
    .locals 7
    .param p2    # Landroidx/loader/content/Loader$OnLoadCompleteListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/loader/content/Loader$OnLoadCompleteListener",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    move v1, p1

    .local v1, "id":I
    move-object v2, p2

    .local v2, "listener":Landroidx/loader/content/Loader$OnLoadCompleteListener;, "Landroidx/loader/content/Loader$OnLoadCompleteListener<TD;>;"
    move-object v3, v0

    iget-object v3, v3, Landroidx/loader/content/Loader;->mListener:Landroidx/loader/content/Loader$OnLoadCompleteListener;

    if-eqz v3, :cond_0

    .line 174
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "There is already a listener registered"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 176
    :cond_0
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/loader/content/Loader;->mListener:Landroidx/loader/content/Loader$OnLoadCompleteListener;

    .line 177
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/loader/content/Loader;->mId:I

    .line 178
    return-void
.end method

.method public registerOnLoadCanceledListener(Landroidx/loader/content/Loader$OnLoadCanceledListener;)V
    .locals 6
    .param p1    # Landroidx/loader/content/Loader$OnLoadCanceledListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader$OnLoadCanceledListener",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    move-object v1, p1

    .local v1, "listener":Landroidx/loader/content/Loader$OnLoadCanceledListener;, "Landroidx/loader/content/Loader$OnLoadCanceledListener<TD;>;"
    move-object v2, v0

    iget-object v2, v2, Landroidx/loader/content/Loader;->mOnLoadCanceledListener:Landroidx/loader/content/Loader$OnLoadCanceledListener;

    if-eqz v2, :cond_0

    .line 208
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "There is already a listener registered"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 210
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/loader/content/Loader;->mOnLoadCanceledListener:Landroidx/loader/content/Loader$OnLoadCanceledListener;

    .line 211
    return-void
.end method

.method public reset()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 447
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/loader/content/Loader;->onReset()V

    .line 448
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/loader/content/Loader;->mReset:Z

    .line 449
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/loader/content/Loader;->mStarted:Z

    .line 450
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/loader/content/Loader;->mAbandoned:Z

    .line 451
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/loader/content/Loader;->mContentChanged:Z

    .line 452
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/loader/content/Loader;->mProcessingChange:Z

    .line 453
    return-void
.end method

.method public rollbackContentChanged()V
    .locals 2

    .prologue
    .line 496
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/loader/content/Loader;->mProcessingChange:Z

    if-eqz v1, :cond_0

    .line 497
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/loader/content/Loader;->onContentChanged()V

    .line 499
    :cond_0
    return-void
.end method

.method public final startLoading()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/loader/content/Loader;->mStarted:Z

    .line 283
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/loader/content/Loader;->mReset:Z

    .line 284
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/loader/content/Loader;->mAbandoned:Z

    .line 285
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/loader/content/Loader;->onStartLoading()V

    .line 286
    return-void
.end method

.method public stopLoading()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/loader/content/Loader;->mStarted:Z

    .line 381
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/loader/content/Loader;->onStopLoading()V

    .line 382
    return-void
.end method

.method public takeContentChanged()Z
    .locals 6

    .prologue
    .line 471
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/loader/content/Loader;->mContentChanged:Z

    move v1, v2

    .line 472
    .local v1, "res":Z
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/loader/content/Loader;->mContentChanged:Z

    .line 473
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-boolean v3, v3, Landroidx/loader/content/Loader;->mProcessingChange:Z

    move v4, v1

    or-int/2addr v3, v4

    iput-boolean v3, v2, Landroidx/loader/content/Loader;->mProcessingChange:Z

    .line 474
    move v2, v1

    move v0, v2

    .end local v0    # "this":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 535
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x40

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v2

    .line 536
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/core/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 537
    move-object v2, v1

    const-string/jumbo v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 538
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/loader/content/Loader;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 539
    move-object v2, v1

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 540
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    return-object v0
.end method

.method public unregisterListener(Landroidx/loader/content/Loader$OnLoadCompleteListener;)V
    .locals 6
    .param p1    # Landroidx/loader/content/Loader$OnLoadCompleteListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader$OnLoadCompleteListener",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    move-object v1, p1

    .local v1, "listener":Landroidx/loader/content/Loader$OnLoadCompleteListener;, "Landroidx/loader/content/Loader$OnLoadCompleteListener<TD;>;"
    move-object v2, v0

    iget-object v2, v2, Landroidx/loader/content/Loader;->mListener:Landroidx/loader/content/Loader$OnLoadCompleteListener;

    if-nez v2, :cond_0

    .line 188
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "No listener register"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 190
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/loader/content/Loader;->mListener:Landroidx/loader/content/Loader$OnLoadCompleteListener;

    move-object v3, v1

    if-eq v2, v3, :cond_1

    .line 191
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Attempting to unregister the wrong listener"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 193
    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/loader/content/Loader;->mListener:Landroidx/loader/content/Loader$OnLoadCompleteListener;

    .line 194
    return-void
.end method

.method public unregisterOnLoadCanceledListener(Landroidx/loader/content/Loader$OnLoadCanceledListener;)V
    .locals 6
    .param p1    # Landroidx/loader/content/Loader$OnLoadCanceledListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader$OnLoadCanceledListener",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    move-object v1, p1

    .local v1, "listener":Landroidx/loader/content/Loader$OnLoadCanceledListener;, "Landroidx/loader/content/Loader$OnLoadCanceledListener<TD;>;"
    move-object v2, v0

    iget-object v2, v2, Landroidx/loader/content/Loader;->mOnLoadCanceledListener:Landroidx/loader/content/Loader$OnLoadCanceledListener;

    if-nez v2, :cond_0

    .line 224
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "No listener register"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 226
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/loader/content/Loader;->mOnLoadCanceledListener:Landroidx/loader/content/Loader$OnLoadCanceledListener;

    move-object v3, v1

    if-eq v2, v3, :cond_1

    .line 227
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Attempting to unregister the wrong listener"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 229
    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/loader/content/Loader;->mOnLoadCanceledListener:Landroidx/loader/content/Loader$OnLoadCanceledListener;

    .line 230
    return-void
.end method
