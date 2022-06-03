.class public Lgnu/kawa/xml/AncestorAxis;
.super Lgnu/kawa/xml/TreeScanner;
.source "AncestorAxis.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/AncestorAxis;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/xml/TreeScanner;-><init>()V

    return-void
.end method

.method public static make(Lgnu/lists/NodePredicate;)Lgnu/kawa/xml/AncestorAxis;
    .locals 5

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "type":Lgnu/lists/NodePredicate;
    new-instance v2, Lgnu/kawa/xml/AncestorAxis;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lgnu/kawa/xml/AncestorAxis;-><init>()V

    move-object v1, v2

    .line 14
    .local v1, "axis":Lgnu/kawa/xml/AncestorAxis;
    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Lgnu/kawa/xml/AncestorAxis;->type:Lgnu/lists/NodePredicate;

    .line 15
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "type":Lgnu/lists/NodePredicate;
    return-object v0
.end method

.method private static scan(Lgnu/lists/AbstractSequence;IILgnu/lists/NodePredicate;Lgnu/lists/PositionConsumer;)V
    .locals 10

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
    move-object v4, p4

    .local v4, "out":Lgnu/lists/PositionConsumer;
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lgnu/lists/AbstractSequence;->parentPos(I)I

    move-result v5

    move v1, v5

    .line 22
    move v5, v1

    move v6, v2

    if-eq v5, v6, :cond_0

    .line 24
    move-object v5, v0

    move v6, v1

    move v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Lgnu/kawa/xml/AncestorAxis;->scan(Lgnu/lists/AbstractSequence;IILgnu/lists/NodePredicate;Lgnu/lists/PositionConsumer;)V

    .line 25
    move-object v5, v3

    move-object v6, v0

    move v7, v1

    invoke-interface {v5, v6, v7}, Lgnu/lists/NodePredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 26
    move-object v5, v4

    move-object v6, v0

    move v7, v1

    invoke-interface {v5, v6, v7}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public scan(Lgnu/lists/AbstractSequence;ILgnu/lists/PositionConsumer;)V
    .locals 9

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/AncestorAxis;
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

    iget-object v7, v7, Lgnu/kawa/xml/AncestorAxis;->type:Lgnu/lists/NodePredicate;

    move-object v8, v3

    invoke-static {v4, v5, v6, v7, v8}, Lgnu/kawa/xml/AncestorAxis;->scan(Lgnu/lists/AbstractSequence;IILgnu/lists/NodePredicate;Lgnu/lists/PositionConsumer;)V

    .line 33
    return-void
.end method
