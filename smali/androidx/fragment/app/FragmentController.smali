.class public Landroidx/fragment/app/FragmentController;
.super Ljava/lang/Object;
.source "FragmentController.java"


# instance fields
.field private final mHost:Landroidx/fragment/app/FragmentHostCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/fragment/app/FragmentHostCallback",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/fragment/app/FragmentHostCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentHostCallback",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentController;
    move-object v1, p1

    .local v1, "callbacks":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<*>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 53
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 54
    return-void
.end method

.method public static createController(Landroidx/fragment/app/FragmentHostCallback;)Landroidx/fragment/app/FragmentController;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentHostCallback",
            "<*>;)",
            "Landroidx/fragment/app/FragmentController;"
        }
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "callbacks":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<*>;"
    new-instance v1, Landroidx/fragment/app/FragmentController;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/fragment/app/FragmentController;-><init>(Landroidx/fragment/app/FragmentHostCallback;)V

    move-object v0, v1

    .end local v0    # "callbacks":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<*>;"
    return-object v0
.end method


# virtual methods
.method public attachHost(Landroidx/fragment/app/Fragment;)V
    .locals 6

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentController;
    move-object v1, p1

    .local v1, "parent":Landroidx/fragment/app/Fragment;
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v2, v2, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Landroidx/fragment/app/FragmentManagerImpl;->attachController(Landroidx/fragment/app/FragmentHostCallback;Landroidx/fragment/app/FragmentContainer;Landroidx/fragment/app/Fragment;)V

    .line 106
    return-void
.end method

.method public dispatchActivityCreated()V
    .locals 2

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentController;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v1, v1, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchActivityCreated()V

    .line 202
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentController;
    move-object v1, p1

    .local v1, "newConfig":Landroid/content/res/Configuration;
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v2, v2, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 308
    return-void
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    .line 369
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentController;
    move-object v1, p1

    .local v1, "item":Landroid/view/MenuItem;
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v2, v2, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/fragment/app/FragmentController;
    return v0
.end method

.method public dispatchCreate()V
    .locals 2

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentController;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v1, v1, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchCreate()V

    .line 191
    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 6

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentController;
    move-object v1, p1

    .local v1, "menu":Landroid/view/Menu;
    move-object v2, p2

    .local v2, "inflater":Landroid/view/MenuInflater;
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v3, v3, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/fragment/app/FragmentController;
    return v0
.end method

.method public dispatchDestroy()V
    .locals 2

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentController;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v1, v1, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchDestroy()V

    .line 275
    return-void
.end method

.method public dispatchDestroyView()V
    .locals 2

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentController;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v1, v1, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchDestroyView()V

    .line 264
    return-void
.end method

.method public dispatchLowMemory()V
    .locals 2

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentController;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v1, v1, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchLowMemory()V

    .line 320
    return-void
.end method

.method public dispatchMultiWindowModeChanged(Z)V
    .locals 4

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentController;
    move v1, p1

    .local v1, "isInMultiWindowMode":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v2, v2, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchMultiWindowModeChanged(Z)V

    .line 286
    return-void
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    .line 356
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentController;
    move-object v1, p1

    .local v1, "item":Landroid/view/MenuItem;
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v2, v2, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/fragment/app/FragmentController;
    return v0
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 4

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentController;
    move-object v1, p1

    .local v1, "menu":Landroid/view/Menu;
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v2, v2, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    .line 381
    return-void
.end method

.method public dispatchPause()V
    .locals 2

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentController;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v1, v1, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchPause()V

    .line 235
    return-void
.end method

.method public dispatchPictureInPictureModeChanged(Z)V
    .locals 4

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentController;
    move v1, p1

    .local v1, "isInPictureInPictureMode":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v2, v2, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchPictureInPictureModeChanged(Z)V

    .line 297
    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentController;
    move-object v1, p1

    .local v1, "menu":Landroid/view/Menu;
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v2, v2, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/fragment/app/FragmentController;
    return v0
.end method

.method public dispatchReallyStop()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 253
    return-void
.end method

.method public dispatchResume()V
    .locals 2

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentController;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v1, v1, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchResume()V

    .line 224
    return-void
.end method

.method public dispatchStart()V
    .locals 2

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentController;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v1, v1, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStart()V

    .line 213
    return-void
.end method

.method public dispatchStop()V
    .locals 2

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentController;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v1, v1, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStop()V

    .line 246
    return-void
.end method

.method public doLoaderDestroy()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 432
    return-void
.end method

.method public doLoaderRetain()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 423
    return-void
.end method

.method public doLoaderStart()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 401
    return-void
.end method

.method public doLoaderStop(Z)V
    .locals 0
    .param p1, "retain"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 414
    return-void
.end method

.method public dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 473
    return-void
.end method

.method public execPendingActions()Z
    .locals 2

    .prologue
    .line 391
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentController;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v1, v1, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/FragmentController;
    return v0
.end method

.method public findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentController;
    move-object v1, p1

    .local v1, "who":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v2, v2, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/fragment/app/FragmentController;
    return-object v0
.end method

.method public getActiveFragments(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentController;
    move-object v1, p1

    .local v1, "actives":Ljava/util/List;, "Ljava/util/List<Landroidx/fragment/app/Fragment;>;"
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v2, v2, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManagerImpl;->getActiveFragments()Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/fragment/app/FragmentController;
    return-object v0
.end method

.method public getActiveFragmentsCount()I
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentController;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v1, v1, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->getActiveFragmentCount()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/FragmentController;
    return v0
.end method

.method public getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentController;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getFragmentManagerImpl()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/FragmentController;
    return-object v0
.end method

.method public getSupportLoaderManager()Landroidx/loader/app/LoaderManager;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentController;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "Loaders are managed separately from FragmentController, use LoaderManager.getInstance() to obtain a LoaderManager."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public noteStateNotSaved()V
    .locals 2

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentController;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v1, v1, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 128
    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 10

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentController;
    move-object v1, p1

    .local v1, "parent":Landroid/view/View;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, p3

    .local v3, "context":Landroid/content/Context;
    move-object v4, p4

    .local v4, "attrs":Landroid/util/AttributeSet;
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v5, v5, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/fragment/app/FragmentManagerImpl;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Landroidx/fragment/app/FragmentController;
    return-object v0
.end method

.method public reportLoaderStart()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 441
    return-void
.end method

.method public restoreAllState(Landroid/os/Parcelable;Landroidx/fragment/app/FragmentManagerNonConfig;)V
    .locals 6

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentController;
    move-object v1, p1

    .local v1, "state":Landroid/os/Parcelable;
    move-object v2, p2

    .local v2, "nonConfig":Landroidx/fragment/app/FragmentManagerNonConfig;
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v3, v3, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/fragment/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Landroidx/fragment/app/FragmentManagerNonConfig;)V

    .line 159
    return-void
.end method

.method public restoreAllState(Landroid/os/Parcelable;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/List",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentController;
    move-object v1, p1

    .local v1, "state":Landroid/os/Parcelable;
    move-object v2, p2

    .local v2, "nonConfigList":Ljava/util/List;, "Ljava/util/List<Landroidx/fragment/app/Fragment;>;"
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v3, v3, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v4, v1

    new-instance v5, Landroidx/fragment/app/FragmentManagerNonConfig;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroidx/fragment/app/FragmentManagerNonConfig;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v4, v5}, Landroidx/fragment/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Landroidx/fragment/app/FragmentManagerNonConfig;)V

    .line 149
    return-void
.end method

.method public restoreLoaderNonConfig(Landroidx/collection/SimpleArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroidx/loader/app/LoaderManager;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 464
    .local p1, "loaderManagers":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<Ljava/lang/String;Landroidx/loader/app/LoaderManager;>;"
    return-void
.end method

.method public retainLoaderNonConfig()Landroidx/collection/SimpleArrayMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroidx/loader/app/LoaderManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 451
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentController;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/FragmentController;
    return-object v0
.end method

.method public retainNestedNonConfig()Landroidx/fragment/app/FragmentManagerNonConfig;
    .locals 2

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentController;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v1, v1, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->retainNonConfig()Landroidx/fragment/app/FragmentManagerNonConfig;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/FragmentController;
    return-object v0
.end method

.method public retainNonConfig()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentController;
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v2, v2, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManagerImpl;->retainNonConfig()Landroidx/fragment/app/FragmentManagerNonConfig;

    move-result-object v2

    move-object v1, v2

    .line 171
    .local v1, "nonconf":Landroidx/fragment/app/FragmentManagerNonConfig;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v2

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Landroidx/fragment/app/FragmentController;
    return-object v0

    .restart local v0    # "this":Landroidx/fragment/app/FragmentController;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public saveAllState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentController;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v1, v1, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/FragmentController;
    return-object v0
.end method
