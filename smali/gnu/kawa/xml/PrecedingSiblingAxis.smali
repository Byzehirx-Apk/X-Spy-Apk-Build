.class public Lgnu/kawa/xml/PrecedingSiblingAxis;
.super Lgnu/kawa/xml/TreeScanner;
.source "PrecedingSiblingAxis.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/PrecedingSiblingAxis;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/xml/TreeScanner;-><init>()V

    return-void
.end method

.method public static make(Lgnu/lists/NodePredicate;)Lgnu/kawa/xml/PrecedingSiblingAxis;
    .locals 5

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "type":Lgnu/lists/NodePredicate;
    new-instance v2, Lgnu/kawa/xml/PrecedingSiblingAxis;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lgnu/kawa/xml/PrecedingSiblingAxis;-><init>()V

    move-object v1, v2

    .line 14
    .local v1, "axis":Lgnu/kawa/xml/PrecedingSiblingAxis;
    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Lgnu/kawa/xml/PrecedingSiblingAxis;->type:Lgnu/lists/NodePredicate;

    .line 15
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "type":Lgnu/lists/NodePredicate;
    return-object v0
.end method


# virtual methods
.method public scan(Lgnu/lists/AbstractSequence;ILgnu/lists/PositionConsumer;)V
    .locals 12

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/PrecedingSiblingAxis;
    move-object v1, p1

    .local v1, "seq":Lgnu/lists/AbstractSequence;
    move v2, p2

    .local v2, "ipos":I
    move-object v3, p3

    .local v3, "out":Lgnu/lists/PositionConsumer;
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/lists/AbstractSequence;->endPos()I

    move-result v7

    move v4, v7

    .line 21
    .local v4, "end":I
    move-object v7, v1

    move v8, v2

    invoke-virtual {v7, v8}, Lgnu/lists/AbstractSequence;->parentPos(I)I

    move-result v7

    move v5, v7

    .line 22
    .local v5, "parent":I
    move v7, v5

    move v8, v4

    if-ne v7, v8, :cond_0

    .line 23
    .line 36
    :goto_0
    return-void

    .line 24
    :cond_0
    move-object v7, v1

    move v8, v5

    invoke-virtual {v7, v8}, Lgnu/lists/AbstractSequence;->firstChildPos(I)I

    move-result v7

    move v6, v7

    .line 25
    .local v6, "child":I
    move v7, v6

    if-nez v7, :cond_1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/xml/PrecedingSiblingAxis;->type:Lgnu/lists/NodePredicate;

    move-object v8, v1

    move v9, v6

    invoke-interface {v7, v8, v9}, Lgnu/lists/NodePredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 28
    move-object v7, v3

    move-object v8, v1

    move v9, v6

    invoke-interface {v7, v8, v9}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 31
    :cond_2
    :goto_1
    move-object v7, v1

    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/xml/PrecedingSiblingAxis;->type:Lgnu/lists/NodePredicate;

    move v10, v2

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Lgnu/lists/AbstractSequence;->nextMatching(ILgnu/lists/ItemPredicate;IZ)I

    move-result v7

    move v6, v7

    .line 32
    move v7, v6

    if-nez v7, :cond_3

    .line 33
    .line 36
    goto :goto_0

    .line 34
    :cond_3
    move-object v7, v3

    move-object v8, v1

    move v9, v6

    invoke-interface {v7, v8, v9}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    goto :goto_1
.end method
