.class final Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;
.super Ljava/lang/Object;
.source "PreFillQueue.java"


# instance fields
.field private final bitmapsPerType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/bumptech/glide/load/engine/prefill/PreFillType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private bitmapsRemaining:I

.field private keyIndex:I

.field private final keyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/engine/prefill/PreFillType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/bumptech/glide/load/engine/prefill/PreFillType;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;
    move-object v1, p1

    .local v1, "bitmapsPerType":Ljava/util/Map;, "Ljava/util/Map<Lcom/bumptech/glide/load/engine/prefill/PreFillType;Ljava/lang/Integer;>;"
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 15
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->bitmapsPerType:Ljava/util/Map;

    .line 17
    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, v4, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->keyList:Ljava/util/List;

    .line 19
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move-object v3, v4

    .line 20
    .local v3, "count":Ljava/lang/Integer;
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->bitmapsRemaining:I

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->bitmapsRemaining:I

    .line 21
    goto :goto_0

    .line 22
    .end local v3    # "count":Ljava/lang/Integer;
    :cond_0
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;
    move-object v1, v0

    iget v1, v1, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->bitmapsRemaining:I

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;
    move-object v1, v0

    iget v1, v1, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->bitmapsRemaining:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;
    return v0

    .restart local v0    # "this":Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public remove()Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    .locals 8

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->keyList:Ljava/util/List;

    move-object v4, v0

    iget v4, v4, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->keyIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/engine/prefill/PreFillType;

    move-object v1, v3

    .line 27
    .local v1, "result":Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->bitmapsPerType:Ljava/util/Map;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move-object v2, v3

    .line 28
    .local v2, "countForResult":Ljava/lang/Integer;
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 29
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->bitmapsPerType:Ljava/util/Map;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 30
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->keyList:Ljava/util/List;

    move-object v4, v0

    iget v4, v4, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->keyIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    .line 34
    :goto_0
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->bitmapsRemaining:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->bitmapsRemaining:I

    .line 37
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->keyList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    :goto_1
    iput v4, v3, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->keyIndex:I

    .line 39
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;
    return-object v0

    .line 32
    .restart local v0    # "this":Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->bitmapsPerType:Ljava/util/Map;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 37
    :cond_1
    move-object v4, v0

    iget v4, v4, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->keyIndex:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->keyList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    rem-int/2addr v4, v5

    goto :goto_1
.end method
