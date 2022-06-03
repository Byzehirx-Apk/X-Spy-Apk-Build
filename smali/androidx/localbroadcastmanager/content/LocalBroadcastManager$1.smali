.class Landroidx/localbroadcastmanager/content/LocalBroadcastManager$1;
.super Landroid/os/Handler;
.source "LocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/localbroadcastmanager/content/LocalBroadcastManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;


# direct methods
.method constructor <init>(Landroidx/localbroadcastmanager/content/LocalBroadcastManager;Landroid/os/Looper;)V
    .locals 5

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    move-object v2, p2

    .local v2, "x0":Landroid/os/Looper;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$1;->this$0:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$1;
    move-object v1, p1

    .local v1, "msg":Landroid/os/Message;
    move-object v2, v1

    iget v2, v2, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 124
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 126
    :goto_0
    return-void

    .line 121
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$1;->this$0:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-virtual {v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->executePendingBroadcasts()V

    .line 122
    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
