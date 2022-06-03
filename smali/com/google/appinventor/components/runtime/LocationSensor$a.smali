.class final Lcom/google/appinventor/components/runtime/LocationSensor$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/LocationSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/LocationSensor;)V
    .locals 4

    .prologue
    .line 83
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/LocationSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/LocationSensor;B)V
    .locals 5

    .prologue
    .line 83
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/LocationSensor$a;-><init>(Lcom/google/appinventor/components/runtime/LocationSensor;)V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 23

    .prologue
    .line 89
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v10, v1

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/LocationSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor;

    move-object v11, v2

    invoke-static {v10, v11}, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;Landroid/location/Location;)Landroid/location/Location;

    move-result-object v10

    .line 90
    move-object v10, v1

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/LocationSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor;

    move-object v11, v2

    invoke-virtual {v11}, Landroid/location/Location;->getLongitude()D

    move-result-wide v11

    invoke-static {v10, v11, v12}, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;D)D

    move-result-wide v10

    .line 91
    move-object v10, v1

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/LocationSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor;

    move-object v11, v2

    invoke-virtual {v11}, Landroid/location/Location;->getLatitude()D

    move-result-wide v11

    invoke-static {v10, v11, v12}, Lcom/google/appinventor/components/runtime/LocationSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/LocationSensor;D)D

    move-result-wide v10

    .line 92
    move-object v10, v1

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/LocationSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor;

    move-object v11, v2

    invoke-virtual {v11}, Landroid/location/Location;->getSpeed()F

    move-result v11

    invoke-static {v10, v11}, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;F)F

    move-result v10

    .line 95
    move-object v10, v2

    invoke-virtual {v10}, Landroid/location/Location;->hasAltitude()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 96
    move-object v10, v1

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/LocationSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;)Z

    move-result v10

    .line 97
    move-object v10, v1

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/LocationSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor;

    move-object v11, v2

    invoke-virtual {v11}, Landroid/location/Location;->getAltitude()D

    move-result-wide v11

    invoke-static {v10, v11, v12}, Lcom/google/appinventor/components/runtime/LocationSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/LocationSensor;D)D

    move-result-wide v10

    .line 102
    :cond_0
    move-object v10, v1

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/LocationSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;)D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_1

    move-object v10, v1

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/LocationSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/LocationSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/LocationSensor;)D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_2

    .line 103
    :cond_1
    move-object v10, v1

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/LocationSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/LocationSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/LocationSensor;)Z

    move-result v10

    .line 104
    move-object v10, v1

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/LocationSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/LocationSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/LocationSensor;)D

    move-result-wide v10

    move-wide v3, v10

    .line 105
    move-object v10, v1

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/LocationSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;)D

    move-result-wide v10

    move-wide v5, v10

    .line 106
    move-object v10, v1

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/LocationSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/LocationSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/LocationSensor;)D

    move-result-wide v10

    move-wide v7, v10

    .line 107
    move-object v10, v1

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/LocationSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;)F

    move-result v10

    move v9, v10

    .line 108
    move-object v10, v1

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/LocationSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;)Landroid/os/Handler;

    move-result-object v10

    new-instance v11, Lcom/google/appinventor/components/runtime/LocationSensor$a$1;

    move-object/from16 v22, v11

    move-object/from16 v11, v22

    move-object/from16 v12, v22

    move-object v13, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    move/from16 v20, v9

    move-object/from16 v21, v2

    invoke-direct/range {v12 .. v21}, Lcom/google/appinventor/components/runtime/LocationSensor$a$1;-><init>(Lcom/google/appinventor/components/runtime/LocationSensor$a;DDDFLandroid/location/Location;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v10

    .line 118
    :cond_2
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 122
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LocationSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor;

    move-object v3, v1

    const-string/jumbo v4, "Disabled"

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/LocationSensor;->StatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LocationSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;)V

    .line 124
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LocationSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/LocationSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/LocationSensor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LocationSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor;

    const-string/jumbo v3, "onProviderDisabled"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V

    .line 127
    :cond_0
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 131
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LocationSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor;

    move-object v3, v1

    const-string/jumbo v4, "Enabled"

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/LocationSensor;->StatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LocationSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor;

    const-string/jumbo v3, "onProviderEnabled"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 137
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v2

    packed-switch v4, :pswitch_data_0

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 140
    :pswitch_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/LocationSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor;

    move-object v5, v1

    const-string/jumbo v6, "TEMPORARILY_UNAVAILABLE"

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/LocationSensor;->StatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    goto :goto_0

    .line 145
    :pswitch_1
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/LocationSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor;

    move-object v5, v1

    const-string/jumbo v6, "OUT_OF_SERVICE"

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/LocationSensor;->StatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/LocationSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 148
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/LocationSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;)V

    .line 149
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/LocationSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor;

    const-string/jumbo v5, "onStatusChanged"

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :pswitch_2
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/LocationSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor;

    move-object v5, v1

    const-string/jumbo v6, "AVAILABLE"

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/LocationSensor;->StatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/LocationSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/LocationSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor;

    .line 157
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;)Ljava/util/List;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 158
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/LocationSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor;

    const-string/jumbo v5, "onStatusChanged"

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
