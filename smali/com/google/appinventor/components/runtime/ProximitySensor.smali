.class public Lcom/google/appinventor/components/runtime/ProximitySensor;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;
.implements Lcom/google/appinventor/components/runtime/SensorComponent;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>Non-visible component that can measures the proximity of an object in cm relative to the view screen of a device. This sensor is typically used to determine whether a handset is being held up to a persons ear; i.e. lets you determine how far away an object is from a device. Many devices return the absolute distance, in cm, but some return only near and far values. In this case, the sensor usually reports its maximum range value in the far state and a lesser value in the near state.</p>"
    iconName = "images/proximitysensor.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private I5ykmeJTgzyaiiAtvMLW8fRCQIZ9OEp56mK3swW1OQk12Icvz43SQQl0b809z20Q:F

.field private enabled:Z

.field private pixa37in9tdgjNQb2jpfjxTaBGtatW1GnEvNM302mGQljyvLBwDosTGoRPcRGYok:Z

.field private qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Landroid/hardware/Sensor;

.field private final sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 42
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/ProximitySensor;->I5ykmeJTgzyaiiAtvMLW8fRCQIZ9OEp56mK3swW1OQk12Icvz43SQQl0b809z20Q:F

    .line 54
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ProximitySensor;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 55
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ProximitySensor;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 56
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ProximitySensor;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 58
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    .line 59
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "sensor"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ProximitySensor;->sensorManager:Landroid/hardware/SensorManager;

    .line 60
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ProximitySensor;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ProximitySensor;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Landroid/hardware/Sensor;

    .line 61
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/ProximitySensor;->startListening()V

    .line 62
    return-void
.end method

.method private startListening()V
    .locals 6

    .prologue
    .line 109
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ProximitySensor;->sensorManager:Landroid/hardware/SensorManager;

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ProximitySensor;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    .line 110
    return-void
.end method

.method private stopListening()V
    .locals 3

    .prologue
    .line 116
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ProximitySensor;->sensorManager:Landroid/hardware/SensorManager;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 117
    return-void
.end method


# virtual methods
.method public Available()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Reports whether or not the device has a proximity sensor"
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ProximitySensor;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 73
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public Distance()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the distance from the object to the device"
    .end annotation

    .prologue
    .line 214
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/ProximitySensor;->I5ykmeJTgzyaiiAtvMLW8fRCQIZ9OEp56mK3swW1OQk12Icvz43SQQl0b809z20Q:F

    move v0, v1

    return v0
.end method

.method public Enabled(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If enabled, then device will listen for changes in proximity"
    .end annotation

    .prologue
    .line 168
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    move v3, v1

    if-ne v2, v3, :cond_0

    .line 169
    .line 178
    :goto_0
    return-void

    .line 172
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    .line 173
    move v2, v1

    if-eqz v2, :cond_1

    .line 174
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/ProximitySensor;->startListening()V

    goto :goto_0

    .line 176
    :cond_1
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/ProximitySensor;->stopListening()V

    .line 178
    goto :goto_0
.end method

.method public Enabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 155
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    move v0, v1

    return v0
.end method

.method public KeepRunningWhenOnPause(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to true, it will keep sensing for proximity changes even when the app is not visible"
    .end annotation

    .prologue
    .line 197
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/ProximitySensor;->pixa37in9tdgjNQb2jpfjxTaBGtatW1GnEvNM302mGQljyvLBwDosTGoRPcRGYok:Z

    .line 198
    return-void
.end method

.method public KeepRunningWhenOnPause()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 185
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/ProximitySensor;->pixa37in9tdgjNQb2jpfjxTaBGtatW1GnEvNM302mGQljyvLBwDosTGoRPcRGYok:Z

    move v0, v1

    return v0
.end method

.method public MaximumRange()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Reports the Maximum Range of the device\'s ProximitySensor"
    .end annotation

    .prologue
    .line 143
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ProximitySensor;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public ProximityChanged(F)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when distance (in cm) of the object to the device changes. "
    .end annotation

    .prologue
    .line 202
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/ProximitySensor;->I5ykmeJTgzyaiiAtvMLW8fRCQIZ9OEp56mK3swW1OQk12Icvz43SQQl0b809z20Q:F

    .line 203
    move-object v2, v0

    const-string/jumbo v3, "ProximityChanged"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Lcom/google/appinventor/components/runtime/ProximitySensor;->I5ykmeJTgzyaiiAtvMLW8fRCQIZ9OEp56mK3swW1OQk12Icvz43SQQl0b809z20Q:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 204
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method public onDelete()V
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    if-eqz v1, :cond_0

    .line 93
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/ProximitySensor;->stopListening()V

    .line 95
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/ProximitySensor;->pixa37in9tdgjNQb2jpfjxTaBGtatW1GnEvNM302mGQljyvLBwDosTGoRPcRGYok:Z

    if-nez v1, :cond_0

    .line 100
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/ProximitySensor;->stopListening()V

    .line 102
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    if-eqz v1, :cond_0

    .line 79
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/ProximitySensor;->startListening()V

    .line 81
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    .prologue
    .line 126
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    if-eqz v2, :cond_0

    .line 127
    move-object v2, v1

    iget-object v2, v2, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v2}, [F->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    move-object v1, v2

    .line 128
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    aget v3, v3, v4

    iput v3, v2, Lcom/google/appinventor/components/runtime/ProximitySensor;->I5ykmeJTgzyaiiAtvMLW8fRCQIZ9OEp56mK3swW1OQk12Icvz43SQQl0b809z20Q:F

    .line 129
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/google/appinventor/components/runtime/ProximitySensor;->I5ykmeJTgzyaiiAtvMLW8fRCQIZ9OEp56mK3swW1OQk12Icvz43SQQl0b809z20Q:F

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/ProximitySensor;->ProximityChanged(F)V

    .line 131
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    if-eqz v1, :cond_0

    .line 86
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/ProximitySensor;->stopListening()V

    .line 88
    :cond_0
    return-void
.end method
