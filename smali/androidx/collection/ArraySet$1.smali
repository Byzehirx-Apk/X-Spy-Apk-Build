.class Landroidx/collection/ArraySet$1;
.super Landroidx/collection/MapCollections;
.source "ArraySet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/collection/ArraySet;->getCollection()Landroidx/collection/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/collection/MapCollections",
        "<TE;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/collection/ArraySet;


# direct methods
.method constructor <init>(Landroidx/collection/ArraySet;)V
    .locals 4

    .prologue
    .line 667
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArraySet$1;, "Landroidx/collection/ArraySet$1;"
    move-object v1, p1

    .local v1, "this$0":Landroidx/collection/ArraySet;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/collection/ArraySet$1;->this$0:Landroidx/collection/ArraySet;

    move-object v2, v0

    invoke-direct {v2}, Landroidx/collection/MapCollections;-><init>()V

    return-void
.end method


# virtual methods
.method protected colClear()V
    .locals 2

    .prologue
    .line 710
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArraySet$1;, "Landroidx/collection/ArraySet$1;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/collection/ArraySet$1;->this$0:Landroidx/collection/ArraySet;

    invoke-virtual {v1}, Landroidx/collection/ArraySet;->clear()V

    .line 711
    return-void
.end method

.method protected colGetEntry(II)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 675
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArraySet$1;, "Landroidx/collection/ArraySet$1;"
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "offset":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/collection/ArraySet$1;->this$0:Landroidx/collection/ArraySet;

    iget-object v3, v3, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    move v4, v1

    aget-object v3, v3, v4

    move-object v0, v3

    .end local v0    # "this":Landroidx/collection/ArraySet$1;, "Landroidx/collection/ArraySet$1;"
    return-object v0
.end method

.method protected colGetMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TE;TE;>;"
        }
    .end annotation

    .prologue
    .line 690
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArraySet$1;, "Landroidx/collection/ArraySet$1;"
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "not a map"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected colGetSize()I
    .locals 2

    .prologue
    .line 670
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArraySet$1;, "Landroidx/collection/ArraySet$1;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/collection/ArraySet$1;->this$0:Landroidx/collection/ArraySet;

    iget v1, v1, Landroidx/collection/ArraySet;->mSize:I

    move v0, v1

    .end local v0    # "this":Landroidx/collection/ArraySet$1;, "Landroidx/collection/ArraySet$1;"
    return v0
.end method

.method protected colIndexOfKey(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 680
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArraySet$1;, "Landroidx/collection/ArraySet$1;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/ArraySet$1;->this$0:Landroidx/collection/ArraySet;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/collection/ArraySet$1;, "Landroidx/collection/ArraySet$1;"
    return v0
.end method

.method protected colIndexOfValue(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 685
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArraySet$1;, "Landroidx/collection/ArraySet$1;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/ArraySet$1;->this$0:Landroidx/collection/ArraySet;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/collection/ArraySet$1;, "Landroidx/collection/ArraySet$1;"
    return v0
.end method

.method protected colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .prologue
    .line 695
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArraySet$1;, "Landroidx/collection/ArraySet$1;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;, "TE;"
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;, "TE;"
    move-object v3, v0

    iget-object v3, v3, Landroidx/collection/ArraySet$1;->this$0:Landroidx/collection/ArraySet;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 696
    return-void
.end method

.method protected colRemoveAt(I)V
    .locals 4

    .prologue
    .line 705
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArraySet$1;, "Landroidx/collection/ArraySet$1;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/ArraySet$1;->this$0:Landroidx/collection/ArraySet;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/collection/ArraySet;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 706
    return-void
.end method

.method protected colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 700
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArraySet$1;, "Landroidx/collection/ArraySet$1;"
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;, "TE;"
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "not a map"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
