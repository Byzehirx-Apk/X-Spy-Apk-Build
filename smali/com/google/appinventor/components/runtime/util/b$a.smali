.class final Lcom/google/appinventor/components/runtime/util/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;
.implements Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private enabled:Z

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/Location;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

.field private vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/LocationSensor;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 134
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 139
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/util/b$a;->enabled:Z

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 3

    .prologue
    .line 134
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 3

    .prologue
    .line 208
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/util/b$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    .line 209
    return-void
.end method

.method public final getLastKnownLocation()Landroid/location/Location;
    .locals 2

    .prologue
    .line 203
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/b$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/Location;

    move-object v0, v1

    return-object v0
.end method

.method public final onDistanceIntervalChanged(I)V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 5

    .prologue
    .line 165
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/b$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/Location;

    .line 166
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/b$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    if-eqz v2, :cond_0

    .line 167
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/b$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    move-object v3, v1

    move-object v4, v0

    invoke-interface {v2, v3, v4}, Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;->onLocationChanged(Landroid/location/Location;Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;)V

    .line 169
    :cond_0
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public final onTimeIntervalChanged(I)V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public final setSource(Lcom/google/appinventor/components/runtime/LocationSensor;)V
    .locals 4

    .prologue
    .line 143
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/b$a;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/LocationSensor;

    move-object v3, v1

    if-ne v2, v3, :cond_0

    .line 144
    .line 153
    :goto_0
    return-void

    .line 146
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/b$a;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/LocationSensor;

    if-eqz v2, :cond_1

    .line 147
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/b$a;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/LocationSensor;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/LocationSensor;->Enabled(Z)V

    .line 149
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/b$a;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/LocationSensor;

    .line 150
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/b$a;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/LocationSensor;

    if-eqz v2, :cond_2

    .line 151
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/b$a;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/LocationSensor;

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/util/b$a;->enabled:Z

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/LocationSensor;->Enabled(Z)V

    .line 153
    :cond_2
    goto :goto_0
.end method

.method public final startLocationProvider(Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;)Z
    .locals 4

    .prologue
    .line 185
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/b$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    .line 186
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/b$a;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/LocationSensor;

    if-eqz v2, :cond_0

    .line 187
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/b$a;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/LocationSensor;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/LocationSensor;->Enabled(Z)V

    .line 188
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/util/b$a;->enabled:Z

    .line 190
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/util/b$a;->enabled:Z

    move v0, v2

    return v0
.end method

.method public final stopLocationProvider()V
    .locals 3

    .prologue
    .line 195
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/b$a;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/LocationSensor;

    if-eqz v1, :cond_0

    .line 196
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/b$a;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/LocationSensor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/LocationSensor;->Enabled(Z)V

    .line 198
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/util/b$a;->enabled:Z

    .line 199
    return-void
.end method
