.class Lgnu/text/CharMap;
.super Lgnu/kawa/util/AbstractWeakHashTable;
.source "Char.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/kawa/util/AbstractWeakHashTable",
        "<",
        "Lgnu/text/Char;",
        "Lgnu/text/Char;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Lgnu/text/CharMap;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/util/AbstractWeakHashTable;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Lgnu/text/Char;
    .locals 10

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Lgnu/text/CharMap;
    move v1, p1

    .local v1, "key":I
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/text/CharMap;->cleanup()V

    .line 277
    move v6, v1

    move v2, v6

    .line 278
    .local v2, "hash":I
    move-object v6, v0

    move v7, v2

    invoke-virtual {v6, v7}, Lgnu/text/CharMap;->hashToIndex(I)I

    move-result v6

    move v3, v6

    .line 279
    .local v3, "index":I
    move-object v6, v0

    iget-object v6, v6, Lgnu/text/CharMap;->table:[Ljava/util/Map$Entry;

    check-cast v6, [Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    move v7, v3

    aget-object v6, v6, v7

    move-object v4, v6

    .line 280
    .local v4, "node":Lgnu/kawa/util/AbstractWeakHashTable$WEntry;, "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<Lgnu/text/Char;Lgnu/text/Char;>;"
    :goto_0
    move-object v6, v4

    if-eqz v6, :cond_1

    .line 282
    move-object v6, v4

    invoke-virtual {v6}, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/text/Char;

    move-object v5, v6

    .line 283
    .local v5, "val":Lgnu/text/Char;
    move-object v6, v5

    if-eqz v6, :cond_0

    move-object v6, v5

    invoke-virtual {v6}, Lgnu/text/Char;->intValue()I

    move-result v6

    move v7, v1

    if-ne v6, v7, :cond_0

    .line 284
    move-object v6, v5

    move-object v0, v6

    .line 288
    .end local v0    # "this":Lgnu/text/CharMap;
    .end local v4    # "node":Lgnu/kawa/util/AbstractWeakHashTable$WEntry;, "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<Lgnu/text/Char;Lgnu/text/Char;>;"
    .end local v5    # "val":Lgnu/text/Char;
    :goto_1
    return-object v0

    .line 280
    .restart local v0    # "this":Lgnu/text/CharMap;
    .restart local v4    # "node":Lgnu/kawa/util/AbstractWeakHashTable$WEntry;, "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<Lgnu/text/Char;Lgnu/text/Char;>;"
    .restart local v5    # "val":Lgnu/text/Char;
    :cond_0
    move-object v6, v4

    iget-object v6, v6, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->next:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    move-object v4, v6

    goto :goto_0

    .line 286
    .end local v5    # "val":Lgnu/text/Char;
    :cond_1
    new-instance v6, Lgnu/text/Char;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move v8, v1

    invoke-direct {v7, v8}, Lgnu/text/Char;-><init>(I)V

    move-object v4, v6

    .line 287
    .local v4, "val":Lgnu/text/Char;
    move-object v6, v0

    move-object v7, v4

    move-object v8, v4

    invoke-super {v6, v7, v8}, Lgnu/kawa/util/AbstractWeakHashTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 288
    move-object v6, v4

    move-object v0, v6

    goto :goto_1
.end method

.method protected getKeyFromValue(Lgnu/text/Char;)Lgnu/text/Char;
    .locals 3

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Lgnu/text/CharMap;
    move-object v1, p1

    .local v1, "ch":Lgnu/text/Char;
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lgnu/text/CharMap;
    return-object v0
.end method

.method protected bridge synthetic getKeyFromValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Lgnu/text/CharMap;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/text/Char;

    invoke-virtual {v2, v3}, Lgnu/text/CharMap;->getKeyFromValue(Lgnu/text/Char;)Lgnu/text/Char;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/text/CharMap;
    return-object v0
.end method

.method protected matches(Lgnu/text/Char;Lgnu/text/Char;)Z
    .locals 5

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Lgnu/text/CharMap;
    move-object v1, p1

    .local v1, "oldValue":Lgnu/text/Char;
    move-object v2, p2

    .local v2, "newValue":Lgnu/text/Char;
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/text/Char;->intValue()I

    move-result v3

    move-object v4, v2

    invoke-virtual {v4}, Lgnu/text/Char;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lgnu/text/CharMap;
    return v0

    .restart local v0    # "this":Lgnu/text/CharMap;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
