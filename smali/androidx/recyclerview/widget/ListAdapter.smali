.class public abstract Landroidx/recyclerview/widget/ListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter",
        "<TVH;>;"
    }
.end annotation


# instance fields
.field private final mHelper:Landroidx/recyclerview/widget/AsyncListDiffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/AsyncListDiffer",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroidx/recyclerview/widget/AsyncDifferConfig;)V
    .locals 9
    .param p1    # Landroidx/recyclerview/widget/AsyncDifferConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/AsyncDifferConfig",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ListAdapter;, "Landroidx/recyclerview/widget/ListAdapter<TT;TVH;>;"
    move-object v1, p1

    .local v1, "config":Landroidx/recyclerview/widget/AsyncDifferConfig;, "Landroidx/recyclerview/widget/AsyncDifferConfig<TT;>;"
    move-object v2, v0

    invoke-direct {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 106
    move-object v2, v0

    new-instance v3, Landroidx/recyclerview/widget/AsyncListDiffer;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Landroidx/recyclerview/widget/AdapterListUpdateCallback;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Landroidx/recyclerview/widget/AdapterListUpdateCallback;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroidx/recyclerview/widget/AsyncListDiffer;-><init>(Landroidx/recyclerview/widget/ListUpdateCallback;Landroidx/recyclerview/widget/AsyncDifferConfig;)V

    iput-object v3, v2, Landroidx/recyclerview/widget/ListAdapter;->mHelper:Landroidx/recyclerview/widget/AsyncListDiffer;

    .line 107
    return-void
.end method

.method protected constructor <init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V
    .locals 10
    .param p1    # Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ListAdapter;, "Landroidx/recyclerview/widget/ListAdapter<TT;TVH;>;"
    move-object v1, p1

    .local v1, "diffCallback":Landroidx/recyclerview/widget/DiffUtil$ItemCallback;, "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<TT;>;"
    move-object v2, v0

    invoke-direct {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 100
    move-object v2, v0

    new-instance v3, Landroidx/recyclerview/widget/AsyncListDiffer;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    new-instance v5, Landroidx/recyclerview/widget/AdapterListUpdateCallback;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Landroidx/recyclerview/widget/AdapterListUpdateCallback;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v6, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-direct {v7, v8}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 101
    invoke-virtual {v6}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->build()Landroidx/recyclerview/widget/AsyncDifferConfig;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroidx/recyclerview/widget/AsyncListDiffer;-><init>(Landroidx/recyclerview/widget/ListUpdateCallback;Landroidx/recyclerview/widget/AsyncDifferConfig;)V

    iput-object v3, v2, Landroidx/recyclerview/widget/ListAdapter;->mHelper:Landroidx/recyclerview/widget/AsyncListDiffer;

    .line 102
    return-void
.end method


# virtual methods
.method protected getItem(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ListAdapter;, "Landroidx/recyclerview/widget/ListAdapter<TT;TVH;>;"
    move v1, p1

    .local v1, "position":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/ListAdapter;->mHelper:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object v2

    move v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/ListAdapter;, "Landroidx/recyclerview/widget/ListAdapter<TT;TVH;>;"
    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ListAdapter;, "Landroidx/recyclerview/widget/ListAdapter<TT;TVH;>;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/ListAdapter;->mHelper:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/ListAdapter;, "Landroidx/recyclerview/widget/ListAdapter<TT;TVH;>;"
    return v0
.end method

.method public submitList(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ListAdapter;, "Landroidx/recyclerview/widget/ListAdapter<TT;TVH;>;"
    move-object v1, p1

    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/ListAdapter;->mHelper:Landroidx/recyclerview/widget/AsyncListDiffer;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/AsyncListDiffer;->submitList(Ljava/util/List;)V

    .line 120
    return-void
.end method
