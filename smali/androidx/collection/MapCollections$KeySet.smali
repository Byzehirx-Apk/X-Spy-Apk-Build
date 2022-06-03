.class final Landroidx/collection/MapCollections$KeySet;
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
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/collection/MapCollections;


# direct methods
.method constructor <init>(Landroidx/collection/MapCollections;)V
    .locals 4

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$KeySet;, "Landroidx/collection/MapCollections<TK;TV;>.KeySet;"
    move-object v1, p1

    .local v1, "this$0":Landroidx/collection/MapCollections;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/collection/MapCollections$KeySet;->this$0:Landroidx/collection/MapCollections;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$KeySet;, "Landroidx/collection/MapCollections<TK;TV;>.KeySet;"
    move-object v1, p1

    .local v1, "object":Ljava/lang/Object;, "TK;"
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;)Z"
        }
    .end annotation

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$KeySet;, "Landroidx/collection/MapCollections<TK;TV;>.KeySet;"
    move-object v1, p1

    .local v1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$KeySet;, "Landroidx/collection/MapCollections<TK;TV;>.KeySet;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/collection/MapCollections$KeySet;->this$0:Landroidx/collection/MapCollections;

    invoke-virtual {v1}, Landroidx/collection/MapCollections;->colClear()V

    .line 284
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$KeySet;, "Landroidx/collection/MapCollections<TK;TV;>.KeySet;"
    move-object v1, p1

    .local v1, "object":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/MapCollections$KeySet;->this$0:Landroidx/collection/MapCollections;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/collection/MapCollections;->colIndexOfKey(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/collection/MapCollections$KeySet;, "Landroidx/collection/MapCollections<TK;TV;>.KeySet;"
    return v0

    .restart local v0    # "this":Landroidx/collection/MapCollections$KeySet;, "Landroidx/collection/MapCollections<TK;TV;>.KeySet;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$KeySet;, "Landroidx/collection/MapCollections<TK;TV;>.KeySet;"
    move-object v1, p1

    .local v1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/MapCollections$KeySet;->this$0:Landroidx/collection/MapCollections;

    invoke-virtual {v2}, Landroidx/collection/MapCollections;->colGetMap()Ljava/util/Map;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/collection/MapCollections;->containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/collection/MapCollections$KeySet;, "Landroidx/collection/MapCollections<TK;TV;>.KeySet;"
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$KeySet;, "Landroidx/collection/MapCollections<TK;TV;>.KeySet;"
    move-object v1, p1

    .local v1, "object":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/collection/MapCollections;->equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/collection/MapCollections$KeySet;, "Landroidx/collection/MapCollections<TK;TV;>.KeySet;"
    return v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$KeySet;, "Landroidx/collection/MapCollections<TK;TV;>.KeySet;"
    const/4 v4, 0x0

    move v1, v4

    .line 349
    .local v1, "result":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/collection/MapCollections$KeySet;->this$0:Landroidx/collection/MapCollections;

    invoke-virtual {v4}, Landroidx/collection/MapCollections;->colGetSize()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    if-ltz v4, :cond_1

    .line 350
    move-object v4, v0

    iget-object v4, v4, Landroidx/collection/MapCollections$KeySet;->this$0:Landroidx/collection/MapCollections;

    move v5, v2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroidx/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 351
    .local v3, "obj":Ljava/lang/Object;
    move v4, v1

    move-object v5, v3

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :goto_1
    add-int/2addr v4, v5

    move v1, v4

    .line 349
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 351
    :cond_0
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    goto :goto_1

    .line 353
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_1
    move v4, v1

    move v0, v4

    .end local v0    # "this":Landroidx/collection/MapCollections$KeySet;, "Landroidx/collection/MapCollections<TK;TV;>.KeySet;"
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$KeySet;, "Landroidx/collection/MapCollections<TK;TV;>.KeySet;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/collection/MapCollections$KeySet;->this$0:Landroidx/collection/MapCollections;

    invoke-virtual {v1}, Landroidx/collection/MapCollections;->colGetSize()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/collection/MapCollections$KeySet;, "Landroidx/collection/MapCollections<TK;TV;>.KeySet;"
    return v0

    .restart local v0    # "this":Landroidx/collection/MapCollections$KeySet;, "Landroidx/collection/MapCollections<TK;TV;>.KeySet;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$KeySet;, "Landroidx/collection/MapCollections<TK;TV;>.KeySet;"
    new-instance v1, Landroidx/collection/MapCollections$ArrayIterator;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    iget-object v3, v3, Landroidx/collection/MapCollections$KeySet;->this$0:Landroidx/collection/MapCollections;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/collection/MapCollections$ArrayIterator;-><init>(Landroidx/collection/MapCollections;I)V

    move-object v0, v1

    .end local v0    # "this":Landroidx/collection/MapCollections$KeySet;, "Landroidx/collection/MapCollections<TK;TV;>.KeySet;"
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$KeySet;, "Landroidx/collection/MapCollections<TK;TV;>.KeySet;"
    move-object v1, p1

    .local v1, "object":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Landroidx/collection/MapCollections$KeySet;->this$0:Landroidx/collection/MapCollections;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/collection/MapCollections;->colIndexOfKey(Ljava/lang/Object;)I

    move-result v3

    move v2, v3

    .line 309
    .local v2, "index":I
    move v3, v2

    if-ltz v3, :cond_0

    .line 310
    move-object v3, v0

    iget-object v3, v3, Landroidx/collection/MapCollections$KeySet;->this$0:Landroidx/collection/MapCollections;

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/collection/MapCollections;->colRemoveAt(I)V

    .line 311
    const/4 v3, 0x1

    move v0, v3

    .line 313
    .end local v0    # "this":Landroidx/collection/MapCollections$KeySet;, "Landroidx/collection/MapCollections<TK;TV;>.KeySet;"
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/collection/MapCollections$KeySet;, "Landroidx/collection/MapCollections<TK;TV;>.KeySet;"
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$KeySet;, "Landroidx/collection/MapCollections<TK;TV;>.KeySet;"
    move-object v1, p1

    .local v1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/MapCollections$KeySet;->this$0:Landroidx/collection/MapCollections;

    invoke-virtual {v2}, Landroidx/collection/MapCollections;->colGetMap()Ljava/util/Map;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/collection/MapCollections;->removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/collection/MapCollections$KeySet;, "Landroidx/collection/MapCollections<TK;TV;>.KeySet;"
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$KeySet;, "Landroidx/collection/MapCollections<TK;TV;>.KeySet;"
    move-object v1, p1

    .local v1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/MapCollections$KeySet;->this$0:Landroidx/collection/MapCollections;

    invoke-virtual {v2}, Landroidx/collection/MapCollections;->colGetMap()Ljava/util/Map;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/collection/MapCollections;->retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/collection/MapCollections$KeySet;, "Landroidx/collection/MapCollections<TK;TV;>.KeySet;"
    return v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$KeySet;, "Landroidx/collection/MapCollections<TK;TV;>.KeySet;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/collection/MapCollections$KeySet;->this$0:Landroidx/collection/MapCollections;

    invoke-virtual {v1}, Landroidx/collection/MapCollections;->colGetSize()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/collection/MapCollections$KeySet;, "Landroidx/collection/MapCollections<TK;TV;>.KeySet;"
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$KeySet;, "Landroidx/collection/MapCollections<TK;TV;>.KeySet;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/collection/MapCollections$KeySet;->this$0:Landroidx/collection/MapCollections;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/collection/MapCollections;->toArrayHelper(I)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/collection/MapCollections$KeySet;, "Landroidx/collection/MapCollections<TK;TV;>.KeySet;"
    return-object v0
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
    .line 338
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$KeySet;, "Landroidx/collection/MapCollections<TK;TV;>.KeySet;"
    move-object v1, p1

    .local v1, "array":[Ljava/lang/Object;, "[TT;"
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/MapCollections$KeySet;->this$0:Landroidx/collection/MapCollections;

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/collection/MapCollections;->toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/collection/MapCollections$KeySet;, "Landroidx/collection/MapCollections<TK;TV;>.KeySet;"
    return-object v0
.end method
