.class Landroid/support/v4/os/ResultReceiver$MyResultReceiver;
.super Landroid/support/v4/os/IResultReceiver$Stub;
.source "ResultReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/os/ResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/os/ResultReceiver;


# direct methods
.method constructor <init>(Landroid/support/v4/os/ResultReceiver;)V
    .locals 4

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Landroid/support/v4/os/ResultReceiver$MyResultReceiver;
    move-object v1, p1

    .local v1, "this$0":Landroid/support/v4/os/ResultReceiver;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/os/ResultReceiver$MyResultReceiver;->this$0:Landroid/support/v4/os/ResultReceiver;

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/os/IResultReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/os/Bundle;)V
    .locals 10

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Landroid/support/v4/os/ResultReceiver$MyResultReceiver;
    move v1, p1

    .local v1, "resultCode":I
    move-object v2, p2

    .local v2, "resultData":Landroid/os/Bundle;
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/os/ResultReceiver$MyResultReceiver;->this$0:Landroid/support/v4/os/ResultReceiver;

    iget-object v3, v3, Landroid/support/v4/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 69
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/os/ResultReceiver$MyResultReceiver;->this$0:Landroid/support/v4/os/ResultReceiver;

    iget-object v3, v3, Landroid/support/v4/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    new-instance v4, Landroid/support/v4/os/ResultReceiver$MyRunnable;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/os/ResultReceiver$MyResultReceiver;->this$0:Landroid/support/v4/os/ResultReceiver;

    move v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v4/os/ResultReceiver$MyRunnable;-><init>(Landroid/support/v4/os/ResultReceiver;ILandroid/os/Bundle;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v3

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/os/ResultReceiver$MyResultReceiver;->this$0:Landroid/support/v4/os/ResultReceiver;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    goto :goto_0
.end method
