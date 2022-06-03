.class final Landroidx/collection/MapCollections$EntrySet;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/collection/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/collection/MapCollections;


# direct methods
.method constructor <init>(Landroidx/collection/MapCollections;)V
    .locals 4

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    move-object v1, p1

    .local v1, "this$0":Landroidx/collection/MapCollections;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/collection/MapCollections$EntrySet;->this$0:Landroidx/collection/MapCollections;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/util/Map$Entry;

    invoke-virtual {v2, v3}, Landroidx/collection/MapCollections$EntrySet;->add(Ljava/util/Map$Entry;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    return v0
.end method

.method public add(Ljava/util/Map$Entry;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    move-object v1, p1

    .local v1, "object":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)Z"
        }
    .end annotation

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    move-object v1, p1

    .local v1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/Map$Entry<TK;TV;>;>;"
    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/MapCollections$EntrySet;->this$0:Landroidx/collection/MapCollections;

    invoke-virtual {v5}, Landroidx/collection/MapCollections;->colGetSize()I

    move-result v5

    move v2, v5

    .line 176
    .local v2, "oldSize":I
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    move-object v4, v5

    .line 177
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/MapCollections$EntrySet;->this$0:Landroidx/collection/MapCollections;

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroidx/collection/MapCollections;->colPut(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 178
    goto :goto_0

    .line 179
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/MapCollections$EntrySet;->this$0:Landroidx/collection/MapCollections;

    invoke-virtual {v6}, Landroidx/collection/MapCollections;->colGetSize()I

    move-result v6

    if-eq v5, v6, :cond_1

    const/4 v5, 0x1

    :goto_1
    move v0, v5

    .end local v0    # "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    return v0

    .restart local v0    # "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/collection/MapCollections$EntrySet;->this$0:Landroidx/collection/MapCollections;

    invoke-virtual {v1}, Landroidx/collection/MapCollections;->colClear()V

    .line 185
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v5, v1

    instance-of v5, v5, Ljava/util/Map$Entry;

    if-nez v5, :cond_0

    .line 190
    const/4 v5, 0x0

    move v0, v5

    .line 197
    .end local v0    # "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    :goto_0
    return v0

    .line 191
    .restart local v0    # "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    :cond_0
    move-object v5, v1

    check-cast v5, Ljava/util/Map$Entry;

    move-object v2, v5

    .line 192
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/MapCollections$EntrySet;->this$0:Landroidx/collection/MapCollections;

    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/collection/MapCollections;->colIndexOfKey(Ljava/lang/Object;)I

    move-result v5

    move v3, v5

    .line 193
    .local v3, "index":I
    move v5, v3

    if-gez v5, :cond_1

    .line 194
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 196
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/MapCollections$EntrySet;->this$0:Landroidx/collection/MapCollections;

    move v6, v3

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroidx/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 197
    .local v4, "foundVal":Ljava/lang/Object;
    move-object v5, v4

    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/collection/ContainerHelpers;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    move v0, v5

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    move-object v1, p1

    .local v1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v3

    .line 203
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 204
    move-object v3, v0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/collection/MapCollections$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 205
    const/4 v3, 0x0

    move v0, v3

    .line 208
    .end local v0    # "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    :cond_1
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    move-object v1, p1

    .local v1, "object":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/collection/MapCollections;->equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    return v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    const/4 v5, 0x0

    move v1, v5

    .line 259
    .local v1, "result":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/MapCollections$EntrySet;->this$0:Landroidx/collection/MapCollections;

    invoke-virtual {v5}, Landroidx/collection/MapCollections;->colGetSize()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v2, v5

    .local v2, "i":I
    :goto_0
    move v5, v2

    if-ltz v5, :cond_2

    .line 260
    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/MapCollections$EntrySet;->this$0:Landroidx/collection/MapCollections;

    move v6, v2

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroidx/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 261
    .local v3, "key":Ljava/lang/Object;
    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/MapCollections$EntrySet;->this$0:Landroidx/collection/MapCollections;

    move v6, v2

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroidx/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 262
    .local v4, "value":Ljava/lang/Object;
    move v5, v1

    move-object v6, v3

    if-nez v6, :cond_0

    const/4 v6, 0x0

    :goto_1
    move-object v7, v4

    if-nez v7, :cond_1

    const/4 v7, 0x0

    .line 263
    :goto_2
    xor-int/2addr v6, v7

    add-int/2addr v5, v6

    move v1, v5

    .line 259
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 262
    :cond_0
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    goto :goto_1

    :cond_1
    move-object v7, v4

    .line 263
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_2

    .line 265
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_2
    move v5, v1

    move v0, v5

    .end local v0    # "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/collection/MapCollections$EntrySet;->this$0:Landroidx/collection/MapCollections;

    invoke-virtual {v1}, Landroidx/collection/MapCollections;->colGetSize()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    return v0

    .restart local v0    # "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    new-instance v1, Landroidx/collection/MapCollections$MapIterator;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Landroidx/collection/MapCollections$EntrySet;->this$0:Landroidx/collection/MapCollections;

    invoke-direct {v2, v3}, Landroidx/collection/MapCollections$MapIterator;-><init>(Landroidx/collection/MapCollections;)V

    move-object v0, v1

    .end local v0    # "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    move-object v1, p1

    .local v1, "object":Ljava/lang/Object;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    move-object v1, p1

    .local v1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    move-object v1, p1

    .local v1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public size()I
    .locals 2

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/collection/MapCollections$EntrySet;->this$0:Landroidx/collection/MapCollections;

    invoke-virtual {v1}, Landroidx/collection/MapCollections;->colGetSize()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    move-object v1, p1

    .local v1, "array":[Ljava/lang/Object;, "[TT;"
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method
