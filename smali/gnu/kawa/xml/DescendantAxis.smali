.class public Lgnu/kawa/xml/DescendantAxis;
.super Lgnu/kawa/xml/TreeScanner;
.source "DescendantAxis.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/DescendantAxis;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/xml/TreeScanner;-><init>()V

    return-void
.end method

.method public static make(Lgnu/lists/NodePredicate;)Lgnu/kawa/xml/DescendantAxis;
    .locals 5

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "type":Lgnu/lists/NodePredicate;
    new-instance v2, Lgnu/kawa/xml/DescendantAxis;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lgnu/kawa/xml/DescendantAxis;-><init>()V

    move-object v1, v2

    .line 14
    .local v1, "axis":Lgnu/kawa/xml/DescendantAxis;
    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Lgnu/kawa/xml/DescendantAxis;->type:Lgnu/lists/NodePredicate;

    .line 15
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "type":Lgnu/lists/NodePredicate;
    return-object v0
.end method


# virtual methods
.method public scan(Lgnu/lists/AbstractSequence;ILgnu/lists/PositionConsumer;)V
    .locals 11

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/DescendantAxis;
    move-object v1, p1

    .local v1, "seq":Lgnu/lists/AbstractSequence;
    move v2, p2

    .local v2, "ipos":I
    move-object v3, p3

    .local v3, "out":Lgnu/lists/PositionConsumer;
    move-object v6, v1

    instance-of v6, v6, Lgnu/lists/TreeList;

    if-nez v6, :cond_2

    .line 22
    move-object v6, v1

    move v7, v2

    invoke-virtual {v6, v7}, Lgnu/lists/AbstractSequence;->firstChildPos(I)I

    move-result v6

    move v2, v6

    .line 23
    :goto_0
    move v6, v2

    if-eqz v6, :cond_1

    .line 25
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/xml/DescendantAxis;->type:Lgnu/lists/NodePredicate;

    move-object v7, v1

    move v8, v2

    invoke-interface {v6, v7, v8}, Lgnu/lists/NodePredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 26
    move-object v6, v3

    move-object v7, v1

    move v8, v2

    invoke-interface {v6, v7, v8}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 27
    :cond_0
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    invoke-virtual {v6, v7, v8, v9}, Lgnu/kawa/xml/DescendantAxis;->scan(Lgnu/lists/AbstractSequence;ILgnu/lists/PositionConsumer;)V

    .line 28
    move-object v6, v1

    move v7, v2

    invoke-virtual {v6, v7}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v6

    move v2, v6

    goto :goto_0

    .line 30
    .line 41
    :cond_1
    :goto_1
    return-void

    .line 32
    :cond_2
    move-object v6, v1

    move v7, v2

    invoke-virtual {v6, v7}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v6

    move v4, v6

    .line 33
    .local v4, "limit":I
    move v6, v2

    move v5, v6

    .line 36
    .local v5, "child":I
    :goto_2
    move-object v6, v1

    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/xml/DescendantAxis;->type:Lgnu/lists/NodePredicate;

    move v9, v4

    const/4 v10, 0x1

    invoke-virtual {v6, v7, v8, v9, v10}, Lgnu/lists/AbstractSequence;->nextMatching(ILgnu/lists/ItemPredicate;IZ)I

    move-result v6

    move v5, v6

    .line 37
    move v6, v5

    if-nez v6, :cond_3

    .line 38
    .line 41
    goto :goto_1

    .line 39
    :cond_3
    move-object v6, v3

    move-object v7, v1

    move v8, v5

    invoke-interface {v6, v7, v8}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    goto :goto_2
.end method
