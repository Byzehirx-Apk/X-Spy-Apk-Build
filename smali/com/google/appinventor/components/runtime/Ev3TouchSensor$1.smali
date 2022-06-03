.class final Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Ev3TouchSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)V
    .locals 4

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 58
    move-object v0, p0

    const-string/jumbo v2, ""

    move-object v1, v2

    .line 60
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 61
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;Ljava/lang/String;)I

    move-result v2

    move v1, v2

    .line 63
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)I

    move-result v2

    if-gez v2, :cond_0

    .line 64
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    move v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;I)I

    move-result v2

    .line 65
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)Landroid/os/Handler;

    move-result-object v2

    move-object v3, v0

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    .line 66
    .line 81
    :goto_0
    return-void

    .line 69
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)I

    move-result v2

    const/16 v3, 0x32

    if-ge v2, v3, :cond_3

    .line 70
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    const/16 v3, 0x32

    if-lt v2, v3, :cond_1

    .line 71
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->Pressed()V

    .line 77
    :cond_1
    :goto_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    move v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;I)I

    move-result v2

    .line 80
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)Landroid/os/Handler;

    move-result-object v2

    move-object v3, v0

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    .line 81
    goto :goto_0

    .line 73
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    const/16 v3, 0x32

    if-ge v2, v3, :cond_1

    .line 74
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->Released()V

    goto :goto_1
.end method
