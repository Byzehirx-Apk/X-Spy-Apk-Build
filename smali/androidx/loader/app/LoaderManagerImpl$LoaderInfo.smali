.class public Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;
.super Landroidx/lifecycle/MutableLiveData;
.source "LoaderManagerImpl.java"

# interfaces
.implements Landroidx/loader/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/loader/app/LoaderManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoaderInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/MutableLiveData",
        "<TD;>;",
        "Landroidx/loader/content/Loader$OnLoadCompleteListener",
        "<TD;>;"
    }
.end annotation


# instance fields
.field private final mArgs:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mId:I

.field private mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field private final mLoader:Landroidx/loader/content/Loader;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/content/Loader",
            "<TD;>;"
        }
    .end annotation
.end field

.field private mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManagerImpl$LoaderObserver",
            "<TD;>;"
        }
    .end annotation
.end field

.field private mPriorLoader:Landroidx/loader/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/content/Loader",
            "<TD;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILandroid/os/Bundle;Landroidx/loader/content/Loader;Landroidx/loader/content/Loader;)V
    .locals 8
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/loader/content/Loader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/loader/content/Loader;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroidx/loader/content/Loader",
            "<TD;>;",
            "Landroidx/loader/content/Loader",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    move v1, p1

    .local v1, "id":I
    move-object v2, p2

    .local v2, "args":Landroid/os/Bundle;
    move-object v3, p3

    .local v3, "loader":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    move-object v4, p4

    .local v4, "priorLoader":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    move-object v5, v0

    invoke-direct {v5}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 62
    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mId:I

    .line 63
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    .line 64
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    .line 65
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Landroidx/loader/content/Loader;

    .line 66
    move-object v5, v0

    iget-object v5, v5, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    move v6, v1

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Landroidx/loader/content/Loader;->registerListener(ILandroidx/loader/content/Loader$OnLoadCompleteListener;)V

    .line 67
    return-void
.end method


# virtual methods
.method destroy(Z)Landroidx/loader/content/Loader;
    .locals 7
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroidx/loader/content/Loader",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    move v1, p1

    .local v1, "reset":Z
    sget-boolean v3, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "LoaderManager"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  Destroying: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 151
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    invoke-virtual {v3}, Landroidx/loader/content/Loader;->cancelLoad()Z

    move-result v3

    .line 152
    move-object v3, v0

    iget-object v3, v3, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    invoke-virtual {v3}, Landroidx/loader/content/Loader;->abandon()V

    .line 154
    move-object v3, v0

    iget-object v3, v3, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    move-object v2, v3

    .line 155
    .local v2, "observer":Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;, "Landroidx/loader/app/LoaderManagerImpl$LoaderObserver<TD;>;"
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 156
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 157
    move v3, v1

    if-eqz v3, :cond_1

    .line 158
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->reset()V

    .line 162
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroidx/loader/content/Loader;->unregisterListener(Landroidx/loader/content/Loader$OnLoadCompleteListener;)V

    .line 163
    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v2

    invoke-virtual {v3}, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->hasDeliveredData()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v3, v1

    if-eqz v3, :cond_4

    .line 164
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    invoke-virtual {v3}, Landroidx/loader/content/Loader;->reset()V

    .line 165
    move-object v3, v0

    iget-object v3, v3, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Landroidx/loader/content/Loader;

    move-object v0, v3

    .line 167
    .end local v0    # "this":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    move-object v0, v3

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
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

    iget v6, v6, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 213
    move-object v5, v3

    const-string/jumbo v6, " mArgs="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 214
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string/jumbo v6, "mLoader="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 215
    move-object v5, v0

    iget-object v5, v5, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/loader/content/Loader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 216
    move-object v5, v0

    iget-object v5, v5, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    if-eqz v5, :cond_0

    .line 217
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string/jumbo v6, "mCallbacks="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 218
    move-object v5, v0

    iget-object v5, v5, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 220
    :cond_0
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string/jumbo v6, "mData="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    .line 221
    invoke-virtual {v6}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->getLoader()Landroidx/loader/content/Loader;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/loader/content/Loader;->dataToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 220
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string/jumbo v6, "mStarted="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    .line 223
    invoke-virtual {v6}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->hasActiveObservers()Z

    move-result v6

    .line 222
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 224
    return-void
.end method

.method getLoader()Landroidx/loader/content/Loader;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/loader/content/Loader",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    move-object v0, v1

    .end local v0    # "this":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    return-object v0
.end method

.method isCallbackWaitingForData()Z
    .locals 2

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->hasActiveObservers()Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    const/4 v1, 0x0

    move v0, v1

    .line 129
    .end local v0    # "this":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    invoke-virtual {v1}, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->hasDeliveredData()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method markForRedelivery()V
    .locals 6

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    move-object v3, v0

    iget-object v3, v3, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    move-object v1, v3

    .line 112
    .local v1, "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    move-object v3, v0

    iget-object v3, v3, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    move-object v2, v3

    .line 113
    .local v2, "observer":Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;, "Landroidx/loader/app/LoaderManagerImpl$LoaderObserver<TD;>;"
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v2

    if-eqz v3, :cond_0

    .line 118
    move-object v3, v0

    move-object v4, v2

    invoke-super {v3, v4}, Landroidx/lifecycle/MutableLiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 119
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 121
    :cond_0
    return-void
.end method

.method protected onActive()V
    .locals 5

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    sget-boolean v1, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  Starting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 77
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    invoke-virtual {v1}, Landroidx/loader/content/Loader;->startLoading()V

    .line 78
    return-void
.end method

.method protected onInactive()V
    .locals 5

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    sget-boolean v1, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  Stopping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 83
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    invoke-virtual {v1}, Landroidx/loader/content/Loader;->stopLoading()V

    .line 84
    return-void
.end method

.method public onLoadComplete(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 7
    .param p1    # Landroidx/loader/content/Loader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader",
            "<TD;>;TD;)V"
        }
    .end annotation

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    move-object v1, p1

    .local v1, "loader":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    move-object v2, p2

    .local v2, "data":Ljava/lang/Object;, "TD;"
    sget-boolean v3, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "LoaderManager"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onLoadComplete: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 173
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v3, v4, :cond_1

    .line 174
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->setValue(Ljava/lang/Object;)V

    .line 185
    :goto_0
    return-void

    .line 179
    :cond_1
    sget-boolean v3, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 180
    const-string/jumbo v3, "LoaderManager"

    const-string/jumbo v4, "onLoadComplete was incorrectly called on a background thread"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 183
    :cond_2
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->postValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public removeObserver(Landroidx/lifecycle/Observer;)V
    .locals 4
    .param p1    # Landroidx/lifecycle/Observer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Observer",
            "<-TD;>;)V"
        }
    .end annotation

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    move-object v1, p1

    .local v1, "observer":Landroidx/lifecycle/Observer;, "Landroidx/lifecycle/Observer<-TD;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/lifecycle/MutableLiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 136
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 137
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    .line 138
    return-void
.end method

.method setCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;
    .locals 9
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/loader/app/LoaderManager$LoaderCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks",
            "<TD;>;)",
            "Landroidx/loader/content/Loader",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    move-object v1, p1

    .local v1, "owner":Landroidx/lifecycle/LifecycleOwner;
    move-object v2, p2

    .local v2, "callback":Landroidx/loader/app/LoaderManager$LoaderCallbacks;, "Landroidx/loader/app/LoaderManager$LoaderCallbacks<TD;>;"
    new-instance v4, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;-><init>(Landroidx/loader/content/Loader;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)V

    move-object v3, v4

    .line 100
    .local v3, "observer":Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;, "Landroidx/loader/app/LoaderManagerImpl$LoaderObserver<TD;>;"
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 102
    move-object v4, v0

    iget-object v4, v4, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    if-eqz v4, :cond_0

    .line 103
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    invoke-virtual {v4, v5}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 105
    :cond_0
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 106
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    .line 107
    move-object v4, v0

    iget-object v4, v4, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    move-object v0, v4

    .end local v0    # "this":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TD;"
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 191
    move-object v2, v0

    iget-object v2, v2, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Landroidx/loader/content/Loader;

    if-eqz v2, :cond_0

    .line 192
    move-object v2, v0

    iget-object v2, v2, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Landroidx/loader/content/Loader;

    invoke-virtual {v2}, Landroidx/loader/content/Loader;->reset()V

    .line 193
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Landroidx/loader/content/Loader;

    .line 195
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x40

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v2

    .line 200
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v2, v1

    const-string/jumbo v3, "LoaderInfo{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 201
    move-object v2, v1

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 202
    move-object v2, v1

    const-string/jumbo v3, " #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 203
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 204
    move-object v2, v1

    const-string/jumbo v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 205
    move-object v2, v0

    iget-object v2, v2, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/core/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 206
    move-object v2, v1

    const-string/jumbo v3, "}}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 207
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    return-object v0
.end method
