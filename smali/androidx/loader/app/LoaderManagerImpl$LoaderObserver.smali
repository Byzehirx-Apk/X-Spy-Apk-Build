.class Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;
.super Ljava/lang/Object;
.source "LoaderManagerImpl.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/loader/app/LoaderManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoaderObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer",
        "<TD;>;"
    }
.end annotation


# instance fields
.field private final mCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks",
            "<TD;>;"
        }
    .end annotation
.end field

.field private mDeliveredData:Z

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


# direct methods
.method constructor <init>(Landroidx/loader/content/Loader;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)V
    .locals 5
    .param p1    # Landroidx/loader/content/Loader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/loader/app/LoaderManager$LoaderCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader",
            "<TD;>;",
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;, "Landroidx/loader/app/LoaderManagerImpl$LoaderObserver<TD;>;"
    move-object v1, p1

    .local v1, "loader":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    move-object v2, p2

    .local v2, "callback":Landroidx/loader/app/LoaderManager$LoaderCallbacks;, "Landroidx/loader/app/LoaderManager$LoaderCallbacks<TD;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 237
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mDeliveredData:Z

    .line 240
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mLoader:Landroidx/loader/content/Loader;

    .line 241
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    .line 242
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;, "Landroidx/loader/app/LoaderManagerImpl$LoaderObserver<TD;>;"
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "writer":Ljava/io/PrintWriter;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v3, v2

    const-string/jumbo v4, "mDeliveredData="

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v3, v2

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mDeliveredData:Z

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 274
    return-void
.end method

.method hasDeliveredData()Z
    .locals 2

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;, "Landroidx/loader/app/LoaderManagerImpl$LoaderObserver<TD;>;"
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mDeliveredData:Z

    move v0, v1

    .end local v0    # "this":Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;, "Landroidx/loader/app/LoaderManagerImpl$LoaderObserver<TD;>;"
    return v0
.end method

.method public onChanged(Ljava/lang/Object;)V
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;, "Landroidx/loader/app/LoaderManagerImpl$LoaderObserver<TD;>;"
    move-object v1, p1

    .local v1, "data":Ljava/lang/Object;, "TD;"
    sget-boolean v2, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 247
    const-string/jumbo v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  onLoadFinished in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mLoader:Landroidx/loader/content/Loader;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mLoader:Landroidx/loader/content/Loader;

    move-object v5, v1

    .line 248
    invoke-virtual {v4, v5}, Landroidx/loader/content/Loader;->dataToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 247
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 250
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    move-object v3, v0

    iget-object v3, v3, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mLoader:Landroidx/loader/content/Loader;

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroidx/loader/app/LoaderManager$LoaderCallbacks;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V

    .line 251
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mDeliveredData:Z

    .line 252
    return-void
.end method

.method reset()V
    .locals 5
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;, "Landroidx/loader/app/LoaderManagerImpl$LoaderObserver<TD;>;"
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mDeliveredData:Z

    if-eqz v1, :cond_1

    .line 261
    sget-boolean v1, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  Resetting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mLoader:Landroidx/loader/content/Loader;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 262
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    move-object v2, v0

    iget-object v2, v2, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mLoader:Landroidx/loader/content/Loader;

    invoke-interface {v1, v2}, Landroidx/loader/app/LoaderManager$LoaderCallbacks;->onLoaderReset(Landroidx/loader/content/Loader;)V

    .line 264
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;, "Landroidx/loader/app/LoaderManagerImpl$LoaderObserver<TD;>;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;, "Landroidx/loader/app/LoaderManagerImpl$LoaderObserver<TD;>;"
    return-object v0
.end method
