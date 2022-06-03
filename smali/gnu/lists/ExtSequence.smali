.class public abstract Lgnu/lists/ExtSequence;
.super Lgnu/lists/AbstractSequence;
.source "ExtSequence.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/lists/ExtSequence;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/lists/AbstractSequence;-><init>()V

    return-void
.end method


# virtual methods
.method public copyPos(I)I
    .locals 4

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/lists/ExtSequence;
    move v1, p1

    .local v1, "ipos":I
    move v2, v1

    if-gtz v2, :cond_0

    .line 16
    move v2, v1

    move v0, v2

    .line 17
    .end local v0    # "this":Lgnu/lists/ExtSequence;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/lists/ExtSequence;
    :cond_0
    sget-object v2, Lgnu/lists/PositionManager;->manager:Lgnu/lists/PositionManager;

    move v3, v1

    invoke-static {v3}, Lgnu/lists/PositionManager;->getPositionObject(I)Lgnu/lists/SeqPosition;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/lists/SeqPosition;->copy()Lgnu/lists/SeqPosition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/lists/PositionManager;->register(Lgnu/lists/SeqPosition;)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method protected isAfterPos(I)Z
    .locals 4

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/lists/ExtSequence;
    move v1, p1

    .local v1, "ipos":I
    move v2, v1

    if-gtz v2, :cond_1

    .line 29
    move v2, v1

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 30
    .end local v0    # "this":Lgnu/lists/ExtSequence;
    :goto_1
    return v0

    .line 29
    .restart local v0    # "this":Lgnu/lists/ExtSequence;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 30
    :cond_1
    move v2, v1

    invoke-static {v2}, Lgnu/lists/PositionManager;->getPositionObject(I)Lgnu/lists/SeqPosition;

    move-result-object v2

    iget v2, v2, Lgnu/lists/SeqPosition;->ipos:I

    const/4 v3, 0x1

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    move v0, v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method protected nextIndex(I)I
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lgnu/lists/ExtSequence;
    move v1, p1

    .local v1, "ipos":I
    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/ExtSequence;->size()I

    move-result v2

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/lists/ExtSequence;
    return v0

    .restart local v0    # "this":Lgnu/lists/ExtSequence;
    :cond_0
    move v2, v1

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v2, v1

    invoke-static {v2}, Lgnu/lists/PositionManager;->getPositionObject(I)Lgnu/lists/SeqPosition;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/lists/SeqPosition;->nextIndex()I

    move-result v2

    goto :goto_0
.end method

.method protected releasePos(I)V
    .locals 4

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/lists/ExtSequence;
    move v1, p1

    .local v1, "ipos":I
    move v2, v1

    if-lez v2, :cond_0

    .line 23
    sget-object v2, Lgnu/lists/PositionManager;->manager:Lgnu/lists/PositionManager;

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/PositionManager;->release(I)V

    .line 24
    :cond_0
    return-void
.end method
