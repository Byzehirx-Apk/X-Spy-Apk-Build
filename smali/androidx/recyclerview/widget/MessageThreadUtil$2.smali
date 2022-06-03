.class Landroidx/recyclerview/widget/MessageThreadUtil$2;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"

# interfaces
.implements Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/MessageThreadUtil;->getBackgroundProxy(Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;)Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final LOAD_TILE:I = 0x3

.field static final RECYCLE_TILE:I = 0x4

.field static final REFRESH:I = 0x1

.field static final UPDATE_RANGE:I = 0x2


# instance fields
.field private mBackgroundRunnable:Ljava/lang/Runnable;

.field mBackgroundRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field final mQueue:Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

.field final synthetic this$0:Landroidx/recyclerview/widget/MessageThreadUtil;

.field final synthetic val$callback:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/MessageThreadUtil;Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;)V
    .locals 8

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/MessageThreadUtil$2;, "Landroidx/recyclerview/widget/MessageThreadUtil$2;"
    move-object v1, p1

    .local v1, "this$0":Landroidx/recyclerview/widget/MessageThreadUtil;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/recyclerview/widget/MessageThreadUtil$2;->this$0:Landroidx/recyclerview/widget/MessageThreadUtil;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/recyclerview/widget/MessageThreadUtil$2;->val$callback:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 88
    move-object v3, v0

    new-instance v4, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;-><init>()V

    iput-object v4, v3, Landroidx/recyclerview/widget/MessageThreadUtil$2;->mQueue:Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    .line 89
    move-object v3, v0

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iput-object v4, v3, Landroidx/recyclerview/widget/MessageThreadUtil$2;->mExecutor:Ljava/util/concurrent/Executor;

    .line 90
    move-object v3, v0

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, v3, Landroidx/recyclerview/widget/MessageThreadUtil$2;->mBackgroundRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 135
    move-object v3, v0

    new-instance v4, Landroidx/recyclerview/widget/MessageThreadUtil$2$1;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/MessageThreadUtil$2$1;-><init>(Landroidx/recyclerview/widget/MessageThreadUtil$2;)V

    iput-object v4, v3, Landroidx/recyclerview/widget/MessageThreadUtil$2;->mBackgroundRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private maybeExecuteBackgroundRunnable()V
    .locals 4

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/MessageThreadUtil$2;, "Landroidx/recyclerview/widget/MessageThreadUtil$2;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/MessageThreadUtil$2;->mBackgroundRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/MessageThreadUtil$2;->mExecutor:Ljava/util/concurrent/Executor;

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/MessageThreadUtil$2;->mBackgroundRunnable:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 133
    :cond_0
    return-void
.end method

.method private sendMessage(Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V
    .locals 4

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/MessageThreadUtil$2;, "Landroidx/recyclerview/widget/MessageThreadUtil$2;"
    move-object v1, p1

    .local v1, "msg":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/MessageThreadUtil$2;->mQueue:Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->sendMessage(Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    .line 121
    move-object v2, v0

    invoke-direct {v2}, Landroidx/recyclerview/widget/MessageThreadUtil$2;->maybeExecuteBackgroundRunnable()V

    .line 122
    return-void
.end method

.method private sendMessageAtFrontOfQueue(Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V
    .locals 4

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/MessageThreadUtil$2;, "Landroidx/recyclerview/widget/MessageThreadUtil$2;"
    move-object v1, p1

    .local v1, "msg":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/MessageThreadUtil$2;->mQueue:Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->sendMessageAtFrontOfQueue(Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    .line 126
    move-object v2, v0

    invoke-direct {v2}, Landroidx/recyclerview/widget/MessageThreadUtil$2;->maybeExecuteBackgroundRunnable()V

    .line 127
    return-void
.end method


# virtual methods
.method public loadTile(II)V
    .locals 7

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/MessageThreadUtil$2;, "Landroidx/recyclerview/widget/MessageThreadUtil$2;"
    move v1, p1

    .local v1, "position":I
    move v2, p2

    .local v2, "scrollHint":I
    move-object v3, v0

    const/4 v4, 0x3

    move v5, v1

    move v6, v2

    invoke-static {v4, v5, v6}, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->obtainMessage(III)Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/MessageThreadUtil$2;->sendMessage(Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    .line 112
    return-void
.end method

.method public recycleTile(Landroidx/recyclerview/widget/TileList$Tile;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/TileList$Tile",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/MessageThreadUtil$2;, "Landroidx/recyclerview/widget/MessageThreadUtil$2;"
    move-object v1, p1

    .local v1, "tile":Landroidx/recyclerview/widget/TileList$Tile;, "Landroidx/recyclerview/widget/TileList$Tile<TT;>;"
    move-object v2, v0

    const/4 v3, 0x4

    const/4 v4, 0x0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->obtainMessage(IILjava/lang/Object;)Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/MessageThreadUtil$2;->sendMessage(Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    .line 117
    return-void
.end method

.method public refresh(I)V
    .locals 6

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/MessageThreadUtil$2;, "Landroidx/recyclerview/widget/MessageThreadUtil$2;"
    move v1, p1

    .local v1, "generation":I
    move-object v2, v0

    const/4 v3, 0x1

    move v4, v1

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->obtainMessage(IILjava/lang/Object;)Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/MessageThreadUtil$2;->sendMessageAtFrontOfQueue(Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    .line 100
    return-void
.end method

.method public updateRange(IIIII)V
    .locals 14

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/MessageThreadUtil$2;, "Landroidx/recyclerview/widget/MessageThreadUtil$2;"
    move v1, p1

    .local v1, "rangeStart":I
    move/from16 v2, p2

    .local v2, "rangeEnd":I
    move/from16 v3, p3

    .local v3, "extRangeStart":I
    move/from16 v4, p4

    .local v4, "extRangeEnd":I
    move/from16 v5, p5

    .local v5, "scrollHint":I
    move-object v6, v0

    const/4 v7, 0x2

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->obtainMessage(IIIIIILjava/lang/Object;)Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object v7

    invoke-direct {v6, v7}, Landroidx/recyclerview/widget/MessageThreadUtil$2;->sendMessageAtFrontOfQueue(Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    .line 107
    return-void
.end method
