.class final Lcom/google/appinventor/components/runtime/NxtLightSensor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NxtLightSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtLightSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NxtLightSensor;)V
    .locals 4

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 60
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtLightSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v2, :cond_3

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtLightSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 61
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtLightSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    move-result-object v2

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 62
    move-object v1, v3

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->hqHtvKVLFGgMVMSKZM3hViIxQKdIh8YXfZOV4lmVWV1e2Mndp07BOheWTgPW1jrN:Z

    if-eqz v2, :cond_3

    .line 64
    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtLightSensor;)I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 65
    sget v2, Lcom/google/appinventor/components/runtime/NxtLightSensor$a;->g16lHC6pRQoq0FWou0AzFVTKqyDojHRb8fcaYD4yg7tKEFm8ChlIf2uMkTa8F6nE:I

    move v1, v2

    .line 72
    :goto_0
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/NxtLightSensor;)I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 73
    move v2, v1

    sget v3, Lcom/google/appinventor/components/runtime/NxtLightSensor$a;->g16lHC6pRQoq0FWou0AzFVTKqyDojHRb8fcaYD4yg7tKEFm8ChlIf2uMkTa8F6nE:I

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->BelowRange()V

    .line 76
    :cond_0
    move v2, v1

    sget v3, Lcom/google/appinventor/components/runtime/NxtLightSensor$a;->xhzCIls1ZjY8rVr9uwfX6Ll4V1k7OjFmFraAgvYK73j7xL9tODrZc0oupoL3seO9:I

    if-ne v2, v3, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->WithinRange()V

    .line 79
    :cond_1
    move v2, v1

    sget v3, Lcom/google/appinventor/components/runtime/NxtLightSensor$a;->rwH5QsW1tECSJqEYisIw7mgmF1LBaoVJw606thITSS1io7bESEMnIJXTcF47IT5D:I

    if-ne v2, v3, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 80
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->AboveRange()V

    .line 84
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    move v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtLightSensor;I)I

    move-result v2

    .line 87
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 88
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Landroid/os/Handler;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    .line 90
    :cond_4
    return-void

    .line 66
    :cond_5
    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/NxtLightSensor;)I

    move-result v3

    if-le v2, v3, :cond_6

    .line 67
    sget v2, Lcom/google/appinventor/components/runtime/NxtLightSensor$a;->rwH5QsW1tECSJqEYisIw7mgmF1LBaoVJw606thITSS1io7bESEMnIJXTcF47IT5D:I

    move v1, v2

    goto :goto_0

    .line 69
    :cond_6
    sget v2, Lcom/google/appinventor/components/runtime/NxtLightSensor$a;->xhzCIls1ZjY8rVr9uwfX6Ll4V1k7OjFmFraAgvYK73j7xL9tODrZc0oupoL3seO9:I

    move v1, v2

    goto/16 :goto_0
.end method
