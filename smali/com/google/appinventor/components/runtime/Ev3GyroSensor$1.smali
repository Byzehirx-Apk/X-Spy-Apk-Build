.class final Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Ev3GyroSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)V
    .locals 4

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 60
    move-object v0, p0

    const-string/jumbo v4, ""

    move-object v1, v4

    .line 62
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 63
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;Ljava/lang/String;)D

    move-result-wide v4

    move-wide v2, v4

    .line 65
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 66
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    move-wide v5, v2

    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;D)D

    move-result-wide v4

    .line 67
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)Landroid/os/Handler;

    move-result-object v4

    move-object v5, v0

    const-wide/16 v6, 0x32

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v4

    .line 68
    .line 81
    :goto_0
    return-void

    .line 72
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    move-wide v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_3

    .line 73
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->SensorValueChanged(D)V

    .line 77
    :cond_1
    :goto_1
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    move-wide v5, v2

    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;D)D

    move-result-wide v4

    .line 80
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)Landroid/os/Handler;

    move-result-object v4

    move-object v5, v0

    const-wide/16 v6, 0x32

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v4

    .line 81
    goto :goto_0

    .line 74
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)I

    move-result v4

    if-nez v4, :cond_1

    move-wide v4, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_1

    .line 75
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->SensorValueChanged(D)V

    goto :goto_1
.end method
