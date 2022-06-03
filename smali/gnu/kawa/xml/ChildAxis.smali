.class public Lgnu/kawa/xml/ChildAxis;
.super Lgnu/kawa/xml/TreeScanner;
.source "ChildAxis.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/ChildAxis;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/xml/TreeScanner;-><init>()V

    return-void
.end method

.method public static make(Lgnu/lists/NodePredicate;)Lgnu/kawa/xml/ChildAxis;
    .locals 5

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "type":Lgnu/lists/NodePredicate;
    new-instance v2, Lgnu/kawa/xml/ChildAxis;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lgnu/kawa/xml/ChildAxis;-><init>()V

    move-object v1, v2

    .line 14
    .local v1, "axis":Lgnu/kawa/xml/ChildAxis;
    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Lgnu/kawa/xml/ChildAxis;->type:Lgnu/lists/NodePredicate;

    .line 15
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "type":Lgnu/lists/NodePredicate;
    return-object v0
.end method


# virtual methods
.method public scan(Lgnu/lists/AbstractSequence;ILgnu/lists/PositionConsumer;)V
    .locals 10

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/ChildAxis;
    move-object v1, p1

    .local v1, "seq":Lgnu/lists/AbstractSequence;
    move v2, p2

    .local v2, "ipos":I
    move-object v3, p3

    .local v3, "out":Lgnu/lists/PositionConsumer;
    move-object v5, v1

    move v6, v2

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/xml/ChildAxis;->type:Lgnu/lists/NodePredicate;

    invoke-virtual {v5, v6, v7}, Lgnu/lists/AbstractSequence;->firstChildPos(ILgnu/lists/ItemPredicate;)I

    move-result v5

    move v4, v5

    .line 21
    .local v4, "child":I
    :goto_0
    move v5, v4

    if-eqz v5, :cond_0

    .line 23
    move-object v5, v3

    move-object v6, v1

    move v7, v4

    invoke-interface {v5, v6, v7}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 24
    move-object v5, v1

    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/xml/ChildAxis;->type:Lgnu/lists/NodePredicate;

    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lgnu/lists/AbstractSequence;->nextMatching(ILgnu/lists/ItemPredicate;IZ)I

    move-result v5

    move v4, v5

    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method
