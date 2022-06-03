.class final Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel$1;
.super Ljava/lang/Object;
.source "LoaderManagerImpl.java"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 5
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel$1;
    move-object v1, p1

    .local v1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v2, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;-><init>()V

    move-object v0, v2

    .end local v0    # "this":Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel$1;
    return-object v0
.end method
