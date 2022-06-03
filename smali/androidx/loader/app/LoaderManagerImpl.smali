.class Landroidx/loader/app/LoaderManagerImpl;
.super Landroidx/loader/app/LoaderManager;
.source "LoaderManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;,
        Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;,
        Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;
    }
.end annotation


# static fields
.field static DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "LoaderManager"


# instance fields
.field private final mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/ViewModelStore;)V
    .locals 5
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/ViewModelStore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 371
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManagerImpl;
    move-object v1, p1

    .local v1, "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    move-object v2, p2

    .local v2, "viewModelStore":Landroidx/lifecycle/ViewModelStore;
    move-object v3, v0

    invoke-direct {v3}, Landroidx/loader/app/LoaderManager;-><init>()V

    .line 372
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/loader/app/LoaderManagerImpl;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 373
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->getInstance(Landroidx/lifecycle/ViewModelStore;)Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    move-result-object v4

    iput-object v4, v3, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    .line 374
    return-void
.end method

.method private createAndInstallLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;Landroidx/loader/content/Loader;)Landroidx/loader/content/Loader;
    .locals 15
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/loader/app/LoaderManager$LoaderCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/loader/content/Loader;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks",
            "<TD;>;",
            "Landroidx/loader/content/Loader",
            "<TD;>;)",
            "Landroidx/loader/content/Loader",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 382
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManagerImpl;
    move/from16 v1, p1

    .local v1, "id":I
    move-object/from16 v2, p2

    .local v2, "args":Landroid/os/Bundle;
    move-object/from16 v3, p3

    .local v3, "callback":Landroidx/loader/app/LoaderManager$LoaderCallbacks;, "Landroidx/loader/app/LoaderManager$LoaderCallbacks<TD;>;"
    move-object/from16 v4, p4

    .local v4, "priorLoader":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v8}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->startCreatingLoader()V

    .line 383
    move-object v8, v3

    move v9, v1

    move-object v10, v2

    invoke-interface {v8, v9, v10}, Landroidx/loader/app/LoaderManager$LoaderCallbacks;->onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;

    move-result-object v8

    move-object v6, v8

    .line 384
    .local v6, "loader":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    move-object v8, v6

    if-nez v8, :cond_0

    .line 385
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const-string/jumbo v10, "Object returned from onCreateLoader must not be null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    .end local v6    # "loader":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v0

    iget-object v8, v8, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v8}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->finishCreatingLoader()V

    move-object v8, v7

    throw v8

    .line 388
    .restart local v6    # "loader":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    :cond_0
    move-object v8, v6

    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->isMemberClass()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v6

    .line 389
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 390
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 394
    :cond_1
    new-instance v8, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move v10, v1

    move-object v11, v2

    move-object v12, v6

    move-object v13, v4

    invoke-direct {v9, v10, v11, v12, v13}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;-><init>(ILandroid/os/Bundle;Landroidx/loader/content/Loader;Landroidx/loader/content/Loader;)V

    move-object v5, v8

    .line 395
    .local v5, "info":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    sget-boolean v8, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_2

    const-string/jumbo v8, "LoaderManager"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "  Created new loader "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 396
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    move v9, v1

    move-object v10, v5

    invoke-virtual {v8, v9, v10}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->putLoader(ILandroidx/loader/app/LoaderManagerImpl$LoaderInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    move-object v8, v0

    iget-object v8, v8, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v8}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->finishCreatingLoader()V

    .line 399
    .line 400
    move-object v8, v5

    move-object v9, v0

    iget-object v9, v9, Landroidx/loader/app/LoaderManagerImpl;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    move-object v10, v3

    invoke-virtual {v8, v9, v10}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->setCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    move-result-object v8

    move-object v0, v8

    .end local v0    # "this":Landroidx/loader/app/LoaderManagerImpl;
    return-object v0
.end method


# virtual methods
.method public destroyLoader(I)V
    .locals 7
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 453
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManagerImpl;
    move v1, p1

    .local v1, "id":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v3}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->isCreatingLoader()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 454
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Called while creating a loader"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 456
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 457
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "destroyLoader must be called on the main thread"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 460
    :cond_1
    sget-boolean v3, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "LoaderManager"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "destroyLoader in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 461
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->getLoader(I)Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v3

    move-object v2, v3

    .line 462
    .local v2, "info":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;
    move-object v3, v2

    if-eqz v3, :cond_3

    .line 463
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->destroy(Z)Landroidx/loader/content/Loader;

    move-result-object v3

    .line 464
    move-object v3, v0

    iget-object v3, v3, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->removeLoader(I)V

    .line 466
    :cond_3
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 498
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManagerImpl;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "fd":Ljava/io/FileDescriptor;
    move-object v3, p3

    .local v3, "writer":Ljava/io/PrintWriter;
    move-object v4, p4

    .local v4, "args":[Ljava/lang/String;
    move-object v5, v0

    iget-object v5, v5, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 499
    return-void
.end method

.method public getLoader(I)Landroidx/loader/content/Loader;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroidx/loader/content/Loader",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 471
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManagerImpl;
    move v1, p1

    .local v1, "id":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v3}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->isCreatingLoader()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 472
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Called while creating a loader"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 475
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->getLoader(I)Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v3

    move-object v2, v3

    .line 476
    .local v2, "info":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    invoke-virtual {v3}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->getLoader()Landroidx/loader/content/Loader;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Landroidx/loader/app/LoaderManagerImpl;
    return-object v0

    .restart local v0    # "this":Landroidx/loader/app/LoaderManagerImpl;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public hasRunningLoaders()Z
    .locals 2

    .prologue
    .line 503
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManagerImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v1}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->hasRunningLoaders()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/loader/app/LoaderManagerImpl;
    return v0
.end method

.method public initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;
    .locals 11
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/loader/app/LoaderManager$LoaderCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks",
            "<TD;>;)",
            "Landroidx/loader/content/Loader",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 408
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManagerImpl;
    move v1, p1

    .local v1, "id":I
    move-object v2, p2

    .local v2, "args":Landroid/os/Bundle;
    move-object v3, p3

    .local v3, "callback":Landroidx/loader/app/LoaderManager$LoaderCallbacks;, "Landroidx/loader/app/LoaderManager$LoaderCallbacks<TD;>;"
    move-object v5, v0

    iget-object v5, v5, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v5}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->isCreatingLoader()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 409
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "Called while creating a loader"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 411
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    if-eq v5, v6, :cond_1

    .line 412
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "initLoader must be called on the main thread"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 415
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    move v6, v1

    invoke-virtual {v5, v6}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->getLoader(I)Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v5

    move-object v4, v5

    .line 417
    .local v4, "info":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    sget-boolean v5, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "LoaderManager"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "initLoader in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": args="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 419
    :cond_2
    move-object v5, v4

    if-nez v5, :cond_3

    .line 421
    move-object v5, v0

    move v6, v1

    move-object v7, v2

    move-object v8, v3

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Landroidx/loader/app/LoaderManagerImpl;->createAndInstallLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;Landroidx/loader/content/Loader;)Landroidx/loader/content/Loader;

    move-result-object v5

    move-object v0, v5

    .line 424
    .end local v0    # "this":Landroidx/loader/app/LoaderManagerImpl;
    :goto_0
    return-object v0

    .line 423
    .restart local v0    # "this":Landroidx/loader/app/LoaderManagerImpl;
    :cond_3
    sget-boolean v5, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string/jumbo v5, "LoaderManager"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  Re-using existing loader "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 424
    :cond_4
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Landroidx/loader/app/LoaderManagerImpl;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->setCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method public markForRedelivery()V
    .locals 2

    .prologue
    .line 481
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManagerImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v1}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->markForRedelivery()V

    .line 482
    return-void
.end method

.method public restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;
    .locals 12
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/loader/app/LoaderManager$LoaderCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks",
            "<TD;>;)",
            "Landroidx/loader/content/Loader",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 433
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManagerImpl;
    move v1, p1

    .local v1, "id":I
    move-object v2, p2

    .local v2, "args":Landroid/os/Bundle;
    move-object v3, p3

    .local v3, "callback":Landroidx/loader/app/LoaderManager$LoaderCallbacks;, "Landroidx/loader/app/LoaderManager$LoaderCallbacks<TD;>;"
    move-object v6, v0

    iget-object v6, v6, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v6}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->isCreatingLoader()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 434
    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string/jumbo v8, "Called while creating a loader"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 436
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    if-eq v6, v7, :cond_1

    .line 437
    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string/jumbo v8, "restartLoader must be called on the main thread"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 440
    :cond_1
    sget-boolean v6, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string/jumbo v6, "LoaderManager"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restartLoader in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": args="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 441
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    move v7, v1

    invoke-virtual {v6, v7}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->getLoader(I)Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v6

    move-object v4, v6

    .line 442
    .local v4, "info":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    const/4 v6, 0x0

    move-object v5, v6

    .line 443
    .local v5, "priorLoader":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    move-object v6, v4

    if-eqz v6, :cond_3

    .line 444
    move-object v6, v4

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->destroy(Z)Landroidx/loader/content/Loader;

    move-result-object v6

    move-object v5, v6

    .line 447
    :cond_3
    move-object v6, v0

    move v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v5

    invoke-direct {v6, v7, v8, v9, v10}, Landroidx/loader/app/LoaderManagerImpl;->createAndInstallLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;Landroidx/loader/content/Loader;)Landroidx/loader/content/Loader;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Landroidx/loader/app/LoaderManagerImpl;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 486
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManagerImpl;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v2

    .line 487
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v2, v1

    const-string/jumbo v3, "LoaderManager{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 488
    move-object v2, v1

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 489
    move-object v2, v1

    const-string/jumbo v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 490
    move-object v2, v0

    iget-object v2, v2, Landroidx/loader/app/LoaderManagerImpl;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/core/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 491
    move-object v2, v1

    const-string/jumbo v3, "}}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 492
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/loader/app/LoaderManagerImpl;
    return-object v0
.end method
