.class public Lgnu/kawa/xml/Attributes;
.super Lgnu/mapping/MethodProc;
.source "Attributes.java"


# static fields
.field public static final attributes:Lgnu/kawa/xml/Attributes;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    new-instance v0, Lgnu/kawa/xml/Attributes;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/kawa/xml/Attributes;-><init>()V

    sput-object v0, Lgnu/kawa/xml/Attributes;->attributes:Lgnu/kawa/xml/Attributes;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Attributes;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/MethodProc;-><init>()V

    return-void
.end method

.method public static attributes(Lgnu/lists/TreeList;ILgnu/lists/Consumer;)V
    .locals 12

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "tlist":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "consumer":Lgnu/lists/Consumer;
    move-object v7, v0

    move v8, v1

    invoke-virtual {v7, v8}, Lgnu/lists/TreeList;->gotoAttributesStart(I)I

    move-result v7

    move v3, v7

    .line 17
    .local v3, "attr":I
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Attributes called, at:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/lists/TreeList;->dump()V

    .line 18
    :goto_0
    move v7, v3

    if-ltz v7, :cond_0

    .line 20
    move v7, v3

    const/4 v8, 0x1

    shl-int/lit8 v7, v7, 0x1

    move v4, v7

    .line 21
    .local v4, "ipos":I
    move-object v7, v0

    move v8, v4

    invoke-virtual {v7, v8}, Lgnu/lists/TreeList;->getNextKind(I)I

    move-result v7

    move v5, v7

    .line 22
    .local v5, "kind":I
    move v7, v5

    const/16 v8, 0x23

    if-eq v7, v8, :cond_1

    .line 23
    .line 32
    .end local v4    # "ipos":I
    .end local v5    # "kind":I
    :cond_0
    return-void

    .line 25
    .restart local v4    # "ipos":I
    .restart local v5    # "kind":I
    :cond_1
    move-object v7, v0

    move v8, v3

    invoke-virtual {v7, v8}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v7

    move v6, v7

    .line 26
    .local v6, "next":I
    move-object v7, v2

    instance-of v7, v7, Lgnu/lists/PositionConsumer;

    if-eqz v7, :cond_2

    .line 27
    move-object v7, v2

    check-cast v7, Lgnu/lists/PositionConsumer;

    move-object v8, v0

    move v9, v4

    invoke-interface {v7, v8, v9}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 30
    :goto_1
    move v7, v6

    move v3, v7

    .line 31
    goto :goto_0

    .line 29
    :cond_2
    move-object v7, v0

    move v8, v3

    move v9, v6

    move-object v10, v2

    invoke-virtual {v7, v8, v9, v10}, Lgnu/lists/TreeList;->consumeIRange(IILgnu/lists/Consumer;)I

    move-result v7

    goto :goto_1
.end method

.method public static attributes(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 6

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "node":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "consumer":Lgnu/lists/Consumer;
    move-object v3, v0

    instance-of v3, v3, Lgnu/lists/TreeList;

    if-eqz v3, :cond_1

    .line 38
    move-object v3, v0

    check-cast v3, Lgnu/lists/TreeList;

    const/4 v4, 0x0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lgnu/kawa/xml/Attributes;->attributes(Lgnu/lists/TreeList;ILgnu/lists/Consumer;)V

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    move-object v3, v0

    instance-of v3, v3, Lgnu/lists/SeqPosition;

    if-eqz v3, :cond_0

    move-object v3, v0

    instance-of v3, v3, Lgnu/lists/TreePosition;

    if-nez v3, :cond_0

    .line 42
    move-object v3, v0

    check-cast v3, Lgnu/lists/SeqPosition;

    move-object v2, v3

    .line 43
    .local v2, "pos":Lgnu/lists/SeqPosition;
    move-object v3, v2

    iget-object v3, v3, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    instance-of v3, v3, Lgnu/lists/TreeList;

    if-eqz v3, :cond_0

    .line 44
    move-object v3, v2

    iget-object v3, v3, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v3, Lgnu/lists/TreeList;

    move-object v4, v2

    iget v4, v4, Lgnu/lists/SeqPosition;->ipos:I

    const/4 v5, 0x1

    shr-int/lit8 v4, v4, 0x1

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lgnu/kawa/xml/Attributes;->attributes(Lgnu/lists/TreeList;ILgnu/lists/Consumer;)V

    goto :goto_0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 10

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Attributes;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v7, v1

    iget-object v7, v7, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v7

    .line 51
    .local v2, "consumer":Lgnu/lists/Consumer;
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    .line 52
    .local v3, "node":Ljava/lang/Object;
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/mapping/CallContext;->lastArg()V

    .line 53
    move-object v7, v3

    instance-of v7, v7, Lgnu/mapping/Values;

    if-eqz v7, :cond_2

    .line 55
    move-object v7, v3

    check-cast v7, Lgnu/lists/TreeList;

    move-object v4, v7

    .line 56
    .local v4, "tlist":Lgnu/lists/TreeList;
    const/4 v7, 0x0

    move v5, v7

    .line 59
    .local v5, "index":I
    :goto_0
    move-object v7, v4

    move v8, v5

    const/4 v9, 0x1

    shl-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Lgnu/lists/TreeList;->getNextKind(I)I

    move-result v7

    move v6, v7

    .line 60
    .local v6, "kind":I
    move v7, v6

    if-nez v7, :cond_0

    .line 61
    .line 68
    .line 71
    .end local v4    # "tlist":Lgnu/lists/TreeList;
    .end local v5    # "index":I
    .end local v6    # "kind":I
    :goto_1
    return-void

    .line 62
    .restart local v4    # "tlist":Lgnu/lists/TreeList;
    .restart local v5    # "index":I
    .restart local v6    # "kind":I
    :cond_0
    move v7, v6

    const/16 v8, 0x20

    if-ne v7, v8, :cond_1

    .line 63
    move-object v7, v4

    move v8, v5

    const/4 v9, 0x1

    shl-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v2

    invoke-static {v7, v8}, Lgnu/kawa/xml/Attributes;->attributes(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 66
    :goto_2
    move-object v7, v4

    move v8, v5

    invoke-virtual {v7, v8}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v7

    move v5, v7

    .line 67
    goto :goto_0

    .line 65
    :cond_1
    move-object v7, v4

    move v8, v5

    move-object v9, v2

    invoke-static {v7, v8, v9}, Lgnu/kawa/xml/Attributes;->attributes(Lgnu/lists/TreeList;ILgnu/lists/Consumer;)V

    goto :goto_2

    .line 70
    .end local v4    # "tlist":Lgnu/lists/TreeList;
    .end local v5    # "index":I
    .end local v6    # "kind":I
    :cond_2
    move-object v7, v3

    move-object v8, v2

    invoke-static {v7, v8}, Lgnu/kawa/xml/Attributes;->attributes(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    goto :goto_1
.end method

.method public numArgs()I
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Attributes;
    const/16 v1, 0x1001

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/Attributes;
    return v0
.end method
