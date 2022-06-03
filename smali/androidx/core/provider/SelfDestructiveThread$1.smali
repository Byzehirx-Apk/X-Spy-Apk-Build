.class Landroidx/core/provider/SelfDestructiveThread$1;
.super Ljava/lang/Object;
.source "SelfDestructiveThread.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/provider/SelfDestructiveThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/provider/SelfDestructiveThread;


# direct methods
.method constructor <init>(Landroidx/core/provider/SelfDestructiveThread;)V
    .locals 4

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/SelfDestructiveThread$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/core/provider/SelfDestructiveThread;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/provider/SelfDestructiveThread$1;->this$0:Landroidx/core/provider/SelfDestructiveThread;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/SelfDestructiveThread$1;
    move-object v1, p1

    .local v1, "msg":Landroid/os/Message;
    move-object v2, v1

    iget v2, v2, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 69
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Landroidx/core/provider/SelfDestructiveThread$1;
    :goto_0
    return v0

    .line 63
    .restart local v0    # "this":Landroidx/core/provider/SelfDestructiveThread$1;
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/provider/SelfDestructiveThread$1;->this$0:Landroidx/core/provider/SelfDestructiveThread;

    move-object v3, v1

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroidx/core/provider/SelfDestructiveThread;->onInvokeRunnable(Ljava/lang/Runnable;)V

    .line 64
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 66
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/provider/SelfDestructiveThread$1;->this$0:Landroidx/core/provider/SelfDestructiveThread;

    invoke-virtual {v2}, Landroidx/core/provider/SelfDestructiveThread;->onDestruction()V

    .line 67
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
