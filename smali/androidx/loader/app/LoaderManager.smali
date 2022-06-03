.class public abstract Landroidx/loader/app/LoaderManager;
.super Ljava/lang/Object;
.source "LoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManager;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static enableDebugLogging(Z)V
    .locals 2

    .prologue
    .line 235
    move v0, p0

    .local v0, "enabled":Z
    move v1, v0

    sput-boolean v1, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    .line 236
    return-void
.end method

.method public static getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;
    .locals 6
    .param p0    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/lifecycle/LifecycleOwner;",
            ":",
            "Landroidx/lifecycle/ViewModelStoreOwner;",
            ">(TT;)",
            "Landroidx/loader/app/LoaderManager;"
        }
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "owner":Landroidx/lifecycle/LifecycleOwner;, "TT;"
    new-instance v1, Landroidx/loader/app/LoaderManagerImpl;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    move-object v4, v0

    check-cast v4, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-interface {v4}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroidx/loader/app/LoaderManagerImpl;-><init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/ViewModelStore;)V

    move-object v0, v1

    .end local v0    # "owner":Landroidx/lifecycle/LifecycleOwner;, "TT;"
    return-object v0
.end method


# virtual methods
.method public abstract destroyLoader(I)V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getLoader(I)Landroidx/loader/content/Loader;
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
.end method

.method public hasRunningLoaders()Z
    .locals 2

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManager;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/loader/app/LoaderManager;
    return v0
.end method

.method public abstract initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;
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
.end method

.method public abstract markForRedelivery()V
.end method

.method public abstract restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;
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
.end method
