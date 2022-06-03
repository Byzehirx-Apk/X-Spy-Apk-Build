.class public Lgnu/xquery/util/RelativeStepFilter;
.super Lgnu/lists/FilterConsumer;
.source "RelativeStepFilter.java"

# interfaces
.implements Lgnu/lists/PositionConsumer;


# instance fields
.field seen:C

.field snodes:Lgnu/kawa/xml/SortedNodes;


# direct methods
.method public constructor <init>(Lgnu/lists/Consumer;)V
    .locals 4

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/RelativeStepFilter;
    move-object v1, p1

    .local v1, "base":Lgnu/lists/Consumer;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lgnu/lists/FilterConsumer;-><init>(Lgnu/lists/Consumer;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected beforeContent()V
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/RelativeStepFilter;
    move-object v1, v0

    iget-char v1, v1, Lgnu/xquery/util/RelativeStepFilter;->seen:C

    const/16 v2, 0x4e

    if-ne v1, v2, :cond_0

    .line 49
    new-instance v1, Ljava/lang/Error;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "path returns mix of atoms and nodes"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_0
    move-object v1, v0

    const/16 v2, 0x41

    iput-char v2, v1, Lgnu/xquery/util/RelativeStepFilter;->seen:C

    .line 51
    return-void
.end method

.method public consume(Lgnu/lists/SeqPosition;)V
    .locals 5

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/RelativeStepFilter;
    move-object v1, p1

    .local v1, "position":Lgnu/lists/SeqPosition;
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v4, v1

    iget v4, v4, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {v2, v3, v4}, Lgnu/xquery/util/RelativeStepFilter;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 33
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/RelativeStepFilter;
    move-object v1, v0

    iget-object v1, v1, Lgnu/xquery/util/RelativeStepFilter;->snodes:Lgnu/kawa/xml/SortedNodes;

    if-eqz v1, :cond_0

    .line 66
    move-object v1, v0

    iget-object v1, v1, Lgnu/xquery/util/RelativeStepFilter;->snodes:Lgnu/kawa/xml/SortedNodes;

    move-object v2, v0

    iget-object v2, v2, Lgnu/xquery/util/RelativeStepFilter;->base:Lgnu/lists/Consumer;

    invoke-virtual {v1, v2}, Lgnu/kawa/xml/SortedNodes;->consume(Lgnu/lists/Consumer;)V

    .line 67
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lgnu/xquery/util/RelativeStepFilter;->snodes:Lgnu/kawa/xml/SortedNodes;

    .line 68
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/RelativeStepFilter;
    move-object v1, p1

    .local v1, "v":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Lgnu/lists/SeqPosition;

    if-eqz v3, :cond_0

    .line 39
    move-object v3, v1

    check-cast v3, Lgnu/lists/SeqPosition;

    move-object v2, v3

    .line 40
    .local v2, "n":Lgnu/lists/SeqPosition;
    move-object v3, v0

    move-object v4, v2

    iget-object v4, v4, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v5, v2

    iget v5, v5, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {v3, v4, v5}, Lgnu/xquery/util/RelativeStepFilter;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 41
    .line 44
    .end local v2    # "n":Lgnu/lists/SeqPosition;
    :goto_0
    return-void

    .line 43
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lgnu/lists/FilterConsumer;->writeObject(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public writePosition(Lgnu/lists/AbstractSequence;I)V
    .locals 7

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/RelativeStepFilter;
    move-object v1, p1

    .local v1, "seq":Lgnu/lists/AbstractSequence;
    move v2, p2

    .local v2, "ipos":I
    move-object v3, v0

    iget-char v3, v3, Lgnu/xquery/util/RelativeStepFilter;->seen:C

    const/16 v4, 0x41

    if-ne v3, v4, :cond_0

    .line 56
    new-instance v3, Ljava/lang/Error;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "path returns mix of atoms and nodes"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 57
    :cond_0
    move-object v3, v0

    const/16 v4, 0x4e

    iput-char v4, v3, Lgnu/xquery/util/RelativeStepFilter;->seen:C

    .line 58
    move-object v3, v0

    iget-object v3, v3, Lgnu/xquery/util/RelativeStepFilter;->snodes:Lgnu/kawa/xml/SortedNodes;

    if-nez v3, :cond_1

    .line 59
    move-object v3, v0

    new-instance v4, Lgnu/kawa/xml/SortedNodes;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lgnu/kawa/xml/SortedNodes;-><init>()V

    iput-object v4, v3, Lgnu/xquery/util/RelativeStepFilter;->snodes:Lgnu/kawa/xml/SortedNodes;

    .line 60
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lgnu/xquery/util/RelativeStepFilter;->snodes:Lgnu/kawa/xml/SortedNodes;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/xml/SortedNodes;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 61
    return-void
.end method
