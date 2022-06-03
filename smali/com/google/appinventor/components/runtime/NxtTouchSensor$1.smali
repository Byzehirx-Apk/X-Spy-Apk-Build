.class final Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NxtTouchSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtTouchSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)V
    .locals 4

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 55
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 56
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtTouchSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    move-result-object v2

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 57
    move-object v1, v3

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->hqHtvKVLFGgMVMSKZM3hViIxQKdIh8YXfZOV4lmVWV1e2Mndp07BOheWTgPW1jrN:Z

    if-eqz v2, :cond_2

    .line 58
    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    sget v2, Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;->bjRTr59rlfMAk3NoImwosXnapn2cygGkKCeZagS1kgI5blNKx2IlW2vUboyQWmzb:I

    :goto_0
    move v4, v2

    move v2, v4

    move v3, v4

    .line 60
    move v1, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 61
    move v2, v1

    sget v3, Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;->bjRTr59rlfMAk3NoImwosXnapn2cygGkKCeZagS1kgI5blNKx2IlW2vUboyQWmzb:I

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->Pressed()V

    .line 64
    :cond_0
    move v2, v1

    sget v3, Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;->haiIuOdmUoc5XQFvR9GJKGOwB3ZezhsWV0MdG7MgpkerzHclvrTRoGLrsRSHUTL5:I

    if-ne v2, v3, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->Released()V

    .line 69
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    move v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtTouchSensor;I)I

    move-result v2

    .line 72
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 73
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Landroid/os/Handler;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    .line 75
    :cond_3
    return-void

    .line 58
    :cond_4
    sget v2, Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;->haiIuOdmUoc5XQFvR9GJKGOwB3ZezhsWV0MdG7MgpkerzHclvrTRoGLrsRSHUTL5:I

    goto :goto_0
.end method
