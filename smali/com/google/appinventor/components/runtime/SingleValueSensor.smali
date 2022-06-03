.class public abstract Lcom/google/appinventor/components/runtime/SingleValueSensor;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/SensorComponent;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Landroid/hardware/Sensor;

.field protected enabled:Z

.field protected refreshTime:I

.field protected final sensorManager:Landroid/hardware/SensorManager;

.field protected sensorType:I

.field protected value:F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;I)V
    .locals 7

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 40
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensorType:I

    .line 41
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/SingleValueSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 42
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/SingleValueSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 44
    move-object v3, v0

    const/16 v4, 0x3e8

    iput v4, v3, Lcom/google/appinventor/components/runtime/SingleValueSensor;->refreshTime:I

    .line 45
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    .line 46
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "sensor"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensorManager:Landroid/hardware/SensorManager;

    .line 47
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensorManager:Landroid/hardware/SensorManager;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/SingleValueSensor;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Landroid/hardware/Sensor;

    .line 48
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->startListening()V

    .line 49
    return-void
.end method


# virtual methods
.method public Available()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies whether or not the device has an ambient air pressure sensor."
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->isAvailable()Z

    move-result v1

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
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->setEnabled(Z)V

    .line 105
    return-void
.end method

.method public Enabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If enabled, then device will listen for changes."
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    move v0, v1

    return v0
.end method

.method public RefreshTime()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The requested minimum time in milliseconds between changes in air pressure being reported. Android is not guaranteed to honor the request. Setting this property has no effect on pre-Gingerbread devices."
    .end annotation

    .prologue
    .line 117
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/SingleValueSensor;->refreshTime:I

    move v0, v1

    return v0
.end method

.method public RefreshTime(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1000"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 130
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/SingleValueSensor;->refreshTime:I

    .line 131
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    if-eqz v2, :cond_0

    .line 132
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->stopListening()V

    .line 133
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->startListening()V

    .line 135
    :cond_0
    return-void
.end method

.method protected getValue()F
    .locals 2

    .prologue
    .line 189
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/SingleValueSensor;->value:F

    move v0, v1

    return v0
.end method

.method protected isAvailable()Z
    .locals 3

    .prologue
    .line 149
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensorManager:Landroid/hardware/SensorManager;

    move-object v2, v0

    iget v2, v2, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensorType:I

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

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

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method public onDelete()V
    .locals 2

    .prologue
    .line 183
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    if-eqz v1, :cond_0

    .line 184
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->stopListening()V

    .line 186
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 169
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    if-eqz v1, :cond_0

    .line 170
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->stopListening()V

    .line 172
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 176
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    if-eqz v1, :cond_0

    .line 177
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->startListening()V

    .line 179
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    .prologue
    .line 139
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensorType:I

    if-ne v2, v3, :cond_0

    .line 140
    move-object v2, v1

    iget-object v2, v2, Landroid/hardware/SensorEvent;->values:[F

    move-object v1, v2

    .line 141
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    aget v3, v3, v4

    iput v3, v2, Lcom/google/appinventor/components/runtime/SingleValueSensor;->value:F

    .line 142
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/google/appinventor/components/runtime/SingleValueSensor;->value:F

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->onValueChanged(F)V

    .line 144
    :cond_0
    return-void
.end method

.method protected abstract onValueChanged(F)V
.end method

.method protected setEnabled(Z)V
    .locals 4

    .prologue
    .line 153
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    move v3, v1

    if-ne v2, v3, :cond_0

    .line 154
    .line 162
    :goto_0
    return-void

    .line 156
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    .line 157
    move v2, v1

    if-eqz v2, :cond_1

    .line 158
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->startListening()V

    goto :goto_0

    .line 160
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->stopListening()V

    .line 162
    goto :goto_0
.end method

.method protected startListening()V
    .locals 7

    .prologue
    .line 56
    move-object v0, p0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_0

    .line 58
    move-object v2, v0

    iget v2, v2, Lcom/google/appinventor/components/runtime/SingleValueSensor;->refreshTime:I

    const/16 v3, 0x3e8

    mul-int/lit16 v2, v2, 0x3e8

    move v1, v2

    .line 59
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensorManager:Landroid/hardware/SensorManager;

    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/SingleValueSensor;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Landroid/hardware/Sensor;

    move v5, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v2

    .line 60
    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensorManager:Landroid/hardware/SensorManager;

    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/SingleValueSensor;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Landroid/hardware/Sensor;

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v2

    .line 63
    goto :goto_0
.end method

.method protected stopListening()V
    .locals 3

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensorManager:Landroid/hardware/SensorManager;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 67
    return-void
.end method
