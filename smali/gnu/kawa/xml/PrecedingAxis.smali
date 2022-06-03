.class public Lgnu/kawa/xml/PrecedingAxis;
.super Lgnu/kawa/xml/TreeScanner;
.source "PrecedingAxis.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/PrecedingAxis;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/xml/TreeScanner;-><init>()V

    return-void
.end method

.method public static make(Lgnu/lists/NodePredicate;)Lgnu/kawa/xml/PrecedingAxis;
    .locals 5

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "type":Lgnu/lists/NodePredicate;
    new-instance v2, Lgnu/kawa/xml/PrecedingAxis;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lgnu/kawa/xml/PrecedingAxis;-><init>()V

    move-object v1, v2

    .line 14
    .local v1, "axis":Lgnu/kawa/xml/PrecedingAxis;
    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Lgnu/kawa/xml/PrecedingAxis;->type:Lgnu/lists/NodePredicate;

    .line 15
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "type":Lgnu/lists/NodePredicate;
    return-object v0
.end method

.method private static scan(Lgnu/lists/AbstractSequence;IILgnu/lists/NodePredicate;Lgnu/lists/PositionConsumer;)V
    .locals 12

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "seq":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "ipos":I
    move v2, p2

    .local v2, "end":I
    move-object v3, p3

    .local v3, "type":Lgnu/lists/NodePredicate;
    move-object/from16 v4, p4

    .local v4, "out":Lgnu/lists/PositionConsumer;
    move-object v7, v0

    move v8, v1

    invoke-virtual {v7, v8}, Lgnu/lists/AbstractSequence;->parentPos(I)I

    move-result v7

    move v5, v7

    .line 22
    .local v5, "parent":I
    move v7, v5

    move v8, v2

    if-ne v7, v8, :cond_0

    .line 23
    .line 37
    :goto_0
    return-void

    .line 24
    :cond_0
    move-object v7, v0

    move v8, v5

    move v9, v2

    move-object v10, v3

    move-object v11, v4

    invoke-static {v7, v8, v9, v10, v11}, Lgnu/kawa/xml/PrecedingAxis;->scan(Lgnu/lists/AbstractSequence;IILgnu/lists/NodePredicate;Lgnu/lists/PositionConsumer;)V

    .line 25
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Lgnu/lists/AbstractSequence;->firstChildPos(I)I

    move-result v7

    move v6, v7

    .line 26
    .local v6, "child":I
    move v7, v6

    if-nez v7, :cond_1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move-object v7, v3

    move-object v8, v0

    move v9, v6

    invoke-interface {v7, v8, v9}, Lgnu/lists/NodePredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 29
    move-object v7, v4

    move-object v8, v0

    move v9, v6

    invoke-interface {v7, v8, v9}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 32
    :cond_2
    :goto_1
    move-object v7, v0

    move v8, v6

    move-object v9, v3

    move v10, v1

    const/4 v11, 0x1

    invoke-virtual {v7, v8, v9, v10, v11}, Lgnu/lists/AbstractSequence;->nextMatching(ILgnu/lists/ItemPredicate;IZ)I

    move-result v7

    move v6, v7

    .line 33
    move v7, v6

    if-nez v7, :cond_3

    .line 34
    .line 37
    goto :goto_0

    .line 35
    :cond_3
    move-object v7, v4

    move-object v8, v0

    move v9, v6

    invoke-interface {v7, v8, v9}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    goto :goto_1
.end method


# virtual methods
.method public scan(Lgnu/lists/AbstractSequence;ILgnu/lists/PositionConsumer;)V
    .locals 9

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/PrecedingAxis;
    move-object v1, p1

    .local v1, "seq":Lgnu/lists/AbstractSequence;
    move v2, p2

    .local v2, "ipos":I
    move-object v3, p3

    .local v3, "out":Lgnu/lists/PositionConsumer;
    move-object v4, v1

    move v5, v2

    move-object v6, v1

    invoke-virtual {v6}, Lgnu/lists/AbstractSequence;->endPos()I

    move-result v6

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/xml/PrecedingAxis;->type:Lgnu/lists/NodePredicate;

    move-object v8, v3

    invoke-static {v4, v5, v6, v7, v8}, Lgnu/kawa/xml/PrecedingAxis;->scan(Lgnu/lists/AbstractSequence;IILgnu/lists/NodePredicate;Lgnu/lists/PositionConsumer;)V

    .line 42
    return-void
.end method
