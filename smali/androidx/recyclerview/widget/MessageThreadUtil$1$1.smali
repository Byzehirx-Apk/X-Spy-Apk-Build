.class Landroidx/recyclerview/widget/MessageThreadUtil$1$1;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/MessageThreadUtil$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/recyclerview/widget/MessageThreadUtil$1;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/MessageThreadUtil$1;)V
    .locals 4

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/MessageThreadUtil$1$1;, "Landroidx/recyclerview/widget/MessageThreadUtil$1$1;"
    move-object v1, p1

    .local v1, "this$1":Landroidx/recyclerview/widget/MessageThreadUtil$1;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/MessageThreadUtil$1$1;->this$1:Landroidx/recyclerview/widget/MessageThreadUtil$1;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/MessageThreadUtil$1$1;, "Landroidx/recyclerview/widget/MessageThreadUtil$1$1;"
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/MessageThreadUtil$1$1;->this$1:Landroidx/recyclerview/widget/MessageThreadUtil$1;

    iget-object v2, v2, Landroidx/recyclerview/widget/MessageThreadUtil$1;->mQueue:Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->next()Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object v2

    move-object v1, v2

    .line 63
    .local v1, "msg":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :goto_0
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 64
    move-object v2, v1

    iget v2, v2, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->what:I

    packed-switch v2, :pswitch_data_0

    .line 76
    const-string/jumbo v2, "ThreadUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

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

    .line 78
    :goto_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/MessageThreadUtil$1$1;->this$1:Landroidx/recyclerview/widget/MessageThreadUtil$1;

    iget-object v2, v2, Landroidx/recyclerview/widget/MessageThreadUtil$1;->mQueue:Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->next()Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 66
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/MessageThreadUtil$1$1;->this$1:Landroidx/recyclerview/widget/MessageThreadUtil$1;

    iget-object v2, v2, Landroidx/recyclerview/widget/MessageThreadUtil$1;->val$callback:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    move-object v3, v1

    iget v3, v3, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg1:I

    move-object v4, v1

    iget v4, v4, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg2:I

    invoke-interface {v2, v3, v4}, Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;->updateItemCount(II)V

    .line 67
    goto :goto_1

    .line 70
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/MessageThreadUtil$1$1;->this$1:Landroidx/recyclerview/widget/MessageThreadUtil$1;

    iget-object v2, v2, Landroidx/recyclerview/widget/MessageThreadUtil$1;->val$callback:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    move-object v3, v1

    iget v3, v3, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg1:I

    move-object v4, v1

    iget-object v4, v4, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->data:Ljava/lang/Object;

    check-cast v4, Landroidx/recyclerview/widget/TileList$Tile;

    invoke-interface {v2, v3, v4}, Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;->addTile(ILandroidx/recyclerview/widget/TileList$Tile;)V

    .line 71
    goto :goto_1

    .line 73
    :pswitch_2
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/MessageThreadUtil$1$1;->this$1:Landroidx/recyclerview/widget/MessageThreadUtil$1;

    iget-object v2, v2, Landroidx/recyclerview/widget/MessageThreadUtil$1;->val$callback:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    move-object v3, v1

    iget v3, v3, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg1:I

    move-object v4, v1

    iget v4, v4, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg2:I

    invoke-interface {v2, v3, v4}, Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;->removeTile(II)V

    .line 74
    goto :goto_1

    .line 80
    :cond_0
    return-void

    .line 64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
