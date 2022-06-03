.class final Landroidx/collection/MapCollections$MapIterator;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/collection/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field mEnd:I

.field mEntryValid:Z

.field mIndex:I

.field final synthetic this$0:Landroidx/collection/MapCollections;


# direct methods
.method constructor <init>(Landroidx/collection/MapCollections;)V
    .locals 5

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$MapIterator;, "Landroidx/collection/MapCollections<TK;TV;>.MapIterator;"
    move-object v1, p1

    .local v1, "this$0":Landroidx/collection/MapCollections;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/collection/MapCollections$MapIterator;->this$0:Landroidx/collection/MapCollections;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 77
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/collection/MapCollections$MapIterator;->mEntryValid:Z

    .line 80
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroidx/collection/MapCollections;->colGetSize()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroidx/collection/MapCollections$MapIterator;->mEnd:I

    .line 81
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/collection/MapCollections$MapIterator;->mIndex:I

    .line 82
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$MapIterator;, "Landroidx/collection/MapCollections<TK;TV;>.MapIterator;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/collection/MapCollections$MapIterator;->mEntryValid:Z

    if-nez v3, :cond_0

    .line 138
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "This container does not support retaining Map.Entry objects"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 141
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Ljava/util/Map$Entry;

    if-nez v3, :cond_1

    .line 142
    const/4 v3, 0x0

    move v0, v3

    .line 146
    .end local v0    # "this":Landroidx/collection/MapCollections$MapIterator;, "Landroidx/collection/MapCollections<TK;TV;>.MapIterator;"
    :goto_0
    return v0

    .line 144
    .restart local v0    # "this":Landroidx/collection/MapCollections$MapIterator;, "Landroidx/collection/MapCollections<TK;TV;>.MapIterator;"
    :cond_1
    move-object v3, v1

    check-cast v3, Ljava/util/Map$Entry;

    move-object v2, v3

    .line 145
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/collection/MapCollections$MapIterator;->this$0:Landroidx/collection/MapCollections;

    move-object v5, v0

    iget v5, v5, Landroidx/collection/MapCollections$MapIterator;->mIndex:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroidx/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/collection/ContainerHelpers;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v2

    .line 146
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/collection/MapCollections$MapIterator;->this$0:Landroidx/collection/MapCollections;

    move-object v5, v0

    iget v5, v5, Landroidx/collection/MapCollections$MapIterator;->mIndex:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroidx/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/collection/ContainerHelpers;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$MapIterator;, "Landroidx/collection/MapCollections<TK;TV;>.MapIterator;"
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/collection/MapCollections$MapIterator;->mEntryValid:Z

    if-nez v1, :cond_0

    .line 111
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "This container does not support retaining Map.Entry objects"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/collection/MapCollections$MapIterator;->this$0:Landroidx/collection/MapCollections;

    move-object v2, v0

    iget v2, v2, Landroidx/collection/MapCollections$MapIterator;->mIndex:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroidx/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/collection/MapCollections$MapIterator;, "Landroidx/collection/MapCollections<TK;TV;>.MapIterator;"
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$MapIterator;, "Landroidx/collection/MapCollections<TK;TV;>.MapIterator;"
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/collection/MapCollections$MapIterator;->mEntryValid:Z

    if-nez v1, :cond_0

    .line 120
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "This container does not support retaining Map.Entry objects"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/collection/MapCollections$MapIterator;->this$0:Landroidx/collection/MapCollections;

    move-object v2, v0

    iget v2, v2, Landroidx/collection/MapCollections$MapIterator;->mIndex:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroidx/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/collection/MapCollections$MapIterator;, "Landroidx/collection/MapCollections<TK;TV;>.MapIterator;"
    return-object v0
.end method

.method public hasNext()Z
    .locals 3

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$MapIterator;, "Landroidx/collection/MapCollections<TK;TV;>.MapIterator;"
    move-object v1, v0

    iget v1, v1, Landroidx/collection/MapCollections$MapIterator;->mIndex:I

    move-object v2, v0

    iget v2, v2, Landroidx/collection/MapCollections$MapIterator;->mEnd:I

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/collection/MapCollections$MapIterator;, "Landroidx/collection/MapCollections<TK;TV;>.MapIterator;"
    return v0

    .restart local v0    # "this":Landroidx/collection/MapCollections$MapIterator;, "Landroidx/collection/MapCollections<TK;TV;>.MapIterator;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$MapIterator;, "Landroidx/collection/MapCollections<TK;TV;>.MapIterator;"
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/collection/MapCollections$MapIterator;->mEntryValid:Z

    if-nez v3, :cond_0

    .line 152
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "This container does not support retaining Map.Entry objects"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 155
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/collection/MapCollections$MapIterator;->this$0:Landroidx/collection/MapCollections;

    move-object v4, v0

    iget v4, v4, Landroidx/collection/MapCollections$MapIterator;->mIndex:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroidx/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    .line 156
    .local v1, "key":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Landroidx/collection/MapCollections$MapIterator;->this$0:Landroidx/collection/MapCollections;

    move-object v4, v0

    iget v4, v4, Landroidx/collection/MapCollections$MapIterator;->mIndex:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroidx/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 157
    .local v2, "value":Ljava/lang/Object;
    move-object v3, v1

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    move-object v4, v2

    if-nez v4, :cond_2

    const/4 v4, 0x0

    .line 158
    :goto_1
    xor-int/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Landroidx/collection/MapCollections$MapIterator;, "Landroidx/collection/MapCollections<TK;TV;>.MapIterator;"
    return v0

    .line 157
    .restart local v0    # "this":Landroidx/collection/MapCollections$MapIterator;, "Landroidx/collection/MapCollections<TK;TV;>.MapIterator;"
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_0

    :cond_2
    move-object v4, v2

    .line 158
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$MapIterator;, "Landroidx/collection/MapCollections<TK;TV;>.MapIterator;"
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/collection/MapCollections$MapIterator;->next()Ljava/util/Map$Entry;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/collection/MapCollections$MapIterator;, "Landroidx/collection/MapCollections<TK;TV;>.MapIterator;"
    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$MapIterator;, "Landroidx/collection/MapCollections<TK;TV;>.MapIterator;"
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/collection/MapCollections$MapIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 92
    :cond_0
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Landroidx/collection/MapCollections$MapIterator;->mIndex:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroidx/collection/MapCollections$MapIterator;->mIndex:I

    .line 93
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/collection/MapCollections$MapIterator;->mEntryValid:Z

    .line 94
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Landroidx/collection/MapCollections$MapIterator;, "Landroidx/collection/MapCollections<TK;TV;>.MapIterator;"
    return-object v0
.end method

.method public remove()V
    .locals 5

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$MapIterator;, "Landroidx/collection/MapCollections<TK;TV;>.MapIterator;"
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/collection/MapCollections$MapIterator;->mEntryValid:Z

    if-nez v1, :cond_0

    .line 100
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 102
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/collection/MapCollections$MapIterator;->this$0:Landroidx/collection/MapCollections;

    move-object v2, v0

    iget v2, v2, Landroidx/collection/MapCollections$MapIterator;->mIndex:I

    invoke-virtual {v1, v2}, Landroidx/collection/MapCollections;->colRemoveAt(I)V

    .line 103
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Landroidx/collection/MapCollections$MapIterator;->mIndex:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroidx/collection/MapCollections$MapIterator;->mIndex:I

    .line 104
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Landroidx/collection/MapCollections$MapIterator;->mEnd:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroidx/collection/MapCollections$MapIterator;->mEnd:I

    .line 105
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/collection/MapCollections$MapIterator;->mEntryValid:Z

    .line 106
    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$MapIterator;, "Landroidx/collection/MapCollections<TK;TV;>.MapIterator;"
    move-object v1, p1

    .local v1, "object":Ljava/lang/Object;, "TV;"
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/collection/MapCollections$MapIterator;->mEntryValid:Z

    if-nez v2, :cond_0

    .line 129
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "This container does not support retaining Map.Entry objects"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 132
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/MapCollections$MapIterator;->this$0:Landroidx/collection/MapCollections;

    move-object v3, v0

    iget v3, v3, Landroidx/collection/MapCollections$MapIterator;->mIndex:I

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroidx/collection/MapCollections;->colSetValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/collection/MapCollections$MapIterator;, "Landroidx/collection/MapCollections<TK;TV;>.MapIterator;"
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$MapIterator;, "Landroidx/collection/MapCollections<TK;TV;>.MapIterator;"
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/collection/MapCollections$MapIterator;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/collection/MapCollections$MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/collection/MapCollections$MapIterator;, "Landroidx/collection/MapCollections<TK;TV;>.MapIterator;"
    return-object v0
.end method
