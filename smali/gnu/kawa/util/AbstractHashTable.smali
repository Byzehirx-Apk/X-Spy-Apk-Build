.class public abstract Lgnu/kawa/util/AbstractHashTable;
.super Ljava/util/AbstractMap;
.source "AbstractHashTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Entry::",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field public static final DEFAULT_INITIAL_SIZE:I = 0x40


# instance fields
.field protected mask:I

.field protected num_bindings:I

.field protected table:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TEntry;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    move-object v1, v0

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Lgnu/kawa/util/AbstractHashTable;-><init>(I)V

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    move v1, p1

    .local v1, "capacity":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/util/AbstractMap;-><init>()V

    .line 38
    const/4 v3, 0x4

    move v2, v3

    .line 39
    .local v2, "log2Size":I
    :goto_0
    move v3, v1

    const/4 v4, 0x1

    move v5, v2

    shl-int/2addr v4, v5

    if-le v3, v4, :cond_0

    .line 40
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    :cond_0
    const/4 v3, 0x1

    move v4, v2

    shl-int/2addr v3, v4

    move v1, v3

    .line 42
    move-object v3, v0

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lgnu/kawa/util/AbstractHashTable;->allocEntries(I)[Ljava/util/Map$Entry;

    move-result-object v4

    iput-object v4, v3, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    .line 43
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lgnu/kawa/util/AbstractHashTable;->mask:I

    .line 44
    return-void
.end method


# virtual methods
.method protected abstract allocEntries(I)[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TEntry;"
        }
    .end annotation
.end method

.method public clear()V
    .locals 8

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    move-object v1, v5

    .line 211
    .local v1, "t":[Ljava/util/Map$Entry;, "[TEntry;"
    move-object v5, v1

    array-length v5, v5

    move v2, v5

    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    move v5, v2

    if-ltz v5, :cond_1

    .line 215
    move-object v5, v1

    move v6, v2

    aget-object v5, v5, v6

    move-object v3, v5

    .local v3, "e":Ljava/util/Map$Entry;, "TEntry;"
    :goto_1
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 217
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Lgnu/kawa/util/AbstractHashTable;->getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v5

    move-object v4, v5

    .line 218
    .local v4, "next":Ljava/util/Map$Entry;, "TEntry;"
    move-object v5, v0

    move-object v6, v3

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lgnu/kawa/util/AbstractHashTable;->setEntryNext(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 219
    move-object v5, v4

    move-object v3, v5

    .line 220
    goto :goto_1

    .line 221
    .end local v4    # "next":Ljava/util/Map$Entry;, "TEntry;"
    :cond_0
    move-object v5, v1

    move v6, v2

    const/4 v7, 0x0

    aput-object v7, v5, v6

    goto :goto_0

    .line 223
    .end local v3    # "e":Ljava/util/Map$Entry;, "TEntry;"
    :cond_1
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lgnu/kawa/util/AbstractHashTable;->num_bindings:I

    .line 224
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    new-instance v1, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;-><init>(Lgnu/kawa/util/AbstractHashTable;)V

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/util/AbstractHashTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    return-object v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "defaultValue":Ljava/lang/Object;, "TV;"
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/kawa/util/AbstractHashTable;->getNode(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    move-object v3, v4

    .line 103
    .local v3, "node":Ljava/util/Map$Entry;, "TEntry;"
    move-object v4, v3

    if-nez v4, :cond_0

    move-object v4, v2

    :goto_0
    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    :cond_0
    move-object v4, v3

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    goto :goto_0
.end method

.method protected abstract getEntryHashCode(Ljava/util/Map$Entry;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEntry;)I"
        }
    .end annotation
.end method

.method protected abstract getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEntry;)TEntry;"
        }
    .end annotation
.end method

.method public getNode(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TEntry;"
        }
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/kawa/util/AbstractHashTable;->hash(Ljava/lang/Object;)I

    move-result v5

    move v2, v5

    .line 89
    .local v2, "hash":I
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Lgnu/kawa/util/AbstractHashTable;->hashToIndex(I)I

    move-result v5

    move v3, v5

    .line 90
    .local v3, "index":I
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 91
    .local v4, "node":Ljava/util/Map$Entry;, "TEntry;"
    :goto_0
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 93
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lgnu/kawa/util/AbstractHashTable;->matches(Ljava/lang/Object;ILjava/util/Map$Entry;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 94
    move-object v5, v4

    move-object v0, v5

    .line 96
    .end local v0    # "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    :goto_1
    return-object v0

    .line 91
    .restart local v0    # "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    :cond_0
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Lgnu/kawa/util/AbstractHashTable;->getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v5

    move-object v4, v5

    goto :goto_0

    .line 96
    :cond_1
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1
.end method

.method public hash(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    return v0

    .restart local v0    # "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method protected hashToIndex(I)I
    .locals 5

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    move v1, p1

    .local v1, "hash":I
    move v2, v1

    move v3, v1

    const/16 v4, 0xf

    ushr-int/lit8 v3, v3, 0xf

    xor-int/2addr v2, v3

    move v1, v2

    .line 61
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/kawa/util/AbstractHashTable;->mask:I

    and-int/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    return v0
.end method

.method protected abstract makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TEntry;"
        }
    .end annotation
.end method

.method protected matches(Ljava/lang/Object;ILjava/util/Map$Entry;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "ITEntry;)Z"
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move v2, p2

    .local v2, "hash":I
    move-object v3, p3

    .local v3, "node":Ljava/util/Map$Entry;, "TEntry;"
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lgnu/kawa/util/AbstractHashTable;->getEntryHashCode(Ljava/util/Map$Entry;)I

    move-result v4

    move v5, v2

    if-ne v4, v5, :cond_0

    move-object v4, v0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Lgnu/kawa/util/AbstractHashTable;->matches(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .end local v0    # "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    return v0

    .restart local v0    # "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected matches(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    move-object v1, p1

    .local v1, "key1":Ljava/lang/Object;, "TK;"
    move-object v2, p2

    .local v2, "key2":Ljava/lang/Object;
    move-object v3, v1

    move-object v4, v2

    if-eq v3, v4, :cond_0

    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    return v0

    .restart local v0    # "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;, "TK;"
    move/from16 v2, p2

    .local v2, "hash":I
    move-object/from16 v3, p3

    .local v3, "value":Ljava/lang/Object;, "TV;"
    move-object v8, v0

    move v9, v2

    invoke-virtual {v8, v9}, Lgnu/kawa/util/AbstractHashTable;->hashToIndex(I)I

    move-result v8

    move v4, v8

    .line 157
    .local v4, "index":I
    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    move v9, v4

    aget-object v8, v8, v9

    move-object v5, v8

    .line 158
    .local v5, "first":Ljava/util/Map$Entry;, "TEntry;"
    move-object v8, v5

    move-object v6, v8

    .line 161
    .local v6, "node":Ljava/util/Map$Entry;, "TEntry;"
    :goto_0
    move-object v8, v6

    if-nez v8, :cond_1

    .line 163
    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Lgnu/kawa/util/AbstractHashTable;->num_bindings:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move-object v12, v8

    move v13, v9

    move v8, v13

    move-object v9, v12

    move v10, v13

    iput v10, v9, Lgnu/kawa/util/AbstractHashTable;->num_bindings:I

    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    array-length v9, v9

    if-lt v8, v9, :cond_0

    .line 165
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/kawa/util/AbstractHashTable;->rehash()V

    .line 166
    move-object v8, v0

    move v9, v2

    invoke-virtual {v8, v9}, Lgnu/kawa/util/AbstractHashTable;->hashToIndex(I)I

    move-result v8

    move v4, v8

    .line 167
    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    move v9, v4

    aget-object v8, v8, v9

    move-object v5, v8

    .line 169
    :cond_0
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    move-object v11, v3

    invoke-virtual {v8, v9, v10, v11}, Lgnu/kawa/util/AbstractHashTable;->makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v8

    move-object v6, v8

    .line 170
    move-object v8, v0

    move-object v9, v6

    move-object v10, v5

    invoke-virtual {v8, v9, v10}, Lgnu/kawa/util/AbstractHashTable;->setEntryNext(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 171
    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    move v9, v4

    move-object v10, v6

    aput-object v10, v8, v9

    .line 172
    const/4 v8, 0x0

    move-object v0, v8

    .line 178
    .end local v0    # "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    :goto_1
    return-object v0

    .line 174
    .restart local v0    # "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    :cond_1
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    move-object v11, v6

    invoke-virtual {v8, v9, v10, v11}, Lgnu/kawa/util/AbstractHashTable;->matches(Ljava/lang/Object;ILjava/util/Map$Entry;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 176
    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    .line 177
    .local v7, "oldValue":Ljava/lang/Object;, "TV;"
    move-object v8, v6

    move-object v9, v3

    invoke-interface {v8, v9}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 178
    move-object v8, v7

    move-object v0, v8

    goto :goto_1

    .line 180
    .end local v7    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_2
    move-object v8, v0

    move-object v9, v6

    invoke-virtual {v8, v9}, Lgnu/kawa/util/AbstractHashTable;->getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v8

    move-object v6, v8

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;, "TK;"
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;, "TV;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/kawa/util/AbstractHashTable;->hash(Ljava/lang/Object;)I

    move-result v5

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lgnu/kawa/util/AbstractHashTable;->put(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    return-object v0
.end method

.method protected rehash()V
    .locals 16

    .prologue
    .line 108
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    move-object v13, v0

    iget-object v13, v13, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    move-object v1, v13

    .line 109
    .local v1, "oldTable":[Ljava/util/Map$Entry;, "[TEntry;"
    move-object v13, v1

    array-length v13, v13

    move v2, v13

    .line 110
    .local v2, "oldCapacity":I
    const/4 v13, 0x2

    move v14, v2

    mul-int/2addr v13, v14

    move v3, v13

    .line 111
    .local v3, "newCapacity":I
    move-object v13, v0

    move v14, v3

    invoke-virtual {v13, v14}, Lgnu/kawa/util/AbstractHashTable;->allocEntries(I)[Ljava/util/Map$Entry;

    move-result-object v13

    move-object v4, v13

    .line 112
    .local v4, "newTable":[Ljava/util/Map$Entry;, "[TEntry;"
    move v13, v3

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    move v5, v13

    .line 113
    .local v5, "newMask":I
    move-object v13, v0

    move-object v14, v4

    iput-object v14, v13, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    .line 114
    move-object v13, v0

    move v14, v5

    iput v14, v13, Lgnu/kawa/util/AbstractHashTable;->mask:I

    .line 115
    move v13, v2

    move v6, v13

    .local v6, "i":I
    :goto_0
    add-int/lit8 v6, v6, -0x1

    move v13, v6

    if-ltz v13, :cond_3

    .line 117
    move-object v13, v1

    move v14, v6

    aget-object v13, v13, v14

    move-object v7, v13

    .line 118
    .local v7, "chain":Ljava/util/Map$Entry;, "TEntry;"
    move-object v13, v7

    if-eqz v13, :cond_1

    move-object v13, v0

    move-object v14, v7

    invoke-virtual {v13, v14}, Lgnu/kawa/util/AbstractHashTable;->getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 124
    const/4 v13, 0x0

    move-object v8, v13

    .line 127
    .local v8, "prev":Ljava/util/Map$Entry;, "TEntry;"
    :cond_0
    move-object v13, v7

    move-object v9, v13

    .line 128
    .local v9, "node":Ljava/util/Map$Entry;, "TEntry;"
    move-object v13, v0

    move-object v14, v9

    invoke-virtual {v13, v14}, Lgnu/kawa/util/AbstractHashTable;->getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v13

    move-object v7, v13

    .line 129
    move-object v13, v0

    move-object v14, v9

    move-object v15, v8

    invoke-virtual {v13, v14, v15}, Lgnu/kawa/util/AbstractHashTable;->setEntryNext(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 130
    move-object v13, v9

    move-object v8, v13

    .line 132
    move-object v13, v7

    if-nez v13, :cond_0

    .line 133
    move-object v13, v8

    move-object v7, v13

    .line 136
    .end local v8    # "prev":Ljava/util/Map$Entry;, "TEntry;"
    .end local v9    # "node":Ljava/util/Map$Entry;, "TEntry;"
    :cond_1
    move-object v13, v7

    move-object v8, v13

    .local v8, "element":Ljava/util/Map$Entry;, "TEntry;"
    :goto_1
    move-object v13, v8

    if-eqz v13, :cond_2

    .line 138
    move-object v13, v0

    move-object v14, v8

    invoke-virtual {v13, v14}, Lgnu/kawa/util/AbstractHashTable;->getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v13

    move-object v9, v13

    .line 139
    .local v9, "next":Ljava/util/Map$Entry;, "TEntry;"
    move-object v13, v0

    move-object v14, v8

    invoke-virtual {v13, v14}, Lgnu/kawa/util/AbstractHashTable;->getEntryHashCode(Ljava/util/Map$Entry;)I

    move-result v13

    move v10, v13

    .line 140
    .local v10, "hash":I
    move-object v13, v0

    move v14, v10

    invoke-virtual {v13, v14}, Lgnu/kawa/util/AbstractHashTable;->hashToIndex(I)I

    move-result v13

    move v11, v13

    .line 141
    .local v11, "j":I
    move-object v13, v4

    move v14, v11

    aget-object v13, v13, v14

    move-object v12, v13

    .line 142
    .local v12, "head":Ljava/util/Map$Entry;, "TEntry;"
    move-object v13, v0

    move-object v14, v8

    move-object v15, v12

    invoke-virtual {v13, v14, v15}, Lgnu/kawa/util/AbstractHashTable;->setEntryNext(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 143
    move-object v13, v4

    move v14, v11

    move-object v15, v8

    aput-object v15, v13, v14

    .line 144
    move-object v13, v9

    move-object v8, v13

    .line 145
    goto :goto_1

    .line 146
    .end local v9    # "next":Ljava/util/Map$Entry;, "TEntry;"
    .end local v10    # "hash":I
    .end local v11    # "j":I
    .end local v12    # "head":Ljava/util/Map$Entry;, "TEntry;"
    :cond_2
    goto :goto_0

    .line 147
    .end local v7    # "chain":Ljava/util/Map$Entry;, "TEntry;"
    .end local v8    # "element":Ljava/util/Map$Entry;, "TEntry;"
    :cond_3
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Lgnu/kawa/util/AbstractHashTable;->hash(Ljava/lang/Object;)I

    move-result v7

    move v2, v7

    .line 187
    .local v2, "hash":I
    move-object v7, v0

    move v8, v2

    invoke-virtual {v7, v8}, Lgnu/kawa/util/AbstractHashTable;->hashToIndex(I)I

    move-result v7

    move v3, v7

    .line 188
    .local v3, "index":I
    const/4 v7, 0x0

    move-object v4, v7

    .line 189
    .local v4, "prev":Ljava/util/Map$Entry;, "TEntry;"
    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    move v8, v3

    aget-object v7, v7, v8

    move-object v5, v7

    .line 190
    .local v5, "node":Ljava/util/Map$Entry;, "TEntry;"
    :goto_0
    move-object v7, v5

    if-eqz v7, :cond_2

    .line 192
    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v7, v8}, Lgnu/kawa/util/AbstractHashTable;->getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v7

    move-object v6, v7

    .line 193
    .local v6, "next":Ljava/util/Map$Entry;, "TEntry;"
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move-object v10, v5

    invoke-virtual {v7, v8, v9, v10}, Lgnu/kawa/util/AbstractHashTable;->matches(Ljava/lang/Object;ILjava/util/Map$Entry;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 195
    move-object v7, v4

    if-nez v7, :cond_0

    .line 196
    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    move v8, v3

    move-object v9, v6

    aput-object v9, v7, v8

    .line 199
    :goto_1
    move-object v7, v0

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget v8, v8, Lgnu/kawa/util/AbstractHashTable;->num_bindings:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Lgnu/kawa/util/AbstractHashTable;->num_bindings:I

    .line 200
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    .line 205
    .end local v0    # "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    .end local v6    # "next":Ljava/util/Map$Entry;, "TEntry;"
    :goto_2
    return-object v0

    .line 198
    .restart local v0    # "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    .restart local v6    # "next":Ljava/util/Map$Entry;, "TEntry;"
    :cond_0
    move-object v7, v0

    move-object v8, v4

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Lgnu/kawa/util/AbstractHashTable;->setEntryNext(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    goto :goto_1

    .line 202
    :cond_1
    move-object v7, v5

    move-object v4, v7

    .line 203
    move-object v7, v6

    move-object v5, v7

    .line 204
    goto :goto_0

    .line 205
    .end local v6    # "next":Ljava/util/Map$Entry;, "TEntry;"
    :cond_2
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_2
.end method

.method protected abstract setEntryNext(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEntry;TEntry;)V"
        }
    .end annotation
.end method

.method public size()I
    .locals 2

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    move-object v1, v0

    iget v1, v1, Lgnu/kawa/util/AbstractHashTable;->num_bindings:I

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    return v0
.end method
