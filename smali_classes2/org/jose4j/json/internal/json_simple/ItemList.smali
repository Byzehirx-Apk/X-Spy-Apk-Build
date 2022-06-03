.class public Lorg/jose4j/json/internal/json_simple/ItemList;
.super Ljava/lang/Object;
.source "ItemList.java"


# instance fields
.field items:Ljava/util/List;

.field private sp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/ItemList;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 18
    move-object v1, v0

    const-string/jumbo v2, ","

    iput-object v2, v1, Lorg/jose4j/json/internal/json_simple/ItemList;->sp:Ljava/lang/String;

    .line 19
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lorg/jose4j/json/internal/json_simple/ItemList;->items:Ljava/util/List;

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/ItemList;
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 18
    move-object v2, v0

    const-string/jumbo v3, ","

    iput-object v3, v2, Lorg/jose4j/json/internal/json_simple/ItemList;->sp:Ljava/lang/String;

    .line 19
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lorg/jose4j/json/internal/json_simple/ItemList;->items:Ljava/util/List;

    .line 26
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/jose4j/json/internal/json_simple/ItemList;->sp:Ljava/lang/String;

    move-object v5, v0

    iget-object v5, v5, Lorg/jose4j/json/internal/json_simple/ItemList;->items:Ljava/util/List;

    invoke-virtual {v2, v3, v4, v5}, Lorg/jose4j/json/internal/json_simple/ItemList;->split(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/ItemList;
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    move-object v2, p2

    .local v2, "sp":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 18
    move-object v3, v0

    const-string/jumbo v4, ","

    iput-object v4, v3, Lorg/jose4j/json/internal/json_simple/ItemList;->sp:Ljava/lang/String;

    .line 19
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lorg/jose4j/json/internal/json_simple/ItemList;->items:Ljava/util/List;

    .line 30
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/jose4j/json/internal/json_simple/ItemList;->sp:Ljava/lang/String;

    .line 31
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lorg/jose4j/json/internal/json_simple/ItemList;->items:Ljava/util/List;

    invoke-virtual {v3, v4, v5, v6}, Lorg/jose4j/json/internal/json_simple/ItemList;->split(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/ItemList;
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    move-object v2, p2

    .local v2, "sp":Ljava/lang/String;
    move v3, p3

    .local v3, "isMultiToken":Z
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 18
    move-object v4, v0

    const-string/jumbo v5, ","

    iput-object v5, v4, Lorg/jose4j/json/internal/json_simple/ItemList;->sp:Ljava/lang/String;

    .line 19
    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lorg/jose4j/json/internal/json_simple/ItemList;->items:Ljava/util/List;

    .line 35
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lorg/jose4j/json/internal/json_simple/ItemList;->items:Ljava/util/List;

    move v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/jose4j/json/internal/json_simple/ItemList;->split(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    .line 36
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/ItemList;
    move v1, p1

    .local v1, "i":I
    move-object v2, p2

    .local v2, "item":Ljava/lang/String;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 82
    .line 84
    :goto_0
    return-void

    .line 83
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/json/internal/json_simple/ItemList;->items:Ljava/util/List;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 84
    goto :goto_0
.end method

.method public add(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/ItemList;
    move-object v1, p1

    .local v1, "item":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 88
    .line 90
    :goto_0
    return-void

    .line 89
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/json/internal/json_simple/ItemList;->items:Ljava/util/List;

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 90
    goto :goto_0
.end method

.method public addAll(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/ItemList;
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/jose4j/json/internal/json_simple/ItemList;->sp:Ljava/lang/String;

    move-object v5, v0

    iget-object v5, v5, Lorg/jose4j/json/internal/json_simple/ItemList;->items:Ljava/util/List;

    invoke-virtual {v2, v3, v4, v5}, Lorg/jose4j/json/internal/json_simple/ItemList;->split(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 98
    return-void
.end method

.method public addAll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/ItemList;
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    move-object v2, p2

    .local v2, "sp":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lorg/jose4j/json/internal/json_simple/ItemList;->items:Ljava/util/List;

    invoke-virtual {v3, v4, v5, v6}, Lorg/jose4j/json/internal/json_simple/ItemList;->split(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 102
    return-void
.end method

.method public addAll(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/ItemList;
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    move-object v2, p2

    .local v2, "sp":Ljava/lang/String;
    move v3, p3

    .local v3, "isMultiToken":Z
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lorg/jose4j/json/internal/json_simple/ItemList;->items:Ljava/util/List;

    move v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/jose4j/json/internal/json_simple/ItemList;->split(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    .line 106
    return-void
.end method

.method public addAll(Lorg/jose4j/json/internal/json_simple/ItemList;)V
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/ItemList;
    move-object v1, p1

    .local v1, "list":Lorg/jose4j/json/internal/json_simple/ItemList;
    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/json/internal/json_simple/ItemList;->items:Ljava/util/List;

    move-object v3, v1

    iget-object v3, v3, Lorg/jose4j/json/internal/json_simple/ItemList;->items:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v2

    .line 94
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/ItemList;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/json/internal/json_simple/ItemList;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 141
    return-void
.end method

.method public get(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/ItemList;
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/json/internal/json_simple/ItemList;->items:Ljava/util/List;

    move v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/json/internal/json_simple/ItemList;
    return-object v0
.end method

.method public getArray()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/ItemList;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/json/internal/json_simple/ItemList;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/json/internal/json_simple/ItemList;
    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/ItemList;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/json/internal/json_simple/ItemList;->items:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/json/internal/json_simple/ItemList;
    return-object v0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/ItemList;
    move-object v1, v0

    const-string/jumbo v2, ","

    iput-object v2, v1, Lorg/jose4j/json/internal/json_simple/ItemList;->sp:Ljava/lang/String;

    .line 145
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/json/internal/json_simple/ItemList;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 146
    return-void
.end method

.method public setSP(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/ItemList;
    move-object v1, p1

    .local v1, "sp":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/json/internal/json_simple/ItemList;->sp:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/ItemList;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/json/internal/json_simple/ItemList;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lorg/jose4j/json/internal/json_simple/ItemList;
    return v0
.end method

.method public split(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 10

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/ItemList;
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    move-object v2, p2

    .local v2, "sp":Ljava/lang/String;
    move-object v3, p3

    .local v3, "append":Ljava/util/List;
    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v2

    if-nez v6, :cond_1

    .line 62
    .line 74
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    const/4 v6, 0x0

    move v4, v6

    .line 64
    .local v4, "pos":I
    const/4 v6, 0x0

    move v5, v6

    .line 66
    .local v5, "prevPos":I
    :cond_2
    move v6, v4

    move v5, v6

    .line 67
    move-object v6, v1

    move-object v7, v2

    move v8, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    move v4, v6

    .line 68
    move v6, v4

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    .line 69
    .line 73
    :goto_1
    move-object v6, v3

    move-object v7, v1

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 74
    goto :goto_0

    .line 70
    :cond_3
    move-object v6, v3

    move-object v7, v1

    move v8, v5

    move v9, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 71
    move v6, v4

    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    move v4, v6

    .line 72
    move v6, v4

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    goto :goto_1
.end method

.method public split(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 11

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/ItemList;
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    move-object v2, p2

    .local v2, "sp":Ljava/lang/String;
    move-object v3, p3

    .local v3, "append":Ljava/util/List;
    move v4, p4

    .local v4, "isMultiToken":Z
    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v2

    if-nez v6, :cond_1

    .line 48
    .line 58
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    move v6, v4

    if-eqz v6, :cond_3

    .line 50
    new-instance v6, Ljava/util/StringTokenizer;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 51
    .local v5, "tokens":Ljava/util/StringTokenizer;
    :goto_1
    move-object v6, v5

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 52
    move-object v6, v3

    move-object v7, v5

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_1

    .line 54
    .line 58
    .end local v5    # "tokens":Ljava/util/StringTokenizer;
    :cond_2
    :goto_2
    goto :goto_0

    .line 56
    :cond_3
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v6, v7, v8, v9}, Lorg/jose4j/json/internal/json_simple/ItemList;->split(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/ItemList;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/json/internal/json_simple/ItemList;->sp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/jose4j/json/internal/json_simple/ItemList;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/json/internal/json_simple/ItemList;
    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/ItemList;
    move-object v1, p1

    .local v1, "sp":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v4

    .line 127
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Lorg/jose4j/json/internal/json_simple/ItemList;->items:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 128
    move v4, v3

    if-nez v4, :cond_0

    .line 129
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lorg/jose4j/json/internal/json_simple/ItemList;->items:Ljava/util/List;

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 127
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 131
    :cond_0
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 132
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lorg/jose4j/json/internal/json_simple/ItemList;->items:Ljava/util/List;

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_1

    .line 135
    :cond_1
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lorg/jose4j/json/internal/json_simple/ItemList;
    return-object v0
.end method
