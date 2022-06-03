.class final Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Ev3ColorSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)V
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 71
    move-object v0, p0

    const-string/jumbo v2, ""

    move-object v1, v2

    .line 73
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 75
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;Ljava/lang/String;)I

    move-result v2

    move v1, v2

    .line 77
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v2

    if-gez v2, :cond_0

    .line 78
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    move v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)I

    move-result v2

    .line 79
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Landroid/os/Handler;

    move-result-object v2

    move-object v3, v0

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    .line 80
    .line 112
    :goto_0
    return-void

    .line 83
    :cond_0
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    if-eq v2, v3, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    move v6, v2

    move-object v7, v3

    move-object v2, v7

    move v3, v6

    move-object v4, v7

    move v5, v1

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->ColorChanged(ILjava/lang/String;)V

    .line 86
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    move v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)I

    move-result v2

    .line 87
    .line 111
    :cond_2
    :goto_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Landroid/os/Handler;

    move-result-object v2

    move-object v3, v0

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    .line 112
    goto :goto_0

    .line 88
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;Ljava/lang/String;)I

    move-result v2

    move v1, v2

    .line 89
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v2

    if-gez v2, :cond_4

    .line 90
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    move v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)I

    move-result v2

    .line 91
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Landroid/os/Handler;

    move-result-object v2

    move-object v3, v0

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    .line 92
    goto :goto_0

    .line 96
    :cond_4
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 97
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    if-lt v2, v3, :cond_5

    .line 98
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->BelowRange()V

    .line 107
    :cond_5
    :goto_2
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    move v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)I

    move-result v2

    goto :goto_1

    .line 99
    :cond_6
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    if-le v2, v3, :cond_7

    .line 100
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    if-gt v2, v3, :cond_5

    .line 101
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->AboveRange()V

    goto :goto_2

    .line 103
    :cond_7
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    if-lt v2, v3, :cond_8

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    if-le v2, v3, :cond_5

    .line 104
    :cond_8
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->WithinRange()V

    goto :goto_2
.end method
