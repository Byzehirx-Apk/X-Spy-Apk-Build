.class public final Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;
.super Ljava/lang/Object;
.source "DirectedAcyclicGraph.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mGraph:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap",
            "<TT;",
            "Ljava/util/ArrayList",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final mListPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool",
            "<",
            "Ljava/util/ArrayList",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final mSortResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mSortTmpMarked:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;, "Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 40
    move-object v1, v0

    new-instance v2, Landroidx/core/util/Pools$SimplePool;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    iput-object v2, v1, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mListPool:Landroidx/core/util/Pools$Pool;

    .line 41
    move-object v1, v0

    new-instance v2, Landroidx/collection/SimpleArrayMap;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v2, v1, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mGraph:Landroidx/collection/SimpleArrayMap;

    .line 43
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mSortResult:Ljava/util/ArrayList;

    .line 44
    move-object v1, v0

    new-instance v2, Ljava/util/HashSet;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v1, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mSortTmpMarked:Ljava/util/HashSet;

    return-void
.end method

.method private dfs(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/ArrayList",
            "<TT;>;",
            "Ljava/util/HashSet",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;, "Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph<TT;>;"
    move-object v1, p1

    .local v1, "node":Ljava/lang/Object;, "TT;"
    move-object v2, p2

    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    move-object v3, p3

    .local v3, "tmpMarked":Ljava/util/HashSet;, "Ljava/util/HashSet<TT;>;"
    move-object v7, v2

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 176
    .line 194
    :goto_0
    return-void

    .line 178
    :cond_0
    move-object v7, v3

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 179
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string/jumbo v9, "This graph contains cyclic dependencies"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 182
    :cond_1
    move-object v7, v3

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 184
    move-object v7, v0

    iget-object v7, v7, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mGraph:Landroidx/collection/SimpleArrayMap;

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    move-object v4, v7

    .line 185
    .local v4, "edges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    move-object v7, v4

    if-eqz v7, :cond_2

    .line 186
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    move-object v7, v4

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v6, v7

    .local v6, "size":I
    :goto_1
    move v7, v5

    move v8, v6

    if-ge v7, v8, :cond_2

    .line 187
    move-object v7, v0

    move-object v8, v4

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v2

    move-object v10, v3

    invoke-direct {v7, v8, v9, v10}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->dfs(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    .line 186
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 191
    .end local v5    # "i":I
    .end local v6    # "size":I
    :cond_2
    move-object v7, v3

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v7

    .line 193
    move-object v7, v2

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 194
    goto :goto_0
.end method

.method private getEmptyList()Ljava/util/ArrayList;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;, "Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mListPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v2}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move-object v1, v2

    .line 206
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 207
    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 209
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;, "Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph<TT;>;"
    return-object v0
.end method

.method private poolList(Ljava/util/ArrayList;)V
    .locals 4
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;, "Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph<TT;>;"
    move-object v1, p1

    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    move-object v2, v1

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 214
    move-object v2, v0

    iget-object v2, v2, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mListPool:Landroidx/core/util/Pools$Pool;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result v2

    .line 215
    return-void
.end method


# virtual methods
.method public addEdge(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;, "Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph<TT;>;"
    move-object v1, p1

    .local v1, "node":Ljava/lang/Object;, "TT;"
    move-object v2, p2

    .local v2, "incomingEdge":Ljava/lang/Object;, "TT;"
    move-object v4, v0

    iget-object v4, v4, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mGraph:Landroidx/collection/SimpleArrayMap;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mGraph:Landroidx/collection/SimpleArrayMap;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 77
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "All nodes must be present in the graph before being added as an edge"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 81
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mGraph:Landroidx/collection/SimpleArrayMap;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object v3, v4

    .line 82
    .local v3, "edges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    move-object v4, v3

    if-nez v4, :cond_2

    .line 84
    move-object v4, v0

    invoke-direct {v4}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->getEmptyList()Ljava/util/ArrayList;

    move-result-object v4

    move-object v3, v4

    .line 85
    move-object v4, v0

    iget-object v4, v4, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mGraph:Landroidx/collection/SimpleArrayMap;

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 88
    :cond_2
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 89
    return-void
.end method

.method public addNode(Ljava/lang/Object;)V
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;, "Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph<TT;>;"
    move-object v1, p1

    .local v1, "node":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    iget-object v2, v2, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mGraph:Landroidx/collection/SimpleArrayMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 55
    move-object v2, v0

    iget-object v2, v2, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mGraph:Landroidx/collection/SimpleArrayMap;

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 57
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 6

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;, "Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph<TT;>;"
    const/4 v4, 0x0

    move v1, v4

    .local v1, "i":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mGraph:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v4}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v4

    move v2, v4

    .local v2, "size":I
    :goto_0
    move v4, v1

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 144
    move-object v4, v0

    iget-object v4, v4, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mGraph:Landroidx/collection/SimpleArrayMap;

    move v5, v1

    invoke-virtual {v4, v5}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object v3, v4

    .line 145
    .local v3, "edges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 146
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->poolList(Ljava/util/ArrayList;)V

    .line 143
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    .end local v3    # "edges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mGraph:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v4}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 150
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;, "Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph<TT;>;"
    move-object v1, p1

    .local v1, "node":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    iget-object v2, v2, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mGraph:Landroidx/collection/SimpleArrayMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;, "Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph<TT;>;"
    return v0
.end method

.method public getIncomingEdges(Ljava/lang/Object;)Ljava/util/List;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List;"
        }
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;, "Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph<TT;>;"
    move-object v1, p1

    .local v1, "node":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    iget-object v2, v2, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mGraph:Landroidx/collection/SimpleArrayMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object v0, v2

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;, "Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph<TT;>;"
    return-object v0
.end method

.method public getOutgoingEdges(Ljava/lang/Object;)Ljava/util/List;
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;, "Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph<TT;>;"
    move-object v1, p1

    .local v1, "node":Ljava/lang/Object;, "TT;"
    const/4 v6, 0x0

    move-object v2, v6

    .line 110
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mGraph:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v6}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v6

    move v4, v6

    .local v4, "size":I
    :goto_0
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_2

    .line 111
    move-object v6, v0

    iget-object v6, v6, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mGraph:Landroidx/collection/SimpleArrayMap;

    move v7, v3

    invoke-virtual {v6, v7}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    move-object v5, v6

    .line 112
    .local v5, "edges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    move-object v6, v5

    if-eqz v6, :cond_1

    move-object v6, v5

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 113
    move-object v6, v2

    if-nez v6, :cond_0

    .line 114
    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v6

    .line 116
    :cond_0
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mGraph:Landroidx/collection/SimpleArrayMap;

    move v8, v3

    invoke-virtual {v7, v8}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 110
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    .end local v5    # "edges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_2
    move-object v6, v2

    move-object v0, v6

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;, "Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph<TT;>;"
    return-object v0
.end method

.method public getSortedList()Ljava/util/ArrayList;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;, "Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph<TT;>;"
    move-object v3, v0

    iget-object v3, v3, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mSortResult:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 163
    move-object v3, v0

    iget-object v3, v3, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mSortTmpMarked:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 166
    const/4 v3, 0x0

    move v1, v3

    .local v1, "i":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mGraph:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v3}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v3

    move v2, v3

    .local v2, "size":I
    :goto_0
    move v3, v1

    move v4, v2

    if-ge v3, v4, :cond_0

    .line 167
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mGraph:Landroidx/collection/SimpleArrayMap;

    move v5, v1

    invoke-virtual {v4, v5}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mSortResult:Ljava/util/ArrayList;

    move-object v6, v0

    iget-object v6, v6, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mSortTmpMarked:Ljava/util/HashSet;

    invoke-direct {v3, v4, v5, v6}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->dfs(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mSortResult:Ljava/util/ArrayList;

    move-object v0, v3

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;, "Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph<TT;>;"
    return-object v0
.end method

.method public hasOutgoingEdges(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;, "Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph<TT;>;"
    move-object v1, p1

    .local v1, "node":Ljava/lang/Object;, "TT;"
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mGraph:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v5}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v5

    move v3, v5

    .local v3, "size":I
    :goto_0
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_1

    .line 131
    move-object v5, v0

    iget-object v5, v5, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mGraph:Landroidx/collection/SimpleArrayMap;

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    move-object v4, v5

    .line 132
    .local v4, "edges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    move-object v5, v4

    if-eqz v5, :cond_0

    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 133
    const/4 v5, 0x1

    move v0, v5

    .line 136
    .end local v0    # "this":Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;, "Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph<TT;>;"
    .end local v4    # "edges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :goto_1
    return v0

    .line 130
    .restart local v0    # "this":Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;, "Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph<TT;>;"
    .restart local v4    # "edges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    .end local v4    # "edges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1
.end method

.method size()I
    .locals 2

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;, "Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mGraph:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;, "Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph<TT;>;"
    return v0
.end method
