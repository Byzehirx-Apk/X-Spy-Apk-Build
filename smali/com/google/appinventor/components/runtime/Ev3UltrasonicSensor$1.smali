.class final Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)V
    .locals 4

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 67
    move-object v0, p0

    const-string/jumbo v4, ""

    move-object v1, v4

    .line 69
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 70
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;Ljava/lang/String;)D

    move-result-wide v4

    move-wide v2, v4

    .line 72
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 73
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    move-wide v5, v2

    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;D)D

    move-result-wide v4

    .line 74
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)Landroid/os/Handler;

    move-result-object v4

    move-object v5, v0

    const-wide/16 v6, 0x32

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v4

    .line 75
    .line 93
    :goto_0
    return-void

    .line 78
    :cond_0
    move-wide v4, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)I

    move-result v6

    int-to-double v6, v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3

    .line 79
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)D

    move-result-wide v4

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)I

    move-result v6

    int-to-double v6, v6

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_1

    .line 80
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->BelowRange()V

    .line 89
    :cond_1
    :goto_1
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    move-wide v5, v2

    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;D)D

    move-result-wide v4

    .line 92
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)Landroid/os/Handler;

    move-result-object v4

    move-object v5, v0

    const-wide/16 v6, 0x32

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v4

    .line 93
    goto :goto_0

    .line 81
    :cond_3
    move-wide v4, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)I

    move-result v6

    int-to-double v6, v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_4

    .line 82
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)D

    move-result-wide v4

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)I

    move-result v6

    int-to-double v6, v6

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_1

    .line 83
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->AboveRange()V

    goto :goto_1

    .line 85
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)D

    move-result-wide v4

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)I

    move-result v6

    int-to-double v6, v6

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_5

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)D

    move-result-wide v4

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)I

    move-result v6

    int-to-double v6, v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 86
    :cond_5
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->WithinRange()V

    goto :goto_1
.end method
