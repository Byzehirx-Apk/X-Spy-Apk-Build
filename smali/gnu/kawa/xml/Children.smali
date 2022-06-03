.class public Lgnu/kawa/xml/Children;
.super Lgnu/mapping/MethodProc;
.source "Children.java"


# static fields
.field public static final children:Lgnu/kawa/xml/Children;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    new-instance v0, Lgnu/kawa/xml/Children;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/kawa/xml/Children;-><init>()V

    sput-object v0, Lgnu/kawa/xml/Children;->children:Lgnu/kawa/xml/Children;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Children;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/MethodProc;-><init>()V

    return-void
.end method

.method public static children(Lgnu/lists/TreeList;ILgnu/lists/Consumer;)V
    .locals 12

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "tlist":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "consumer":Lgnu/lists/Consumer;
    move-object v8, v0

    move v9, v1

    invoke-virtual {v8, v9}, Lgnu/lists/TreeList;->gotoChildrenStart(I)I

    move-result v8

    move v3, v8

    .line 17
    .local v3, "child":I
    move v8, v3

    if-gez v8, :cond_0

    .line 18
    .line 37
    :goto_0
    return-void

    .line 19
    :cond_0
    move-object v8, v0

    move v9, v1

    invoke-virtual {v8, v9}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v8

    move v4, v8

    .line 22
    .local v4, "limit":I
    :goto_1
    move v8, v3

    const/4 v9, 0x1

    shl-int/lit8 v8, v8, 0x1

    move v5, v8

    .line 24
    .local v5, "ipos":I
    move-object v8, v0

    move v9, v3

    move v10, v4

    invoke-virtual {v8, v9, v10}, Lgnu/lists/TreeList;->nextNodeIndex(II)I

    move-result v8

    move v6, v8

    .line 26
    .local v6, "next":I
    move v8, v6

    move v7, v8

    .line 27
    .local v7, "next0":I
    move v8, v6

    move v9, v3

    if-ne v8, v9, :cond_1

    .line 28
    move-object v8, v0

    move v9, v3

    invoke-virtual {v8, v9}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v8

    move v6, v8

    .line 29
    :cond_1
    move v8, v6

    if-gez v8, :cond_2

    .line 30
    .line 37
    goto :goto_0

    .line 31
    :cond_2
    move-object v8, v2

    instance-of v8, v8, Lgnu/lists/PositionConsumer;

    if-eqz v8, :cond_3

    .line 32
    move-object v8, v2

    check-cast v8, Lgnu/lists/PositionConsumer;

    move-object v9, v0

    move v10, v5

    invoke-interface {v8, v9, v10}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 35
    :goto_2
    move v8, v6

    move v3, v8

    .line 36
    goto :goto_1

    .line 34
    :cond_3
    move-object v8, v0

    move v9, v3

    move v10, v6

    move-object v11, v2

    invoke-virtual {v8, v9, v10, v11}, Lgnu/lists/TreeList;->consumeIRange(IILgnu/lists/Consumer;)I

    move-result v8

    goto :goto_2
.end method

.method public static children(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 6

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "node":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "consumer":Lgnu/lists/Consumer;
    move-object v3, v0

    instance-of v3, v3, Lgnu/lists/TreeList;

    if-eqz v3, :cond_1

    .line 43
    move-object v3, v0

    check-cast v3, Lgnu/lists/TreeList;

    const/4 v4, 0x0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lgnu/kawa/xml/Children;->children(Lgnu/lists/TreeList;ILgnu/lists/Consumer;)V

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    move-object v3, v0

    instance-of v3, v3, Lgnu/lists/SeqPosition;

    if-eqz v3, :cond_0

    move-object v3, v0

    instance-of v3, v3, Lgnu/lists/TreePosition;

    if-nez v3, :cond_0

    .line 47
    move-object v3, v0

    check-cast v3, Lgnu/lists/SeqPosition;

    move-object v2, v3

    .line 48
    .local v2, "pos":Lgnu/lists/SeqPosition;
    move-object v3, v2

    iget-object v3, v3, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    instance-of v3, v3, Lgnu/lists/TreeList;

    if-eqz v3, :cond_0

    .line 49
    move-object v3, v2

    iget-object v3, v3, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v3, Lgnu/lists/TreeList;

    move-object v4, v2

    iget v4, v4, Lgnu/lists/SeqPosition;->ipos:I

    const/4 v5, 0x1

    shr-int/lit8 v4, v4, 0x1

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lgnu/kawa/xml/Children;->children(Lgnu/lists/TreeList;ILgnu/lists/Consumer;)V

    goto :goto_0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 10

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Children;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v7, v1

    iget-object v7, v7, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v7

    .line 56
    .local v2, "consumer":Lgnu/lists/Consumer;
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    .line 57
    .local v3, "node":Ljava/lang/Object;
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/mapping/CallContext;->lastArg()V

    .line 58
    move-object v7, v3

    instance-of v7, v7, Lgnu/mapping/Values;

    if-eqz v7, :cond_2

    .line 60
    move-object v7, v3

    check-cast v7, Lgnu/lists/TreeList;

    move-object v4, v7

    .line 61
    .local v4, "tlist":Lgnu/lists/TreeList;
    const/4 v7, 0x0

    move v5, v7

    .line 64
    .local v5, "index":I
    :goto_0
    move-object v7, v4

    move v8, v5

    const/4 v9, 0x1

    shl-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Lgnu/lists/TreeList;->getNextKind(I)I

    move-result v7

    move v6, v7

    .line 65
    .local v6, "kind":I
    move v7, v6

    if-nez v7, :cond_0

    .line 66
    .line 73
    .line 76
    .end local v4    # "tlist":Lgnu/lists/TreeList;
    .end local v5    # "index":I
    .end local v6    # "kind":I
    :goto_1
    return-void

    .line 67
    .restart local v4    # "tlist":Lgnu/lists/TreeList;
    .restart local v5    # "index":I
    .restart local v6    # "kind":I
    :cond_0
    move v7, v6

    const/16 v8, 0x20

    if-ne v7, v8, :cond_1

    .line 68
    move-object v7, v4

    move v8, v5

    const/4 v9, 0x1

    shl-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v2

    invoke-static {v7, v8}, Lgnu/kawa/xml/Children;->children(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 71
    :goto_2
    move-object v7, v4

    move v8, v5

    invoke-virtual {v7, v8}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v7

    move v5, v7

    .line 72
    goto :goto_0

    .line 70
    :cond_1
    move-object v7, v4

    move v8, v5

    move-object v9, v2

    invoke-static {v7, v8, v9}, Lgnu/kawa/xml/Children;->children(Lgnu/lists/TreeList;ILgnu/lists/Consumer;)V

    goto :goto_2

    .line 75
    .end local v4    # "tlist":Lgnu/lists/TreeList;
    .end local v5    # "index":I
    .end local v6    # "kind":I
    :cond_2
    move-object v7, v3

    move-object v8, v2

    invoke-static {v7, v8}, Lgnu/kawa/xml/Children;->children(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    goto :goto_1
.end method

.method public numArgs()I
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Children;
    const/16 v1, 0x1001

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/Children;
    return v0
.end method
