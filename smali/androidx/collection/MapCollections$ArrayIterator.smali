.class final Landroidx/collection/MapCollections$ArrayIterator;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/collection/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ArrayIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field mCanRemove:Z

.field mIndex:I

.field final mOffset:I

.field mSize:I

.field final synthetic this$0:Landroidx/collection/MapCollections;


# direct methods
.method constructor <init>(Landroidx/collection/MapCollections;I)V
    .locals 5

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$ArrayIterator;, "Landroidx/collection/MapCollections<TK;TV;>.ArrayIterator<TT;>;"
    move-object v1, p1

    .local v1, "this$0":Landroidx/collection/MapCollections;
    move v2, p2

    .local v2, "offset":I
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/collection/MapCollections$ArrayIterator;->this$0:Landroidx/collection/MapCollections;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 41
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/collection/MapCollections$ArrayIterator;->mCanRemove:Z

    .line 44
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/collection/MapCollections$ArrayIterator;->mOffset:I

    .line 45
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/collection/MapCollections;->colGetSize()I

    move-result v4

    iput v4, v3, Landroidx/collection/MapCollections$ArrayIterator;->mSize:I

    .line 46
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$ArrayIterator;, "Landroidx/collection/MapCollections<TK;TV;>.ArrayIterator<TT;>;"
    move-object v1, v0

    iget v1, v1, Landroidx/collection/MapCollections$ArrayIterator;->mIndex:I

    move-object v2, v0

    iget v2, v2, Landroidx/collection/MapCollections$ArrayIterator;->mSize:I

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/collection/MapCollections$ArrayIterator;, "Landroidx/collection/MapCollections<TK;TV;>.ArrayIterator<TT;>;"
    return v0

    .restart local v0    # "this":Landroidx/collection/MapCollections$ArrayIterator;, "Landroidx/collection/MapCollections<TK;TV;>.ArrayIterator<TT;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$ArrayIterator;, "Landroidx/collection/MapCollections<TK;TV;>.ArrayIterator<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/collection/MapCollections$ArrayIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/NoSuchElementException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 56
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/MapCollections$ArrayIterator;->this$0:Landroidx/collection/MapCollections;

    move-object v3, v0

    iget v3, v3, Landroidx/collection/MapCollections$ArrayIterator;->mIndex:I

    move-object v4, v0

    iget v4, v4, Landroidx/collection/MapCollections$ArrayIterator;->mOffset:I

    invoke-virtual {v2, v3, v4}, Landroidx/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 57
    .local v1, "res":Ljava/lang/Object;
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroidx/collection/MapCollections$ArrayIterator;->mIndex:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroidx/collection/MapCollections$ArrayIterator;->mIndex:I

    .line 58
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/collection/MapCollections$ArrayIterator;->mCanRemove:Z

    .line 59
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Landroidx/collection/MapCollections$ArrayIterator;, "Landroidx/collection/MapCollections<TK;TV;>.ArrayIterator<TT;>;"
    return-object v0
.end method

.method public remove()V
    .locals 5

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Landroidx/collection/MapCollections$ArrayIterator;, "Landroidx/collection/MapCollections<TK;TV;>.ArrayIterator<TT;>;"
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/collection/MapCollections$ArrayIterator;->mCanRemove:Z

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 67
    :cond_0
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Landroidx/collection/MapCollections$ArrayIterator;->mIndex:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroidx/collection/MapCollections$ArrayIterator;->mIndex:I

    .line 68
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Landroidx/collection/MapCollections$ArrayIterator;->mSize:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroidx/collection/MapCollections$ArrayIterator;->mSize:I

    .line 69
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/collection/MapCollections$ArrayIterator;->mCanRemove:Z

    .line 70
    move-object v1, v0

    iget-object v1, v1, Landroidx/collection/MapCollections$ArrayIterator;->this$0:Landroidx/collection/MapCollections;

    move-object v2, v0

    iget v2, v2, Landroidx/collection/MapCollections$ArrayIterator;->mIndex:I

    invoke-virtual {v1, v2}, Landroidx/collection/MapCollections;->colRemoveAt(I)V

    .line 71
    return-void
.end method
