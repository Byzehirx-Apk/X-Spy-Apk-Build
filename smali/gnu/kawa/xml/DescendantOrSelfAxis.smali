.class public Lgnu/kawa/xml/DescendantOrSelfAxis;
.super Lgnu/kawa/xml/TreeScanner;
.source "DescendantOrSelfAxis.java"


# static fields
.field public static final anyNode:Lgnu/kawa/xml/DescendantOrSelfAxis;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 11
    new-instance v0, Lgnu/kawa/xml/DescendantOrSelfAxis;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    sget-object v2, Lgnu/kawa/xml/NodeType;->anyNodeTest:Lgnu/kawa/xml/NodeType;

    invoke-direct {v1, v2}, Lgnu/kawa/xml/DescendantOrSelfAxis;-><init>(Lgnu/lists/NodePredicate;)V

    sput-object v0, Lgnu/kawa/xml/DescendantOrSelfAxis;->anyNode:Lgnu/kawa/xml/DescendantOrSelfAxis;

    return-void
.end method

.method private constructor <init>(Lgnu/lists/NodePredicate;)V
    .locals 4

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/DescendantOrSelfAxis;
    move-object v1, p1

    .local v1, "type":Lgnu/lists/NodePredicate;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/kawa/xml/TreeScanner;-><init>()V

    .line 16
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/xml/DescendantOrSelfAxis;->type:Lgnu/lists/NodePredicate;

    .line 17
    return-void
.end method

.method public static make(Lgnu/lists/NodePredicate;)Lgnu/kawa/xml/DescendantOrSelfAxis;
    .locals 5

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "type":Lgnu/lists/NodePredicate;
    move-object v1, v0

    sget-object v2, Lgnu/kawa/xml/NodeType;->anyNodeTest:Lgnu/kawa/xml/NodeType;

    if-ne v1, v2, :cond_0

    .line 22
    sget-object v1, Lgnu/kawa/xml/DescendantOrSelfAxis;->anyNode:Lgnu/kawa/xml/DescendantOrSelfAxis;

    move-object v0, v1

    .line 23
    .end local v0    # "type":Lgnu/lists/NodePredicate;
    :goto_0
    return-object v0

    .restart local v0    # "type":Lgnu/lists/NodePredicate;
    :cond_0
    new-instance v1, Lgnu/kawa/xml/DescendantOrSelfAxis;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lgnu/kawa/xml/DescendantOrSelfAxis;-><init>(Lgnu/lists/NodePredicate;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public scan(Lgnu/lists/AbstractSequence;ILgnu/lists/PositionConsumer;)V
    .locals 11

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/DescendantOrSelfAxis;
    move-object v1, p1

    .local v1, "seq":Lgnu/lists/AbstractSequence;
    move v2, p2

    .local v2, "ipos":I
    move-object v3, p3

    .local v3, "out":Lgnu/lists/PositionConsumer;
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/xml/DescendantOrSelfAxis;->type:Lgnu/lists/NodePredicate;

    move-object v7, v1

    move v8, v2

    invoke-interface {v6, v7, v8}, Lgnu/lists/NodePredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 29
    move-object v6, v3

    move-object v7, v1

    move v8, v2

    invoke-interface {v6, v7, v8}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 30
    :cond_0
    move-object v6, v1

    instance-of v6, v6, Lgnu/lists/TreeList;

    if-nez v6, :cond_2

    .line 32
    move-object v6, v1

    move v7, v2

    invoke-virtual {v6, v7}, Lgnu/lists/AbstractSequence;->firstChildPos(I)I

    move-result v6

    move v2, v6

    .line 33
    :goto_0
    move v6, v2

    if-eqz v6, :cond_1

    .line 35
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    invoke-virtual {v6, v7, v8, v9}, Lgnu/kawa/xml/DescendantOrSelfAxis;->scan(Lgnu/lists/AbstractSequence;ILgnu/lists/PositionConsumer;)V

    .line 36
    move-object v6, v1

    move v7, v2

    invoke-virtual {v6, v7}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v6

    move v2, v6

    goto :goto_0

    .line 38
    .line 49
    :cond_1
    :goto_1
    return-void

    .line 40
    :cond_2
    move-object v6, v1

    move v7, v2

    invoke-virtual {v6, v7}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v6

    move v4, v6

    .line 41
    .local v4, "limit":I
    move v6, v2

    move v5, v6

    .line 44
    .local v5, "child":I
    :goto_2
    move-object v6, v1

    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/xml/DescendantOrSelfAxis;->type:Lgnu/lists/NodePredicate;

    move v9, v4

    const/4 v10, 0x1

    invoke-virtual {v6, v7, v8, v9, v10}, Lgnu/lists/AbstractSequence;->nextMatching(ILgnu/lists/ItemPredicate;IZ)I

    move-result v6

    move v5, v6

    .line 45
    move v6, v5

    if-nez v6, :cond_3

    .line 46
    .line 49
    goto :goto_1

    .line 47
    :cond_3
    move-object v6, v3

    move-object v7, v1

    move v8, v5

    invoke-interface {v6, v7, v8}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    goto :goto_2
.end method
