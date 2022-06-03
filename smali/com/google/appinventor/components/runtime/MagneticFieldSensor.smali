.class public Lcom/google/appinventor/components/runtime/MagneticFieldSensor;
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
    description = "<p>Non-visible component that measures the ambient geomagnetic field for all three physical axes (x, y, z) in Tesla https://en.wikipedia.org/wiki/Tesla_(unit). </p>"
    iconName = "images/magneticSensor.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:D

.field private bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:F

.field private enabled:Z

.field private f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:F

.field private oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:Z

.field private final sensorManager:Landroid/hardware/SensorManager;

.field private vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/hardware/Sensor;

.field private zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 27
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->enabled:Z

    .line 37
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 38
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 39
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 40
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "sensor"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->sensorManager:Landroid/hardware/SensorManager;

    .line 41
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/hardware/Sensor;

    .line 42
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->startListening()V

    .line 43
    return-void
.end method

.method private startListening()V
    .locals 6

    .prologue
    .line 126
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    .line 127
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->sensorManager:Landroid/hardware/SensorManager;

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    .line 128
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:Z

    .line 130
    :cond_0
    return-void
.end method

.method private stopListening()V
    .locals 3

    .prologue
    .line 133
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_0

    .line 134
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->sensorManager:Landroid/hardware/SensorManager;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 135
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:Z

    .line 136
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:F

    .line 137
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:F

    .line 138
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:F

    .line 140
    :cond_0
    return-void
.end method


# virtual methods
.method public AbsoluteStrength()D
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 80
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:D

    move-wide v0, v1

    return-wide v0
.end method

.method public Available()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x2

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

.method public Enabled(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->enabled:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 64
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->enabled:Z

    .line 66
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->enabled:Z

    if-eqz v2, :cond_1

    .line 67
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->startListening()V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_1
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->stopListening()V

    .line 71
    goto :goto_0
.end method

.method public Enabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->enabled:Z

    move v0, v1

    return v0
.end method

.method public MagneticChanged(FFFD)V
    .locals 14
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the magnetic sensor data has changed. "
    .end annotation

    .prologue
    .line 75
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-object v6, v0

    const-string/jumbo v7, "MagneticChanged"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x0

    move v11, v1

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x1

    move v11, v2

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x2

    move v11, v3

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x3

    move-wide v11, v4

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v6, v7, v8}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v6

    .line 76
    return-void
.end method

.method public MaximumRange()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public Xstrength()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:F

    move v0, v1

    return v0
.end method

.method public Ystrength()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:F

    move v0, v1

    return v0
.end method

.method public Zstrength()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 95
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:F

    move v0, v1

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public onDelete()V
    .locals 2

    .prologue
    .line 116
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->enabled:Z

    if-eqz v1, :cond_0

    .line 117
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->stopListening()V

    .line 119
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 122
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->stopListening()V

    .line 123
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 104
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->enabled:Z

    if-eqz v1, :cond_0

    .line 105
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->startListening()V

    .line 107
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10

    .prologue
    .line 143
    move-object v1, p0

    move-object v2, p1

    move-object v3, v1

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->enabled:Z

    if-eqz v3, :cond_0

    move-object v3, v2

    iget-object v3, v3, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 144
    move-object v3, v2

    iget-object v3, v3, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v3}, [F->clone()Ljava/lang/Object;

    move-result-object v3

    .line 145
    move-object v3, v1

    move-object v4, v2

    iget-object v4, v4, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    iput v4, v3, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:F

    .line 146
    move-object v3, v1

    move-object v4, v2

    iget-object v4, v4, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    iput v4, v3, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:F

    .line 147
    move-object v3, v1

    move-object v4, v2

    iget-object v4, v4, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    iput v4, v3, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:F

    .line 148
    move-object v3, v1

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:F

    move-object v5, v1

    iget v5, v5, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:F

    mul-float/2addr v4, v5

    move-object v5, v1

    iget v5, v5, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:F

    move-object v6, v1

    iget v6, v6, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object v5, v1

    iget v5, v5, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:F

    move-object v6, v1

    iget v6, v6, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:D

    .line 149
    move-object v3, v1

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:F

    move-object v5, v1

    iget v5, v5, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:F

    move-object v6, v1

    iget v6, v6, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:F

    move-object v7, v1

    iget-wide v7, v7, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:D

    invoke-virtual/range {v3 .. v8}, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->MagneticChanged(FFFD)V

    .line 151
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 110
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->enabled:Z

    if-eqz v1, :cond_0

    .line 111
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->stopListening()V

    .line 113
    :cond_0
    return-void
.end method
