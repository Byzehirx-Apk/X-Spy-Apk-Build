.class public Lgnu/lists/PositionManager;
.super Ljava/lang/Object;
.source "PositionManager.java"


# static fields
.field static final manager:Lgnu/lists/PositionManager;


# instance fields
.field freeListHead:I

.field ivals:[I

.field positions:[Lgnu/lists/SeqPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 8
    new-instance v0, Lgnu/lists/PositionManager;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/lists/PositionManager;-><init>()V

    sput-object v0, Lgnu/lists/PositionManager;->manager:Lgnu/lists/PositionManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PositionManager;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 19
    move-object v1, v0

    const/16 v2, 0x32

    new-array v2, v2, [Lgnu/lists/SeqPosition;

    iput-object v2, v1, Lgnu/lists/PositionManager;->positions:[Lgnu/lists/SeqPosition;

    .line 20
    move-object v1, v0

    const/16 v2, 0x32

    new-array v2, v2, [I

    iput-object v2, v1, Lgnu/lists/PositionManager;->ivals:[I

    .line 21
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lgnu/lists/PositionManager;->freeListHead:I

    .line 57
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/PositionManager;->ivals:[I

    const/4 v3, 0x1

    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/PositionManager;->ivals:[I

    array-length v4, v4

    invoke-direct {v1, v2, v3, v4}, Lgnu/lists/PositionManager;->addToFreeList([III)V

    .line 58
    return-void
.end method

.method private addToFreeList([III)V
    .locals 9

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PositionManager;
    move-object v1, p1

    .local v1, "ivals":[I
    move v2, p2

    .local v2, "first":I
    move v3, p3

    .local v3, "end":I
    move-object v6, v0

    iget v6, v6, Lgnu/lists/PositionManager;->freeListHead:I

    move v4, v6

    .line 26
    .local v4, "head":I
    move v6, v2

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move v7, v3

    if-ge v6, v7, :cond_0

    .line 28
    move-object v6, v1

    move v7, v5

    move v8, v4

    aput v8, v6, v7

    .line 29
    move v6, v5

    move v4, v6

    .line 26
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 31
    :cond_0
    move-object v6, v0

    move v7, v4

    iput v7, v6, Lgnu/lists/PositionManager;->freeListHead:I

    .line 32
    return-void
.end method

.method private getFreeSlot()I
    .locals 10

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PositionManager;
    move-object v5, v0

    iget v5, v5, Lgnu/lists/PositionManager;->freeListHead:I

    move v1, v5

    .line 37
    .local v1, "head":I
    move v5, v1

    if-gez v5, :cond_0

    .line 39
    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/PositionManager;->positions:[Lgnu/lists/SeqPosition;

    array-length v5, v5

    move v2, v5

    .line 40
    .local v2, "old_size":I
    const/4 v5, 0x2

    move v6, v2

    mul-int/2addr v5, v6

    new-array v5, v5, [Lgnu/lists/SeqPosition;

    move-object v3, v5

    .line 41
    .local v3, "npositions":[Lgnu/lists/SeqPosition;
    const/4 v5, 0x2

    move v6, v2

    mul-int/2addr v5, v6

    new-array v5, v5, [I

    move-object v4, v5

    .line 42
    .local v4, "nvals":[I
    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/PositionManager;->positions:[Lgnu/lists/SeqPosition;

    const/4 v6, 0x0

    move-object v7, v3

    const/4 v8, 0x0

    move v9, v2

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/PositionManager;->ivals:[I

    const/4 v6, 0x0

    move-object v7, v4

    const/4 v8, 0x0

    move v9, v2

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lgnu/lists/PositionManager;->positions:[Lgnu/lists/SeqPosition;

    .line 45
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lgnu/lists/PositionManager;->ivals:[I

    .line 46
    move-object v5, v0

    move-object v6, v4

    move v7, v2

    const/4 v8, 0x2

    move v9, v2

    mul-int/2addr v8, v9

    invoke-direct {v5, v6, v7, v8}, Lgnu/lists/PositionManager;->addToFreeList([III)V

    .line 47
    move-object v5, v0

    iget v5, v5, Lgnu/lists/PositionManager;->freeListHead:I

    move v1, v5

    .line 49
    .end local v2    # "old_size":I
    .end local v3    # "npositions":[Lgnu/lists/SeqPosition;
    .end local v4    # "nvals":[I
    :cond_0
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/PositionManager;->ivals:[I

    move v7, v1

    aget v6, v6, v7

    iput v6, v5, Lgnu/lists/PositionManager;->freeListHead:I

    .line 50
    move v5, v1

    move v0, v5

    .end local v0    # "this":Lgnu/lists/PositionManager;
    return v0
.end method

.method public static getPositionObject(I)Lgnu/lists/SeqPosition;
    .locals 7

    .prologue
    .line 12
    move v0, p0

    .local v0, "ipos":I
    sget-object v4, Lgnu/lists/PositionManager;->manager:Lgnu/lists/PositionManager;

    move-object v1, v4

    .line 13
    .local v1, "m":Lgnu/lists/PositionManager;
    move-object v4, v1

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 15
    move-object v4, v1

    :try_start_0
    iget-object v4, v4, Lgnu/lists/PositionManager;->positions:[Lgnu/lists/SeqPosition;

    move v5, v0

    aget-object v4, v4, v5

    move-object v5, v2

    monitor-exit v5

    move-object v0, v4

    .end local v0    # "ipos":I
    return-object v0

    .line 16
    .restart local v0    # "ipos":I
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method


# virtual methods
.method public declared-synchronized register(Lgnu/lists/SeqPosition;)I
    .locals 7

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PositionManager;
    move-object v1, p1

    .local v1, "pos":Lgnu/lists/SeqPosition;
    move-object v6, p0

    monitor-enter v6

    move-object v3, v0

    :try_start_0
    invoke-direct {v3}, Lgnu/lists/PositionManager;->getFreeSlot()I

    move-result v3

    move v2, v3

    .line 63
    .local v2, "i":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/PositionManager;->positions:[Lgnu/lists/SeqPosition;

    move v4, v2

    move-object v5, v1

    aput-object v5, v3, v4

    .line 64
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/PositionManager;->ivals:[I

    move v4, v2

    const/4 v5, -0x1

    aput v5, v3, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    move v3, v2

    move v0, v3

    .end local v0    # "this":Lgnu/lists/PositionManager;
    monitor-exit v6

    return v0

    .line 62
    .end local v2    # "i":I
    .restart local v0    # "this":Lgnu/lists/PositionManager;
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lgnu/lists/PositionManager;
    throw v0
.end method

.method public declared-synchronized release(I)V
    .locals 7

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PositionManager;
    move v1, p1

    .local v1, "ipos":I
    move-object v6, p0

    monitor-enter v6

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lgnu/lists/PositionManager;->positions:[Lgnu/lists/SeqPosition;

    move v4, v1

    aget-object v3, v3, v4

    move-object v2, v3

    .line 71
    .local v2, "pos":Lgnu/lists/SeqPosition;
    move-object v3, v2

    instance-of v3, v3, Lgnu/lists/ExtPosition;

    if-eqz v3, :cond_0

    .line 72
    move-object v3, v2

    check-cast v3, Lgnu/lists/ExtPosition;

    const/4 v4, -0x1

    iput v4, v3, Lgnu/lists/ExtPosition;->position:I

    .line 73
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/PositionManager;->positions:[Lgnu/lists/SeqPosition;

    move v4, v1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 74
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/PositionManager;->ivals:[I

    move v4, v1

    move-object v5, v0

    iget v5, v5, Lgnu/lists/PositionManager;->freeListHead:I

    aput v5, v3, v4

    .line 75
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lgnu/lists/PositionManager;->freeListHead:I

    .line 76
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/lists/SeqPosition;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit v6

    return-void

    .line 70
    .end local v2    # "pos":Lgnu/lists/SeqPosition;
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lgnu/lists/PositionManager;
    throw v0
.end method
