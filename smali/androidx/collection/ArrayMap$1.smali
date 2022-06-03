.class Landroidx/collection/ArrayMap$1;
.super Landroidx/collection/MapCollections;
.source "ArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/collection/ArrayMap;->getCollection()Landroidx/collection/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/collection/MapCollections",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/collection/ArrayMap;


# direct methods
.method constructor <init>(Landroidx/collection/ArrayMap;)V
    .locals 4

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArrayMap$1;, "Landroidx/collection/ArrayMap$1;"
    move-object v1, p1

    .local v1, "this$0":Landroidx/collection/ArrayMap;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/collection/ArrayMap$1;->this$0:Landroidx/collection/ArrayMap;

    move-object v2, v0

    invoke-direct {v2}, Landroidx/collection/MapCollections;-><init>()V

    return-void
.end method


# virtual methods
.method protected colClear()V
    .locals 2

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArrayMap$1;, "Landroidx/collection/ArrayMap$1;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/collection/ArrayMap$1;->this$0:Landroidx/collection/ArrayMap;

    invoke-virtual {v1}, Landroidx/collection/ArrayMap;->clear()V

    .line 120
    return-void
.end method

.method protected colGetEntry(II)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArrayMap$1;, "Landroidx/collection/ArrayMap$1;"
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "offset":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/collection/ArrayMap$1;->this$0:Landroidx/collection/ArrayMap;

    iget-object v3, v3, Landroidx/collection/ArrayMap;->mArray:[Ljava/lang/Object;

    move v4, v1

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    move v5, v2

    add-int/2addr v4, v5

    aget-object v3, v3, v4

    move-object v0, v3

    .end local v0    # "this":Landroidx/collection/ArrayMap$1;, "Landroidx/collection/ArrayMap$1;"
    return-object v0
.end method

.method protected colGetMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArrayMap$1;, "Landroidx/collection/ArrayMap$1;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/collection/ArrayMap$1;->this$0:Landroidx/collection/ArrayMap;

    move-object v0, v1

    .end local v0    # "this":Landroidx/collection/ArrayMap$1;, "Landroidx/collection/ArrayMap$1;"
    return-object v0
.end method

.method protected colGetSize()I
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArrayMap$1;, "Landroidx/collection/ArrayMap$1;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/collection/ArrayMap$1;->this$0:Landroidx/collection/ArrayMap;

    iget v1, v1, Landroidx/collection/ArrayMap;->mSize:I

    move v0, v1

    .end local v0    # "this":Landroidx/collection/ArrayMap$1;, "Landroidx/collection/ArrayMap$1;"
    return v0
.end method

.method protected colIndexOfKey(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArrayMap$1;, "Landroidx/collection/ArrayMap$1;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/ArrayMap$1;->this$0:Landroidx/collection/ArrayMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/collection/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/collection/ArrayMap$1;, "Landroidx/collection/ArrayMap$1;"
    return v0
.end method

.method protected colIndexOfValue(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArrayMap$1;, "Landroidx/collection/ArrayMap$1;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/ArrayMap$1;->this$0:Landroidx/collection/ArrayMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/collection/ArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/collection/ArrayMap$1;, "Landroidx/collection/ArrayMap$1;"
    return v0
.end method

.method protected colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArrayMap$1;, "Landroidx/collection/ArrayMap$1;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;, "TK;"
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;, "TV;"
    move-object v3, v0

    iget-object v3, v3, Landroidx/collection/ArrayMap$1;->this$0:Landroidx/collection/ArrayMap;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 105
    return-void
.end method

.method protected colRemoveAt(I)V
    .locals 4

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArrayMap$1;, "Landroidx/collection/ArrayMap$1;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/ArrayMap$1;->this$0:Landroidx/collection/ArrayMap;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/collection/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 115
    return-void
.end method

.method protected colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Landroidx/collection/ArrayMap$1;, "Landroidx/collection/ArrayMap$1;"
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;, "TV;"
    move-object v3, v0

    iget-object v3, v3, Landroidx/collection/ArrayMap$1;->this$0:Landroidx/collection/ArrayMap;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/collection/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Landroidx/collection/ArrayMap$1;, "Landroidx/collection/ArrayMap$1;"
    return-object v0
.end method
