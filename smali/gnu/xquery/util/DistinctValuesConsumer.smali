.class Lgnu/xquery/util/DistinctValuesConsumer;
.super Lgnu/lists/FilterConsumer;
.source "DistinctValues.java"

# interfaces
.implements Lgnu/lists/PositionConsumer;


# instance fields
.field table:Lgnu/xquery/util/DistinctValuesHashTable;


# direct methods
.method public constructor <init>(Lgnu/xquery/util/NamedCollator;Lgnu/lists/Consumer;)V
    .locals 8

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/DistinctValuesConsumer;
    move-object v1, p1

    .local v1, "collator":Lgnu/xquery/util/NamedCollator;
    move-object v2, p2

    .local v2, "out":Lgnu/lists/Consumer;
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lgnu/lists/FilterConsumer;-><init>(Lgnu/lists/Consumer;)V

    .line 116
    move-object v3, v0

    new-instance v4, Lgnu/xquery/util/DistinctValuesHashTable;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lgnu/xquery/util/DistinctValuesHashTable;-><init>(Lgnu/xquery/util/NamedCollator;)V

    iput-object v4, v3, Lgnu/xquery/util/DistinctValuesConsumer;->table:Lgnu/xquery/util/DistinctValuesHashTable;

    .line 117
    return-void
.end method


# virtual methods
.method public consume(Lgnu/lists/SeqPosition;)V
    .locals 4

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/DistinctValuesConsumer;
    move-object v1, p1

    .local v1, "position":Lgnu/lists/SeqPosition;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/xquery/util/DistinctValuesConsumer;->writeObject(Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 4

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/DistinctValuesConsumer;
    move v1, p1

    .local v1, "v":Z
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v2, v3}, Lgnu/xquery/util/DistinctValuesConsumer;->writeObject(Ljava/lang/Object;)V

    .line 132
    return-void

    .line 131
    :cond_0
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/DistinctValuesConsumer;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Lgnu/mapping/Values;

    if-eqz v3, :cond_0

    .line 138
    move-object v3, v1

    move-object v4, v0

    invoke-static {v3, v4}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 139
    .line 152
    :goto_0
    return-void

    .line 141
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Lgnu/kawa/xml/KNode;

    if-eqz v3, :cond_1

    .line 143
    move-object v3, v1

    check-cast v3, Lgnu/kawa/xml/KNode;

    move-object v2, v3

    .line 144
    .local v2, "node":Lgnu/kawa/xml/KNode;
    move-object v3, v0

    move-object v4, v2

    iget-object v4, v4, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v4, Lgnu/xml/NodeTree;

    move-object v5, v2

    iget v5, v5, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v4, v5}, Lgnu/xml/NodeTree;->typedValue(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/xquery/util/DistinctValuesConsumer;->writeObject(Ljava/lang/Object;)V

    .line 145
    goto :goto_0

    .line 147
    .end local v2    # "node":Lgnu/kawa/xml/KNode;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lgnu/xquery/util/DistinctValuesConsumer;->table:Lgnu/xquery/util/DistinctValuesHashTable;

    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lgnu/xquery/util/DistinctValuesHashTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 148
    .local v2, "old":Ljava/lang/Object;
    move-object v3, v2

    if-eqz v3, :cond_2

    .line 149
    goto :goto_0

    .line 150
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lgnu/xquery/util/DistinctValuesConsumer;->table:Lgnu/xquery/util/DistinctValuesHashTable;

    move-object v4, v1

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lgnu/xquery/util/DistinctValuesHashTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 151
    move-object v3, v0

    iget-object v3, v3, Lgnu/xquery/util/DistinctValuesConsumer;->base:Lgnu/lists/Consumer;

    move-object v4, v1

    invoke-interface {v3, v4}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 152
    goto :goto_0
.end method

.method public writePosition(Lgnu/lists/AbstractSequence;I)V
    .locals 6

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/DistinctValuesConsumer;
    move-object v1, p1

    .local v1, "seq":Lgnu/lists/AbstractSequence;
    move v2, p2

    .local v2, "ipos":I
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lgnu/xml/NodeTree;

    move v5, v2

    invoke-virtual {v4, v5}, Lgnu/xml/NodeTree;->typedValue(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/xquery/util/DistinctValuesConsumer;->writeObject(Ljava/lang/Object;)V

    .line 127
    return-void
.end method
