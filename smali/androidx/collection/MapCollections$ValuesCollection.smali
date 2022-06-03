.class final Landroidx/collection/MapCollections$ValuesCollection;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/collection/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ValuesCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Collection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/collection/MapCollections;


# direct methods
.method constructor <init>(Landroidx/collection/MapCollections;)V
    .locals 4

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$ValuesCollection;, "Landroidx/collection/MapCollections<TK;TV;>.ValuesCollection;"
    move-object v1, p1

    .local v1, "this$0":Landroidx/collection/MapCollections;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/collection/MapCollections$ValuesCollection;->this$0:Landroidx/collection/MapCollections;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 361
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$ValuesCollection;, "Landroidx/collection/MapCollections<TK;TV;>.ValuesCollection;"
    move-object v1, p1

    .local v1, "object":Ljava/lang/Object;, "TV;"
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
            "<+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 366
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$ValuesCollection;, "Landroidx/collection/MapCollections<TK;TV;>.ValuesCollection;"
    move-object v1, p1

    .local v1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TV;>;"
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
    .line 371
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$ValuesCollection;, "Landroidx/collection/MapCollections<TK;TV;>.ValuesCollection;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/collection/MapCollections$ValuesCollection;->this$0:Landroidx/collection/MapCollections;

    invoke-virtual {v1}, Landroidx/collection/MapCollections;->colClear()V

    .line 372
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 376
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$ValuesCollection;, "Landroidx/collection/MapCollections<TK;TV;>.ValuesCollection;"
    move-object v1, p1

    .local v1, "object":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/MapCollections$ValuesCollection;->this$0:Landroidx/collection/MapCollections;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/collection/MapCollections;->colIndexOfValue(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/collection/MapCollections$ValuesCollection;, "Landroidx/collection/MapCollections<TK;TV;>.ValuesCollection;"
    return v0

    .restart local v0    # "this":Landroidx/collection/MapCollections$ValuesCollection;, "Landroidx/collection/MapCollections<TK;TV;>.ValuesCollection;"
    :cond_0
    const/4 v2, 0x0

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
    .line 381
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$ValuesCollection;, "Landroidx/collection/MapCollections<TK;TV;>.ValuesCollection;"
    move-object v1, p1

    .local v1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v3

    .line 382
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 383
    move-object v3, v0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/collection/MapCollections$ValuesCollection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 384
    const/4 v3, 0x0

    move v0, v3

    .line 387
    .end local v0    # "this":Landroidx/collection/MapCollections$ValuesCollection;, "Landroidx/collection/MapCollections<TK;TV;>.ValuesCollection;"
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/collection/MapCollections$ValuesCollection;, "Landroidx/collection/MapCollections<TK;TV;>.ValuesCollection;"
    :cond_1
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 392
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$ValuesCollection;, "Landroidx/collection/MapCollections<TK;TV;>.ValuesCollection;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/collection/MapCollections$ValuesCollection;->this$0:Landroidx/collection/MapCollections;

    invoke-virtual {v1}, Landroidx/collection/MapCollections;->colGetSize()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/collection/MapCollections$ValuesCollection;, "Landroidx/collection/MapCollections<TK;TV;>.ValuesCollection;"
    return v0

    .restart local v0    # "this":Landroidx/collection/MapCollections$ValuesCollection;, "Landroidx/collection/MapCollections<TK;TV;>.ValuesCollection;"
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
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$ValuesCollection;, "Landroidx/collection/MapCollections<TK;TV;>.ValuesCollection;"
    new-instance v1, Landroidx/collection/MapCollections$ArrayIterator;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    iget-object v3, v3, Landroidx/collection/MapCollections$ValuesCollection;->this$0:Landroidx/collection/MapCollections;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroidx/collection/MapCollections$ArrayIterator;-><init>(Landroidx/collection/MapCollections;I)V

    move-object v0, v1

    .end local v0    # "this":Landroidx/collection/MapCollections$ValuesCollection;, "Landroidx/collection/MapCollections<TK;TV;>.ValuesCollection;"
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$ValuesCollection;, "Landroidx/collection/MapCollections<TK;TV;>.ValuesCollection;"
    move-object v1, p1

    .local v1, "object":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Landroidx/collection/MapCollections$ValuesCollection;->this$0:Landroidx/collection/MapCollections;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/collection/MapCollections;->colIndexOfValue(Ljava/lang/Object;)I

    move-result v3

    move v2, v3

    .line 403
    .local v2, "index":I
    move v3, v2

    if-ltz v3, :cond_0

    .line 404
    move-object v3, v0

    iget-object v3, v3, Landroidx/collection/MapCollections$ValuesCollection;->this$0:Landroidx/collection/MapCollections;

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/collection/MapCollections;->colRemoveAt(I)V

    .line 405
    const/4 v3, 0x1

    move v0, v3

    .line 407
    .end local v0    # "this":Landroidx/collection/MapCollections$ValuesCollection;, "Landroidx/collection/MapCollections<TK;TV;>.ValuesCollection;"
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/collection/MapCollections$ValuesCollection;, "Landroidx/collection/MapCollections<TK;TV;>.ValuesCollection;"
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 412
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$ValuesCollection;, "Landroidx/collection/MapCollections<TK;TV;>.ValuesCollection;"
    move-object v1, p1

    .local v1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/MapCollections$ValuesCollection;->this$0:Landroidx/collection/MapCollections;

    invoke-virtual {v6}, Landroidx/collection/MapCollections;->colGetSize()I

    move-result v6

    move v2, v6

    .line 413
    .local v2, "N":I
    const/4 v6, 0x0

    move v3, v6

    .line 414
    .local v3, "changed":Z
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move v7, v2

    if-ge v6, v7, :cond_1

    .line 415
    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/MapCollections$ValuesCollection;->this$0:Landroidx/collection/MapCollections;

    move v7, v4

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroidx/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 416
    .local v5, "cur":Ljava/lang/Object;
    move-object v6, v1

    move-object v7, v5

    invoke-interface {v6, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 417
    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/MapCollections$ValuesCollection;->this$0:Landroidx/collection/MapCollections;

    move v7, v4

    invoke-virtual {v6, v7}, Landroidx/collection/MapCollections;->colRemoveAt(I)V

    .line 418
    add-int/lit8 v4, v4, -0x1

    .line 419
    add-int/lit8 v2, v2, -0x1

    .line 420
    const/4 v6, 0x1

    move v3, v6

    .line 414
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 423
    .end local v5    # "cur":Ljava/lang/Object;
    :cond_1
    move v6, v3

    move v0, v6

    .end local v0    # "this":Landroidx/collection/MapCollections$ValuesCollection;, "Landroidx/collection/MapCollections<TK;TV;>.ValuesCollection;"
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 428
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$ValuesCollection;, "Landroidx/collection/MapCollections<TK;TV;>.ValuesCollection;"
    move-object v1, p1

    .local v1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/MapCollections$ValuesCollection;->this$0:Landroidx/collection/MapCollections;

    invoke-virtual {v6}, Landroidx/collection/MapCollections;->colGetSize()I

    move-result v6

    move v2, v6

    .line 429
    .local v2, "N":I
    const/4 v6, 0x0

    move v3, v6

    .line 430
    .local v3, "changed":Z
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move v7, v2

    if-ge v6, v7, :cond_1

    .line 431
    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/MapCollections$ValuesCollection;->this$0:Landroidx/collection/MapCollections;

    move v7, v4

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroidx/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 432
    .local v5, "cur":Ljava/lang/Object;
    move-object v6, v1

    move-object v7, v5

    invoke-interface {v6, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 433
    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/MapCollections$ValuesCollection;->this$0:Landroidx/collection/MapCollections;

    move v7, v4

    invoke-virtual {v6, v7}, Landroidx/collection/MapCollections;->colRemoveAt(I)V

    .line 434
    add-int/lit8 v4, v4, -0x1

    .line 435
    add-int/lit8 v2, v2, -0x1

    .line 436
    const/4 v6, 0x1

    move v3, v6

    .line 430
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 439
    .end local v5    # "cur":Ljava/lang/Object;
    :cond_1
    move v6, v3

    move v0, v6

    .end local v0    # "this":Landroidx/collection/MapCollections$ValuesCollection;, "Landroidx/collection/MapCollections<TK;TV;>.ValuesCollection;"
    return v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 444
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$ValuesCollection;, "Landroidx/collection/MapCollections<TK;TV;>.ValuesCollection;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/collection/MapCollections$ValuesCollection;->this$0:Landroidx/collection/MapCollections;

    invoke-virtual {v1}, Landroidx/collection/MapCollections;->colGetSize()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/collection/MapCollections$ValuesCollection;, "Landroidx/collection/MapCollections<TK;TV;>.ValuesCollection;"
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 449
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$ValuesCollection;, "Landroidx/collection/MapCollections<TK;TV;>.ValuesCollection;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/collection/MapCollections$ValuesCollection;->this$0:Landroidx/collection/MapCollections;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/collection/MapCollections;->toArrayHelper(I)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/collection/MapCollections$ValuesCollection;, "Landroidx/collection/MapCollections<TK;TV;>.ValuesCollection;"
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
    .line 454
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$ValuesCollection;, "Landroidx/collection/MapCollections<TK;TV;>.ValuesCollection;"
    move-object v1, p1

    .local v1, "array":[Ljava/lang/Object;, "[TT;"
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/MapCollections$ValuesCollection;->this$0:Landroidx/collection/MapCollections;

    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroidx/collection/MapCollections;->toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/collection/MapCollections$ValuesCollection;, "Landroidx/collection/MapCollections<TK;TV;>.ValuesCollection;"
    return-object v0
.end method
