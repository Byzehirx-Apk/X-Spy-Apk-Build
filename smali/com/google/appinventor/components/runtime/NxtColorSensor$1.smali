.class final Lcom/google/appinventor/components/runtime/NxtColorSensor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NxtColorSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NxtColorSensor;)V
    .locals 4

    .prologue
    .line 95
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 97
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtColorSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtColorSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 100
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtColorSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    move-result-object v2

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 101
    move-object v1, v3

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->hqHtvKVLFGgMVMSKZM3hViIxQKdIh8YXfZOV4lmVWV1e2Mndp07BOheWTgPW1jrN:Z

    if-eqz v2, :cond_1

    .line 102
    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v4, v2

    move v2, v4

    move v3, v4

    .line 104
    move v1, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtColorSensor;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 105
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->ColorChanged(I)V

    .line 108
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    move v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtColorSensor;I)I

    move-result v2

    .line 111
    .line 140
    :cond_1
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 141
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Landroid/os/Handler;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    .line 143
    :cond_2
    return-void

    .line 113
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/NxtColorSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    move-result-object v2

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 114
    move-object v1, v3

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->hqHtvKVLFGgMVMSKZM3hViIxQKdIh8YXfZOV4lmVWV1e2Mndp07BOheWTgPW1jrN:Z

    if-eqz v2, :cond_1

    .line 116
    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/NxtColorSensor;)I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 117
    sget v2, Lcom/google/appinventor/components/runtime/NxtColorSensor$a;->NqI9fRlBp15rsxXeNmRjOrUuQwDxdaDY0xSQj1B7T50sMWnnasnmhTtbykVZmafW:I

    move v1, v2

    .line 124
    :goto_1
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/NxtColorSensor;)I

    move-result v3

    if-eq v2, v3, :cond_6

    .line 125
    move v2, v1

    sget v3, Lcom/google/appinventor/components/runtime/NxtColorSensor$a;->NqI9fRlBp15rsxXeNmRjOrUuQwDxdaDY0xSQj1B7T50sMWnnasnmhTtbykVZmafW:I

    if-ne v2, v3, :cond_4

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 126
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->BelowRange()V

    .line 128
    :cond_4
    move v2, v1

    sget v3, Lcom/google/appinventor/components/runtime/NxtColorSensor$a;->DHXdVBD10imZD254vgJdvVnoNnGi6ltYnt493xQ866MP9unX6nAi8XBtATXxBfV8:I

    if-ne v2, v3, :cond_5

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 129
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->WithinRange()V

    .line 131
    :cond_5
    move v2, v1

    sget v3, Lcom/google/appinventor/components/runtime/NxtColorSensor$a;->LqPkE8nw2txhYsROtdyVVn8eaaz2Snf5qPRDJl9Xd4fWH3FTDxRDNp0V8h7hgt8B:I

    if-ne v2, v3, :cond_6

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 132
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->AboveRange()V

    .line 136
    :cond_6
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    move v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/NxtColorSensor;I)I

    move-result v2

    goto/16 :goto_0

    .line 118
    :cond_7
    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/NxtColorSensor;)I

    move-result v3

    if-le v2, v3, :cond_8

    .line 119
    sget v2, Lcom/google/appinventor/components/runtime/NxtColorSensor$a;->LqPkE8nw2txhYsROtdyVVn8eaaz2Snf5qPRDJl9Xd4fWH3FTDxRDNp0V8h7hgt8B:I

    move v1, v2

    goto :goto_1

    .line 121
    :cond_8
    sget v2, Lcom/google/appinventor/components/runtime/NxtColorSensor$a;->DHXdVBD10imZD254vgJdvVnoNnGi6ltYnt493xQ866MP9unX6nAi8XBtATXxBfV8:I

    move v1, v2

    goto :goto_1
.end method
