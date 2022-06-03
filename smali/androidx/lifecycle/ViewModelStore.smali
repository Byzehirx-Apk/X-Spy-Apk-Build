.class public Landroidx/lifecycle/ViewModelStore;
.super Ljava/lang/Object;
.source "ViewModelStore.java"


# instance fields
.field private final mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroidx/lifecycle/ViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/ViewModelStore;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Landroidx/lifecycle/ViewModelStore;->mMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 4

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/ViewModelStore;
    move-object v3, v0

    iget-object v3, v3, Landroidx/lifecycle/ViewModelStore;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/ViewModel;

    move-object v2, v3

    .line 56
    .local v2, "vm":Landroidx/lifecycle/ViewModel;
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 57
    goto :goto_0

    .line 58
    .end local v2    # "vm":Landroidx/lifecycle/ViewModel;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/lifecycle/ViewModelStore;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 59
    return-void
.end method

.method final get(Ljava/lang/String;)Landroidx/lifecycle/ViewModel;
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/ViewModelStore;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Landroidx/lifecycle/ViewModelStore;->mMap:Ljava/util/HashMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/ViewModel;

    move-object v0, v2

    .end local v0    # "this":Landroidx/lifecycle/ViewModelStore;
    return-object v0
.end method

.method final put(Ljava/lang/String;Landroidx/lifecycle/ViewModel;)V
    .locals 7

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/ViewModelStore;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "viewModel":Landroidx/lifecycle/ViewModel;
    move-object v4, v0

    iget-object v4, v4, Landroidx/lifecycle/ViewModelStore;->mMap:Ljava/util/HashMap;

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/lifecycle/ViewModel;

    move-object v3, v4

    .line 42
    .local v3, "oldViewModel":Landroidx/lifecycle/ViewModel;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 43
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 45
    :cond_0
    return-void
.end method
