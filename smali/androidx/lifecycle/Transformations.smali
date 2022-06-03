.class public Landroidx/lifecycle/Transformations;
.super Ljava/lang/Object;
.source "Transformations.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/Transformations;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static map(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;
    .locals 10
    .param p0    # Landroidx/lifecycle/LiveData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/arch/core/util/Function;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData",
            "<TX;>;",
            "Landroidx/arch/core/util/Function",
            "<TX;TY;>;)",
            "Landroidx/lifecycle/LiveData",
            "<TY;>;"
        }
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "source":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TX;>;"
    move-object v1, p1

    .local v1, "mapFunction":Landroidx/arch/core/util/Function;, "Landroidx/arch/core/util/Function<TX;TY;>;"
    new-instance v3, Landroidx/lifecycle/MediatorLiveData;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    move-object v2, v3

    .line 72
    .local v2, "result":Landroidx/lifecycle/MediatorLiveData;, "Landroidx/lifecycle/MediatorLiveData<TY;>;"
    move-object v3, v2

    move-object v4, v0

    new-instance v5, Landroidx/lifecycle/Transformations$1;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Landroidx/lifecycle/Transformations$1;-><init>(Landroidx/lifecycle/MediatorLiveData;Landroidx/arch/core/util/Function;)V

    invoke-virtual {v3, v4, v5}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 78
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "source":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TX;>;"
    return-object v0
.end method

.method public static switchMap(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;
    .locals 10
    .param p0    # Landroidx/lifecycle/LiveData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/arch/core/util/Function;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData",
            "<TX;>;",
            "Landroidx/arch/core/util/Function",
            "<TX;",
            "Landroidx/lifecycle/LiveData",
            "<TY;>;>;)",
            "Landroidx/lifecycle/LiveData",
            "<TY;>;"
        }
    .end annotation

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "source":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TX;>;"
    move-object v1, p1

    .local v1, "switchMapFunction":Landroidx/arch/core/util/Function;, "Landroidx/arch/core/util/Function<TX;Landroidx/lifecycle/LiveData<TY;>;>;"
    new-instance v3, Landroidx/lifecycle/MediatorLiveData;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    move-object v2, v3

    .line 136
    .local v2, "result":Landroidx/lifecycle/MediatorLiveData;, "Landroidx/lifecycle/MediatorLiveData<TY;>;"
    move-object v3, v2

    move-object v4, v0

    new-instance v5, Landroidx/lifecycle/Transformations$2;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Landroidx/lifecycle/Transformations$2;-><init>(Landroidx/arch/core/util/Function;Landroidx/lifecycle/MediatorLiveData;)V

    invoke-virtual {v3, v4, v5}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 159
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "source":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TX;>;"
    return-object v0
.end method
