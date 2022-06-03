.class final Lcom/google/appinventor/components/runtime/BatteryManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/BatteryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BatteryManager;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/BatteryManager;)V
    .locals 4

    .prologue
    .line 165
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/BatteryManager$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BatteryManager;

    move-object v2, v0

    invoke-direct {v2}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    .line 169
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/BatteryManager$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BatteryManager;

    move-object v4, v2

    const-string/jumbo v5, "health"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/BatteryManager;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/BatteryManager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BatteryManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 170
    move-object v3, v2

    const-string/jumbo v4, "plugged"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    move v7, v3

    move v3, v7

    move v4, v7

    .line 171
    move v1, v4

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 172
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/BatteryManager$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BatteryManager;

    const-string/jumbo v4, "USB"

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/BatteryManager;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/BatteryManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 180
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/BatteryManager$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BatteryManager;

    move-object v4, v2

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "present"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/BatteryManager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BatteryManager;Z)Z

    move-result v3

    .line 183
    move-object v3, v2

    const-string/jumbo v4, "scale"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    move v1, v3

    .line 185
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/BatteryManager$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BatteryManager;

    move-object v4, v2

    const-string/jumbo v5, "level"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/16 v5, 0x64

    mul-int/lit8 v4, v4, 0x64

    move v5, v1

    if-nez v5, :cond_3

    const/4 v5, 0x1

    :goto_1
    div-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/BatteryManager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BatteryManager;I)I

    move-result v3

    .line 186
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/BatteryManager$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BatteryManager;

    move-object v4, v2

    const-string/jumbo v5, "status"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/BatteryManager;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/BatteryManager;I)I

    move-result v3

    .line 187
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/BatteryManager$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BatteryManager;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/BatteryManager$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BatteryManager;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/BatteryManager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BatteryManager;)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/BatteryManager$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BatteryManager;

    .line 188
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/BatteryManager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BatteryManager;)I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    :cond_0
    const-string/jumbo v4, "IS_CHARGING"

    .line 187
    :goto_2
    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/BatteryManager;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/BatteryManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 189
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/BatteryManager$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BatteryManager;

    move-object v4, v2

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "technology"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/BatteryManager;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/BatteryManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 192
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/BatteryManager$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BatteryManager;

    move-object v4, v2

    const-string/jumbo v5, "temperature"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/BatteryManager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BatteryManager;F)F

    move-result v3

    .line 195
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/BatteryManager$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BatteryManager;

    move-object v4, v2

    const-string/jumbo v5, "voltage"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/BatteryManager;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/BatteryManager;F)F

    move-result v3

    .line 196
    return-void

    .line 174
    :cond_1
    move v3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 175
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/BatteryManager$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BatteryManager;

    const-string/jumbo v4, "AC"

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/BatteryManager;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/BatteryManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 177
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/BatteryManager$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BatteryManager;

    const-string/jumbo v4, "UNKNOWN"

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/BatteryManager;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/BatteryManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 185
    :cond_3
    move v5, v1

    goto/16 :goto_1

    .line 188
    :cond_4
    const-string/jumbo v4, "NOT_CHARGING"

    goto :goto_2
.end method
