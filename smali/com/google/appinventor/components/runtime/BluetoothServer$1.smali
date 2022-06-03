.class final Lcom/google/appinventor/components/runtime/BluetoothServer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/BluetoothServer;->accept(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothServer;

.field final synthetic sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/BluetoothServer;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 111
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothServer;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:Ljava/lang/String;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    .line 113
    move-object v0, p0

    const/4 v3, 0x0

    move-object v1, v3

    .line 115
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothServer;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/BluetoothServer;->access$000(Lcom/google/appinventor/components/runtime/BluetoothServer;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    .line 116
    move-object v2, v4

    if-eqz v3, :cond_0

    .line 119
    move-object v3, v2

    :try_start_0
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->accept(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    move-object v1, v3

    .line 128
    .line 130
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothServer;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/BluetoothServer;->StopAccepting()V

    .line 131
    .line 134
    :cond_0
    move-object v3, v1

    if-eqz v3, :cond_1

    .line 137
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothServer;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/BluetoothServer;->access$100(Lcom/google/appinventor/components/runtime/BluetoothServer;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/google/appinventor/components/runtime/BluetoothServer$1$2;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/runtime/BluetoothServer$1$2;-><init>(Lcom/google/appinventor/components/runtime/BluetoothServer$1;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v3

    .line 152
    :cond_1
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v3

    move-object v3, v0

    :try_start_1
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothServer;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/BluetoothServer;->access$100(Lcom/google/appinventor/components/runtime/BluetoothServer;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/google/appinventor/components/runtime/BluetoothServer$1$1;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/BluetoothServer$1$1;-><init>(Lcom/google/appinventor/components/runtime/BluetoothServer$1;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 130
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothServer;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/BluetoothServer;->StopAccepting()V

    .line 127
    goto :goto_0

    .line 130
    :catchall_0
    move-exception v3

    move-object v1, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothServer;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/BluetoothServer;->StopAccepting()V

    .line 131
    move-object v3, v1

    throw v3
.end method
