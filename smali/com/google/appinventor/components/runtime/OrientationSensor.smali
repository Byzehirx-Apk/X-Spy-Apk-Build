.class public Lcom/google/appinventor/components/runtime/OrientationSensor;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>Non-visible component providing information about the device\'s physical orientation in three dimensions: <ul> <li> <strong>Roll</strong>: 0 degrees when the device is level, increases to      90 degrees as the device is tilted up on its left side, and      decreases to -90 degrees when the device is tilted up on its right side.      </li> <li> <strong>Pitch</strong>: 0 degrees when the device is level, up to      90 degrees as the device is tilted so its top is pointing down,      up to 180 degrees as it gets turned over.  Similarly, as the device      is tilted so its bottom points down, pitch decreases to -90      degrees, then further decreases to -180 degrees as it gets turned all the way      over.</li> <li> <strong>Azimuth</strong>: 0 degrees when the top of the device is      pointing north, 90 degrees when it is pointing east, 180 degrees      when it is pointing south, 270 degrees when it is pointing west,      etc.</li></ul>     These measurements assume that the device itself is not moving.</p>"
    iconName = "images/orientationsensor.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private final B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[F

.field private DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:F

.field private IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:F

.field private ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:F

.field private final accelerometerSensor:Landroid/hardware/Sensor;

.field private accuracy:I

.field private bjRTr59rlfMAk3NoImwosXnapn2cygGkKCeZagS1kgI5blNKx2IlW2vUboyQWmzb:Z

.field private enabled:Z

.field private final hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/hardware/Sensor;

.field private final hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:[F

.field private l1RC65VA1OrEFGFIoMpcm9UdXKH0b4XYT6Sp5a4IfmUrLMcXzEdiTdgfLz7JJ5B0:Z

.field private oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:Z

.field private final sensorManager:Landroid/hardware/SensorManager;

.field private final vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:[F

.field private final vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:[F

.field private final wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:[F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 78
    move-object v2, v0

    const/4 v3, 0x3

    new-array v3, v3, [F

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/OrientationSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[F

    .line 79
    move-object v2, v0

    const/4 v3, 0x3

    new-array v3, v3, [F

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/OrientationSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:[F

    .line 88
    move-object v2, v0

    const/16 v3, 0x9

    new-array v3, v3, [F

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/OrientationSensor;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:[F

    .line 89
    move-object v2, v0

    const/16 v3, 0x9

    new-array v3, v3, [F

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/OrientationSensor;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:[F

    .line 90
    move-object v2, v0

    const/4 v3, 0x3

    new-array v3, v3, [F

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/OrientationSensor;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:[F

    .line 101
    move-object v2, v0

    move-object v3, v1

    .line 102
    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "sensor"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    .line 103
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/OrientationSensor;->accelerometerSensor:Landroid/hardware/Sensor;

    .line 104
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/OrientationSensor;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/hardware/Sensor;

    .line 107
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/OrientationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 108
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/OrientationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 111
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/OrientationSensor;->Enabled(Z)V

    .line 112
    return-void
.end method

.method private startListening()V
    .locals 6

    .prologue
    .line 115
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/OrientationSensor;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/OrientationSensor;->accelerometerSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/OrientationSensor;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    .line 116
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/OrientationSensor;->accelerometerSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    .line 118
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/OrientationSensor;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    .line 120
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/OrientationSensor;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:Z

    .line 122
    :cond_0
    return-void
.end method

.method private stopListening()V
    .locals 3

    .prologue
    .line 125
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/OrientationSensor;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_0

    .line 126
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 127
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/OrientationSensor;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:Z

    .line 130
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/OrientationSensor;->l1RC65VA1OrEFGFIoMpcm9UdXKH0b4XYT6Sp5a4IfmUrLMcXzEdiTdgfLz7JJ5B0:Z

    .line 131
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/OrientationSensor;->bjRTr59rlfMAk3NoImwosXnapn2cygGkKCeZagS1kgI5blNKx2IlW2vUboyQWmzb:Z

    .line 133
    :cond_0
    return-void
.end method


# virtual methods
.method public Angle()F
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 245
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lcom/google/appinventor/components/runtime/OrientationSensor;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:F

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/OrientationSensor;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:F

    move v1, v3

    .line 1265
    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    move v4, v1

    float-to-double v4, v4

    .line 1267
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    neg-double v4, v4

    .line 1265
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 245
    move v0, v2

    return v0
.end method

.method public Available()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 162
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x2

    .line 163
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

    .line 162
    move v0, v1

    goto :goto_0
.end method

.method public Azimuth()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 230
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/OrientationSensor;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:F

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
    .line 187
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/OrientationSensor;->enabled:Z

    move v3, v1

    if-eq v2, v3, :cond_1

    .line 188
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/OrientationSensor;->enabled:Z

    .line 189
    move v2, v1

    if-eqz v2, :cond_0

    .line 190
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/OrientationSensor;->startListening()V

    .line 195
    :goto_0
    return-void

    .line 192
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/OrientationSensor;->stopListening()V

    .line 195
    :cond_1
    goto :goto_0
.end method

.method public Enabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 174
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/OrientationSensor;->enabled:Z

    move v0, v1

    return v0
.end method

.method public Magnitude()F
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 290
    move-object v1, p0

    const/high16 v6, 0x42b40000    # 90.0f

    move-object v7, v1

    iget v7, v7, Lcom/google/appinventor/components/runtime/OrientationSensor;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    move-wide v2, v6

    .line 291
    const/high16 v6, 0x42b40000    # 90.0f

    move-object v7, v1

    iget v7, v7, Lcom/google/appinventor/components/runtime/OrientationSensor;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    move-wide v4, v6

    .line 292
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-wide v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    move-wide v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-float v6, v6

    move v1, v6

    return v1
.end method

.method public OrientationChanged(FFF)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 149
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    const-string/jumbo v5, "OrientationChanged"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v1

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move v9, v2

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x2

    move v9, v3

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v4

    .line 150
    return-void
.end method

.method public Pitch()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 206
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/OrientationSensor;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:F

    move v0, v1

    return v0
.end method

.method public Roll()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 218
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/OrientationSensor;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:F

    move v0, v1

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 402
    return-void
.end method

.method public onDelete()V
    .locals 2

    .prologue
    .line 408
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/OrientationSensor;->stopListening()V

    .line 409
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 414
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/OrientationSensor;->stopListening()V

    .line 415
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 420
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/OrientationSensor;->enabled:Z

    if-eqz v1, :cond_0

    .line 421
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/OrientationSensor;->startListening()V

    .line 423
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    .prologue
    .line 327
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/OrientationSensor;->enabled:Z

    if-eqz v3, :cond_0

    .line 328
    move-object v3, v1

    iget-object v3, v3, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    move v8, v3

    move v3, v8

    move v4, v8

    .line 331
    move v2, v4

    packed-switch v3, :pswitch_data_0

    .line 347
    const-string/jumbo v3, "OrientationSensor"

    const-string/jumbo v4, "Unexpected sensor type: "

    move v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 348
    .line 397
    :goto_0
    return-void

    .line 334
    :pswitch_0
    move-object v3, v1

    iget-object v3, v3, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/OrientationSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[F

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 335
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/OrientationSensor;->l1RC65VA1OrEFGFIoMpcm9UdXKH0b4XYT6Sp5a4IfmUrLMcXzEdiTdgfLz7JJ5B0:Z

    .line 337
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroid/hardware/SensorEvent;->accuracy:I

    iput v4, v3, Lcom/google/appinventor/components/runtime/OrientationSensor;->accuracy:I

    .line 338
    .line 352
    :goto_1
    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/OrientationSensor;->l1RC65VA1OrEFGFIoMpcm9UdXKH0b4XYT6Sp5a4IfmUrLMcXzEdiTdgfLz7JJ5B0:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/OrientationSensor;->bjRTr59rlfMAk3NoImwosXnapn2cygGkKCeZagS1kgI5blNKx2IlW2vUboyQWmzb:Z

    if-eqz v3, :cond_0

    .line 353
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/OrientationSensor;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:[F

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/OrientationSensor;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:[F

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/OrientationSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[F

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/OrientationSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:[F

    invoke-static {v3, v4, v5, v6}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result v3

    .line 357
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/OrientationSensor;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:[F

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/OrientationSensor;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:[F

    invoke-static {v3, v4}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    move-result-object v3

    .line 360
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/OrientationSensor;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-double v4, v4

    .line 361
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 360
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/OrientationSensorUtil;->normalizeAzimuth(F)F

    move-result v4

    iput v4, v3, Lcom/google/appinventor/components/runtime/OrientationSensor;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:F

    .line 362
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/OrientationSensor;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-double v4, v4

    .line 363
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 362
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/OrientationSensorUtil;->normalizePitch(F)F

    move-result v4

    iput v4, v3, Lcom/google/appinventor/components/runtime/OrientationSensor;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:F

    .line 366
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/OrientationSensor;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    float-to-double v4, v4

    .line 367
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    neg-double v4, v4

    double-to-float v4, v4

    .line 366
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/OrientationSensorUtil;->normalizeRoll(F)F

    move-result v4

    iput v4, v3, Lcom/google/appinventor/components/runtime/OrientationSensor;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:F

    .line 370
    move-object v3, v0

    .line 1307
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/OrientationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v4, "window"

    .line 1308
    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 1309
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object v1, v3

    .line 1310
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_1

    .line 1311
    move-object v3, v1

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/FroyoUtil;->getRotation(Landroid/view/Display;)I

    move-result v3

    .line 370
    :goto_2
    move v8, v3

    move v3, v8

    move v4, v8

    .line 371
    move v1, v4

    packed-switch v3, :pswitch_data_1

    .line 388
    const-string/jumbo v3, "OrientationSensor"

    const-string/jumbo v4, "Illegal value for getScreenRotation(): "

    move v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 394
    :goto_3
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lcom/google/appinventor/components/runtime/OrientationSensor;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:F

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/OrientationSensor;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:F

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/OrientationSensor;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:F

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/OrientationSensor;->OrientationChanged(FFF)V

    .line 397
    :cond_0
    goto/16 :goto_0

    .line 342
    :pswitch_1
    move-object v3, v1

    iget-object v3, v3, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/OrientationSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:[F

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 343
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/OrientationSensor;->bjRTr59rlfMAk3NoImwosXnapn2cygGkKCeZagS1kgI5blNKx2IlW2vUboyQWmzb:Z

    .line 344
    goto/16 :goto_1

    .line 1313
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/Display;->getOrientation()I

    move-result v3

    goto :goto_2

    .line 373
    :pswitch_2
    goto :goto_3

    .line 375
    :pswitch_3
    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/OrientationSensor;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:F

    neg-float v3, v3

    move v1, v3

    .line 376
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lcom/google/appinventor/components/runtime/OrientationSensor;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:F

    neg-float v4, v4

    iput v4, v3, Lcom/google/appinventor/components/runtime/OrientationSensor;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:F

    .line 377
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/google/appinventor/components/runtime/OrientationSensor;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:F

    .line 378
    goto :goto_3

    .line 380
    :pswitch_4
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lcom/google/appinventor/components/runtime/OrientationSensor;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:F

    neg-float v4, v4

    iput v4, v3, Lcom/google/appinventor/components/runtime/OrientationSensor;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:F

    .line 381
    goto :goto_3

    .line 383
    :pswitch_5
    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/OrientationSensor;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:F

    move v1, v3

    .line 384
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lcom/google/appinventor/components/runtime/OrientationSensor;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:F

    iput v4, v3, Lcom/google/appinventor/components/runtime/OrientationSensor;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:F

    .line 385
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/google/appinventor/components/runtime/OrientationSensor;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:F

    .line 386
    goto :goto_3

    .line 331
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 371
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
