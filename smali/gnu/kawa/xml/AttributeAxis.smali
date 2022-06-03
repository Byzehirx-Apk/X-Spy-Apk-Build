.class public Lgnu/kawa/xml/AttributeAxis;
.super Lgnu/kawa/xml/TreeScanner;
.source "AttributeAxis.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/AttributeAxis;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/xml/TreeScanner;-><init>()V

    return-void
.end method

.method public static make(Lgnu/lists/NodePredicate;)Lgnu/kawa/xml/AttributeAxis;
    .locals 5

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "type":Lgnu/lists/NodePredicate;
    new-instance v2, Lgnu/kawa/xml/AttributeAxis;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lgnu/kawa/xml/AttributeAxis;-><init>()V

    move-object v1, v2

    .line 14
    .local v1, "axis":Lgnu/kawa/xml/AttributeAxis;
    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Lgnu/kawa/xml/AttributeAxis;->type:Lgnu/lists/NodePredicate;

    .line 15
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "type":Lgnu/lists/NodePredicate;
    return-object v0
.end method


# virtual methods
.method public scan(Lgnu/lists/AbstractSequence;ILgnu/lists/PositionConsumer;)V
    .locals 7

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/AttributeAxis;
    move-object v1, p1

    .local v1, "seq":Lgnu/lists/AbstractSequence;
    move v2, p2

    .local v2, "ipos":I
    move-object v3, p3

    .local v3, "out":Lgnu/lists/PositionConsumer;
    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Lgnu/lists/AbstractSequence;->firstAttributePos(I)I

    move-result v4

    move v2, v4

    .line 21
    :goto_0
    move v4, v2

    if-eqz v4, :cond_2

    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Lgnu/lists/AbstractSequence;->getNextKind(I)I

    move-result v4

    const/16 v5, 0x23

    if-ne v4, v5, :cond_2

    .line 23
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/AttributeAxis;->type:Lgnu/lists/NodePredicate;

    move-object v5, v1

    move v6, v2

    invoke-interface {v4, v5, v6}, Lgnu/lists/NodePredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 24
    move-object v4, v3

    move-object v5, v1

    move v6, v2

    invoke-interface {v4, v5, v6}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 27
    :cond_0
    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v4

    move v2, v4

    goto :goto_0

    .line 25
    :cond_1
    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Lgnu/lists/AbstractSequence;->getNextKind(I)I

    move-result v4

    const/16 v5, 0x23

    if-eq v4, v5, :cond_0

    .line 26
    .line 29
    :cond_2
    return-void
.end method
