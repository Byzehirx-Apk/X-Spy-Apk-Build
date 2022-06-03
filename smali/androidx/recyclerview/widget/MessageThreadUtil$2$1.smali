.class Landroidx/recyclerview/widget/MessageThreadUtil$2$1;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/MessageThreadUtil$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/recyclerview/widget/MessageThreadUtil$2;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/MessageThreadUtil$2;)V
    .locals 4

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/MessageThreadUtil$2$1;, "Landroidx/recyclerview/widget/MessageThreadUtil$2$1;"
    move-object v1, p1

    .local v1, "this$1":Landroidx/recyclerview/widget/MessageThreadUtil$2;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/MessageThreadUtil$2$1;->this$1:Landroidx/recyclerview/widget/MessageThreadUtil$2;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/MessageThreadUtil$2$1;, "Landroidx/recyclerview/widget/MessageThreadUtil$2$1;"
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/MessageThreadUtil$2$1;->this$1:Landroidx/recyclerview/widget/MessageThreadUtil$2;

    iget-object v2, v2, Landroidx/recyclerview/widget/MessageThreadUtil$2;->mQueue:Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->next()Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object v2

    move-object v1, v2

    .line 140
    .local v1, "msg":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 141
    .line 165
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/MessageThreadUtil$2$1;->this$1:Landroidx/recyclerview/widget/MessageThreadUtil$2;

    iget-object v2, v2, Landroidx/recyclerview/widget/MessageThreadUtil$2;->mBackgroundRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 166
    return-void

    .line 143
    :cond_0
    move-object v2, v1

    iget v2, v2, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->what:I

    packed-switch v2, :pswitch_data_0

    .line 162
    const-string/jumbo v2, "ThreadUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported message, what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    iget v4, v4, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 164
    :goto_1
    goto :goto_0

    .line 145
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/MessageThreadUtil$2$1;->this$1:Landroidx/recyclerview/widget/MessageThreadUtil$2;

    iget-object v2, v2, Landroidx/recyclerview/widget/MessageThreadUtil$2;->mQueue:Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->removeMessages(I)V

    .line 146
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/MessageThreadUtil$2$1;->this$1:Landroidx/recyclerview/widget/MessageThreadUtil$2;

    iget-object v2, v2, Landroidx/recyclerview/widget/MessageThreadUtil$2;->val$callback:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    move-object v3, v1

    iget v3, v3, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg1:I

    invoke-interface {v2, v3}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->refresh(I)V

    .line 147
    goto :goto_1

    .line 149
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/MessageThreadUtil$2$1;->this$1:Landroidx/recyclerview/widget/MessageThreadUtil$2;

    iget-object v2, v2, Landroidx/recyclerview/widget/MessageThreadUtil$2;->mQueue:Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->removeMessages(I)V

    .line 150
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/MessageThreadUtil$2$1;->this$1:Landroidx/recyclerview/widget/MessageThreadUtil$2;

    iget-object v2, v2, Landroidx/recyclerview/widget/MessageThreadUtil$2;->mQueue:Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->removeMessages(I)V

    .line 151
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/MessageThreadUtil$2$1;->this$1:Landroidx/recyclerview/widget/MessageThreadUtil$2;

    iget-object v2, v2, Landroidx/recyclerview/widget/MessageThreadUtil$2;->val$callback:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    move-object v3, v1

    iget v3, v3, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg1:I

    move-object v4, v1

    iget v4, v4, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg2:I

    move-object v5, v1

    iget v5, v5, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg3:I

    move-object v6, v1

    iget v6, v6, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg4:I

    move-object v7, v1

    iget v7, v7, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg5:I

    invoke-interface/range {v2 .. v7}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->updateRange(IIIII)V

    .line 153
    goto :goto_1

    .line 155
    :pswitch_2
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/MessageThreadUtil$2$1;->this$1:Landroidx/recyclerview/widget/MessageThreadUtil$2;

    iget-object v2, v2, Landroidx/recyclerview/widget/MessageThreadUtil$2;->val$callback:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    move-object v3, v1

    iget v3, v3, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg1:I

    move-object v4, v1

    iget v4, v4, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg2:I

    invoke-interface {v2, v3, v4}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->loadTile(II)V

    .line 156
    goto :goto_1

    .line 159
    :pswitch_3
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/MessageThreadUtil$2$1;->this$1:Landroidx/recyclerview/widget/MessageThreadUtil$2;

    iget-object v2, v2, Landroidx/recyclerview/widget/MessageThreadUtil$2;->val$callback:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    move-object v3, v1

    iget-object v3, v3, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->data:Ljava/lang/Object;

    check-cast v3, Landroidx/recyclerview/widget/TileList$Tile;

    invoke-interface {v2, v3}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->recycleTile(Landroidx/recyclerview/widget/TileList$Tile;)V

    .line 160
    goto :goto_1

    .line 143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
