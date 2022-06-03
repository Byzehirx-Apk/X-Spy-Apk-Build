.class Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;
.super Ljava/lang/Object;
.source "GroupedLinkedMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final head:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final keyToEntry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;, "Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap<TK;TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 18
    move-object v1, v0

    new-instance v2, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;-><init>()V

    iput-object v2, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->head:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 19
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->keyToEntry:Ljava/util/Map;

    .line 114
    return-void
.end method

.method private makeHead(Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;, "Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "entry":Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;, "Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry<TK;TV;>;"
    move-object v2, v1

    invoke-static {v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->removeEntry(Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;)V

    .line 91
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->head:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    iput-object v3, v2, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->prev:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 92
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->head:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->next:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    iput-object v3, v2, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->next:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 93
    move-object v2, v1

    invoke-static {v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->updateEntry(Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;)V

    .line 94
    return-void
.end method

.method private makeTail(Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;, "Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "entry":Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;, "Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry<TK;TV;>;"
    move-object v2, v1

    invoke-static {v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->removeEntry(Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;)V

    .line 99
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->head:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->prev:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    iput-object v3, v2, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->prev:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 100
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->head:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    iput-object v3, v2, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->next:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 101
    move-object v2, v1

    invoke-static {v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->updateEntry(Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;)V

    .line 102
    return-void
.end method

.method private static removeEntry(Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "entry":Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;, "Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->prev:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->next:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    iput-object v2, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->next:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 111
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->next:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->prev:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    iput-object v2, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->prev:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 112
    return-void
.end method

.method private static updateEntry(Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "entry":Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;, "Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->next:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    move-object v2, v0

    iput-object v2, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->prev:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 106
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->prev:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    move-object v2, v0

    iput-object v2, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->next:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 107
    return-void
.end method


# virtual methods
.method public get(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;, "Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;, "TK;"
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->keyToEntry:Ljava/util/Map;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    move-object v2, v3

    .line 37
    .local v2, "entry":Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;, "Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry<TK;TV;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    .line 38
    new-instance v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;-><init>(Ljava/lang/Object;)V

    move-object v2, v3

    .line 39
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->keyToEntry:Ljava/util/Map;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 44
    :goto_0
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->makeHead(Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;)V

    .line 46
    move-object v3, v2

    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->removeLast()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;, "Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap<TK;TV;>;"
    return-object v0

    .line 41
    .restart local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;, "Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap<TK;TV;>;"
    :cond_0
    move-object v3, v1

    invoke-interface {v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;->offer()V

    goto :goto_0
.end method

.method public put(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;, "Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;, "TK;"
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;, "TV;"
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->keyToEntry:Ljava/util/Map;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    move-object v3, v4

    .line 24
    .local v3, "entry":Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;, "Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry<TK;TV;>;"
    move-object v4, v3

    if-nez v4, :cond_0

    .line 25
    new-instance v4, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;-><init>(Ljava/lang/Object;)V

    move-object v3, v4

    .line 26
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->makeTail(Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;)V

    .line 27
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->keyToEntry:Ljava/util/Map;

    move-object v5, v1

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 32
    :goto_0
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->add(Ljava/lang/Object;)V

    .line 33
    return-void

    .line 29
    :cond_0
    move-object v4, v1

    invoke-interface {v4}, Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;->offer()V

    goto :goto_0
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;, "Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap<TK;TV;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->head:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->prev:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    move-object v1, v3

    .line 52
    .local v1, "last":Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;, "Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry<TK;TV;>;"
    :goto_0
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->head:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 53
    move-object v3, v1

    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->removeLast()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 54
    .local v2, "removed":Ljava/lang/Object;, "TV;"
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 55
    move-object v3, v2

    move-object v0, v3

    .line 69
    .end local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;, "Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap<TK;TV;>;"
    .end local v2    # "removed":Ljava/lang/Object;, "TV;"
    :goto_1
    return-object v0

    .line 61
    .restart local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;, "Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap<TK;TV;>;"
    .restart local v2    # "removed":Ljava/lang/Object;, "TV;"
    :cond_0
    move-object v3, v1

    invoke-static {v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->removeEntry(Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;)V

    .line 62
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->keyToEntry:Ljava/util/Map;

    move-object v4, v1

    invoke-static {v4}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->access$000(Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 63
    move-object v3, v1

    invoke-static {v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->access$000(Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;

    invoke-interface {v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;->offer()V

    .line 66
    move-object v3, v1

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->prev:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    move-object v1, v3

    .line 67
    goto :goto_0

    .line 69
    .end local v2    # "removed":Ljava/lang/Object;, "TV;"
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;, "Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap<TK;TV;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "GroupedLinkedMap( "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 75
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->head:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->next:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    move-object v2, v4

    .line 76
    .local v2, "current":Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;, "Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry<TK;TV;>;"
    const/4 v4, 0x0

    move v3, v4

    .line 77
    .local v3, "hadAtLeastOneItem":Z
    :goto_0
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->head:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 78
    const/4 v4, 0x1

    move v3, v4

    .line 79
    move-object v4, v1

    const/16 v5, 0x7b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-static {v5}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->access$000(Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "}, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 80
    move-object v4, v2

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->next:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    move-object v2, v4

    goto :goto_0

    .line 82
    :cond_0
    move v4, v3

    if-eqz v4, :cond_1

    .line 83
    move-object v4, v1

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/4 v6, 0x2

    add-int/lit8 v5, v5, -0x2

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 85
    :cond_1
    move-object v4, v1

    const-string/jumbo v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;, "Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap<TK;TV;>;"
    return-object v0
.end method
