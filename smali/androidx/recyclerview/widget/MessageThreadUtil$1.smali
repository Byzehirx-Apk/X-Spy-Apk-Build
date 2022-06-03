.class Landroidx/recyclerview/widget/MessageThreadUtil$1;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"

# interfaces
.implements Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/MessageThreadUtil;->getMainThreadProxy(Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;)Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final ADD_TILE:I = 0x2

.field static final REMOVE_TILE:I = 0x3

.field static final UPDATE_ITEM_COUNT:I = 0x1


# instance fields
.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mMainThreadRunnable:Ljava/lang/Runnable;

.field final mQueue:Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

.field final synthetic this$0:Landroidx/recyclerview/widget/MessageThreadUtil;

.field final synthetic val$callback:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/MessageThreadUtil;Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;)V
    .locals 8

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/MessageThreadUtil$1;, "Landroidx/recyclerview/widget/MessageThreadUtil$1;"
    move-object v1, p1

    .local v1, "this$0":Landroidx/recyclerview/widget/MessageThreadUtil;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/recyclerview/widget/MessageThreadUtil$1;->this$0:Landroidx/recyclerview/widget/MessageThreadUtil;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/recyclerview/widget/MessageThreadUtil$1;->val$callback:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 32
    move-object v3, v0

    new-instance v4, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;-><init>()V

    iput-object v4, v3, Landroidx/recyclerview/widget/MessageThreadUtil$1;->mQueue:Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    .line 33
    move-object v3, v0

    new-instance v4, Landroid/os/Handler;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, v3, Landroidx/recyclerview/widget/MessageThreadUtil$1;->mMainThreadHandler:Landroid/os/Handler;

    .line 59
    move-object v3, v0

    new-instance v4, Landroidx/recyclerview/widget/MessageThreadUtil$1$1;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/MessageThreadUtil$1$1;-><init>(Landroidx/recyclerview/widget/MessageThreadUtil$1;)V

    iput-object v4, v3, Landroidx/recyclerview/widget/MessageThreadUtil$1;->mMainThreadRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private sendMessage(Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V
    .locals 4

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/MessageThreadUtil$1;, "Landroidx/recyclerview/widget/MessageThreadUtil$1;"
    move-object v1, p1

    .local v1, "msg":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/MessageThreadUtil$1;->mQueue:Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->sendMessage(Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    .line 56
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/MessageThreadUtil$1;->mMainThreadHandler:Landroid/os/Handler;

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/MessageThreadUtil$1;->mMainThreadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    .line 57
    return-void
.end method


# virtual methods
.method public addTile(ILandroidx/recyclerview/widget/TileList$Tile;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/recyclerview/widget/TileList$Tile",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/MessageThreadUtil$1;, "Landroidx/recyclerview/widget/MessageThreadUtil$1;"
    move v1, p1

    .local v1, "generation":I
    move-object v2, p2

    .local v2, "tile":Landroidx/recyclerview/widget/TileList$Tile;, "Landroidx/recyclerview/widget/TileList$Tile<TT;>;"
    move-object v3, v0

    const/4 v4, 0x2

    move v5, v1

    move-object v6, v2

    invoke-static {v4, v5, v6}, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->obtainMessage(IILjava/lang/Object;)Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/MessageThreadUtil$1;->sendMessage(Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    .line 47
    return-void
.end method

.method public removeTile(II)V
    .locals 7

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/MessageThreadUtil$1;, "Landroidx/recyclerview/widget/MessageThreadUtil$1;"
    move v1, p1

    .local v1, "generation":I
    move v2, p2

    .local v2, "position":I
    move-object v3, v0

    const/4 v4, 0x3

    move v5, v1

    move v6, v2

    invoke-static {v4, v5, v6}, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->obtainMessage(III)Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/MessageThreadUtil$1;->sendMessage(Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    .line 52
    return-void
.end method

.method public updateItemCount(II)V
    .locals 7

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/MessageThreadUtil$1;, "Landroidx/recyclerview/widget/MessageThreadUtil$1;"
    move v1, p1

    .local v1, "generation":I
    move v2, p2

    .local v2, "itemCount":I
    move-object v3, v0

    const/4 v4, 0x1

    move v5, v1

    move v6, v2

    invoke-static {v4, v5, v6}, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->obtainMessage(III)Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/MessageThreadUtil$1;->sendMessage(Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    .line 42
    return-void
.end method
