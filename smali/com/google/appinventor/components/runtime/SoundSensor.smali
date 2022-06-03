.class public Lcom/google/appinventor/components/runtime/SoundSensor;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/AlarmHandler;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Physical world component that can detect such data as: sound amplitude (measurement of the degree of change [positive or negative] )."
    iconName = "images/soundSensor.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.RECORD_AUDIO"
    }
.end annotation


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/media/MediaRecorder;

.field private LOG_TAG:Ljava/lang/String;

.field private enabled:Z

.field private f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:D

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/TimerInternal;

.field private zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:D


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 10

    .prologue
    .line 29
    move-object v1, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 21
    move-object v3, v1

    const-string/jumbo v4, "SoundSensor"

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/SoundSensor;->LOG_TAG:Ljava/lang/String;

    .line 22
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/SoundSensor;->enabled:Z

    .line 23
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/SoundSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/media/MediaRecorder;

    .line 24
    move-object v3, v1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/SoundSensor;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:D

    .line 25
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/SoundSensor;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:D

    .line 26
    move-object v3, v1

    new-instance v4, Lcom/google/appinventor/components/runtime/util/TimerInternal;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    const/4 v7, 0x0

    const/16 v8, 0x64

    invoke-direct {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/util/TimerInternal;-><init>(Lcom/google/appinventor/components/runtime/AlarmHandler;ZI)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/SoundSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    .line 30
    return-void
.end method


# virtual methods
.method public Amplitude()D
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the real sound amplitude which can be between 0 to 32768."
    .end annotation

    .prologue
    .line 111
    move-object v1, p0

    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SoundSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_0

    .line 112
    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SoundSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v2

    int-to-double v2, v2

    move-wide v1, v2

    .line 114
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v2, 0x0

    move-wide v1, v2

    goto :goto_0
.end method

.method public Decibel()D
    .locals 6

    .prologue
    .line 118
    move-object v1, p0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/SoundSensor;->Amplitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    move-wide v1, v2

    return-wide v1
.end method

.method public Listen(Z)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Starts or Stops listening to sound changes"
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/SoundSensor;->enabled:Z

    .line 54
    move v2, v1

    if-eqz v2, :cond_1

    .line 55
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SoundSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/media/MediaRecorder;

    if-nez v2, :cond_0

    .line 57
    move-object v2, v0

    :try_start_0
    new-instance v3, Landroid/media/MediaRecorder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/SoundSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/media/MediaRecorder;

    .line 58
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SoundSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/media/MediaRecorder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 59
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SoundSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/media/MediaRecorder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 60
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SoundSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/media/MediaRecorder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 61
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SoundSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/media/MediaRecorder;

    const-string/jumbo v3, "/dev/null"

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 68
    :cond_0
    move-object v2, v0

    :try_start_1
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SoundSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->prepare()V

    .line 69
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SoundSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V

    .line 70
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SoundSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    .line 78
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 63
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SoundSensor;->LOG_TAG:Ljava/lang/String;

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 64
    goto :goto_0

    .line 72
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 73
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SoundSensor;->LOG_TAG:Ljava/lang/String;

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 74
    goto :goto_0

    .line 77
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/SoundSensor;->stopListening()V

    .line 78
    goto :goto_0
.end method

.method public Listen()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns true if listening to sound changes, else false."
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/SoundSensor;->enabled:Z

    move v0, v1

    return v0
.end method

.method public MaxSoundlevel()D
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the max sound level."
    .end annotation

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/google/appinventor/components/runtime/SoundSensor;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:D

    move-wide v0, v1

    return-wide v0
.end method

.method public MaxSoundlevel(I)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "100"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 41
    move-object v1, p0

    move v2, p1

    move-object v3, v1

    move v4, v2

    int-to-double v4, v4

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/SoundSensor;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:D

    .line 42
    return-void
.end method

.method public SoundChanged(D)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when the sound level has changed"
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    const-string/jumbo v4, "SoundChanged"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x0

    move-wide v8, v1

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v3

    .line 47
    return-void
.end method

.method public SoundLevel()D
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the sound level."
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/google/appinventor/components/runtime/SoundSensor;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:D

    move-wide v0, v1

    return-wide v0
.end method

.method public alarm()V
    .locals 9

    .prologue
    .line 102
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/SoundSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    .line 103
    move-object v1, v0

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/SoundSensor;->Amplitude()D

    move-result-wide v2

    move-object v4, v0

    iget-wide v4, v4, Lcom/google/appinventor/components/runtime/SoundSensor;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:D

    const-wide/high16 v6, 0x40e0000000000000L    # 32768.0

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    iput-wide v2, v1, Lcom/google/appinventor/components/runtime/SoundSensor;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:D

    .line 104
    move-object v1, v0

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    iget-wide v2, v2, Lcom/google/appinventor/components/runtime/SoundSensor;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:D

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/SoundSensor;->SoundChanged(D)V

    .line 106
    :cond_0
    return-void
.end method

.method public onDelete()V
    .locals 2

    .prologue
    .line 135
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/SoundSensor;->enabled:Z

    if-eqz v1, :cond_0

    .line 136
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/SoundSensor;->stopListening()V

    .line 138
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 123
    move-object v0, p0

    move-object v1, v0

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/SoundSensor;->enabled:Z

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/SoundSensor;->Listen(Z)V

    .line 124
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 128
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/SoundSensor;->enabled:Z

    if-eqz v1, :cond_0

    .line 129
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/SoundSensor;->stopListening()V

    .line 131
    :cond_0
    return-void
.end method

.method public stopListening()V
    .locals 3

    .prologue
    .line 87
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/SoundSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    .line 88
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/SoundSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled(Z)V

    .line 89
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/SoundSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    .line 90
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/SoundSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 91
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/SoundSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/media/MediaRecorder;

    .line 93
    :cond_0
    return-void
.end method
