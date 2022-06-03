.class public Lgnu/lists/ExtPosition;
.super Lgnu/lists/SeqPosition;
.source "ExtPosition.java"


# instance fields
.field position:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lgnu/lists/ExtPosition;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/lists/SeqPosition;-><init>()V

    .line 16
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lgnu/lists/ExtPosition;->position:I

    return-void
.end method


# virtual methods
.method public getPos()I
    .locals 4

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/lists/ExtPosition;
    move-object v1, v0

    iget v1, v1, Lgnu/lists/ExtPosition;->position:I

    if-gez v1, :cond_0

    .line 21
    move-object v1, v0

    sget-object v2, Lgnu/lists/PositionManager;->manager:Lgnu/lists/PositionManager;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lgnu/lists/PositionManager;->register(Lgnu/lists/SeqPosition;)I

    move-result v2

    iput v2, v1, Lgnu/lists/ExtPosition;->position:I

    .line 22
    :cond_0
    move-object v1, v0

    iget v1, v1, Lgnu/lists/ExtPosition;->position:I

    move v0, v1

    .end local v0    # "this":Lgnu/lists/ExtPosition;
    return v0
.end method

.method public final isAfter()Z
    .locals 3

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lgnu/lists/ExtPosition;
    move-object v1, v0

    iget v1, v1, Lgnu/lists/ExtPosition;->ipos:I

    const/4 v2, 0x1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/lists/ExtPosition;
    return v0

    .restart local v0    # "this":Lgnu/lists/ExtPosition;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lgnu/lists/ExtPosition;
    move-object v1, v0

    iget v1, v1, Lgnu/lists/ExtPosition;->position:I

    if-ltz v1, :cond_0

    .line 38
    sget-object v1, Lgnu/lists/PositionManager;->manager:Lgnu/lists/PositionManager;

    move-object v2, v0

    iget v2, v2, Lgnu/lists/ExtPosition;->position:I

    invoke-virtual {v1, v2}, Lgnu/lists/PositionManager;->release(I)V

    .line 39
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lgnu/lists/ExtPosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 40
    return-void
.end method

.method public setPos(Lgnu/lists/AbstractSequence;I)V
    .locals 5

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/lists/ExtPosition;
    move-object v1, p1

    .local v1, "seq":Lgnu/lists/AbstractSequence;
    move v2, p2

    .local v2, "ipos":I
    move-object v3, v1

    const-string/jumbo v4, "setPos"

    invoke-virtual {v3, v4}, Lgnu/lists/AbstractSequence;->unsupported(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method
