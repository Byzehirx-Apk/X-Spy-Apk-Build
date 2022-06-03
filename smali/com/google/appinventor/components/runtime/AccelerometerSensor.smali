.class public Lcom/google/appinventor/components/runtime/AccelerometerSensor;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/SensorComponent;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component that can detect shaking and measure acceleration approximately in three dimensions using SI units (m/s<sup>2</sup>).  The components are: <ul>\n<li> <strong>xAccel</strong>: 0 when the phone is at rest on a flat      surface, positive when the phone is tilted to the right (i.e.,      its left side is raised), and negative when the phone is tilted      to the left (i.e., its right size is raised).</li>\n <li> <strong>yAccel</strong>: 0 when the phone is at rest on a flat      surface, positive when its bottom is raised, and negative when      its top is raised. </li>\n <li> <strong>zAccel</strong>: Equal to -9.8 (earth\'s gravity in meters per      second per second when the device is at rest parallel to the ground      with the display facing up,      0 when perpendicular to the ground, and +9.8 when facing down.       The value can also be affected by accelerating it with or against      gravity. </li></ul>"
    helpUrl = "https://docs.kodular.io/components/sensors/accelerometer/"
    iconName = "images/accelerometersensor.png"
    nonVisible = true
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "AccelerometerSensor"

.field private static final SENSOR_CACHE_SIZE:I = 0xa

.field private static final moderateShakeThreshold:D = 13.0

.field private static final strongShakeThreshold:D = 20.0

.field private static final weakShakeThreshold:D = 5.0


# instance fields
.field private final X_CACHE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final Y_CACHE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final Z_CACHE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private accelerometerSensor:Landroid/hardware/Sensor;

.field private accuracy:I

.field private final androidUIHandler:Landroid/os/Handler;

.field private volatile deviceDefaultOrientation:I

.field private enabled:Z

.field private legacyMode:Z

.field private minimumInterval:I

.field private final resources:Landroid/content/res/Resources;

.field private sensitivity:I

.field private final sensorManager:Landroid/hardware/SensorManager;

.field private timeLastShook:J

.field private final windowManager:Landroid/view/WindowManager;

.field private xAccel:F

.field private yAccel:F

.field private zAccel:F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    .prologue
    .line 127
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 86
    move-object v2, v0

    new-instance v3, Ljava/util/LinkedList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->X_CACHE:Ljava/util/Queue;

    .line 87
    move-object v2, v0

    new-instance v3, Ljava/util/LinkedList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->Y_CACHE:Ljava/util/Queue;

    .line 88
    move-object v2, v0

    new-instance v3, Ljava/util/LinkedList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->Z_CACHE:Ljava/util/Queue;

    .line 116
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->legacyMode:Z

    .line 128
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 129
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 131
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->enabled:Z

    .line 132
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->resources:Landroid/content/res/Resources;

    .line 133
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->windowManager:Landroid/view/WindowManager;

    .line 134
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "sensor"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->sensorManager:Landroid/hardware/SensorManager;

    .line 135
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->accelerometerSensor:Landroid/hardware/Sensor;

    .line 136
    move-object v2, v0

    new-instance v3, Landroid/os/Handler;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->androidUIHandler:Landroid/os/Handler;

    .line 137
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->startListening()V

    .line 138
    move-object v2, v0

    const/16 v3, 0x190

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->MinimumInterval(I)V

    .line 139
    move-object v2, v0

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->Sensitivity(I)V

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/AccelerometerSensor;)I
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->deviceDefaultOrientation:I

    move v0, v1

    return v0
.end method

.method static synthetic access$002(Lcom/google/appinventor/components/runtime/AccelerometerSensor;I)I
    .locals 7

    .prologue
    .line 72
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->deviceDefaultOrientation:I

    move v0, v2

    return v0
.end method

.method private addToSensorCache(Ljava/util/Queue;F)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Float;",
            ">;F)V"
        }
    .end annotation

    .prologue
    .line 379
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    const/16 v4, 0xa

    if-lt v3, v4, :cond_0

    .line 380
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v3

    .line 382
    :cond_0
    move-object v3, v1

    move v4, v2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 383
    return-void
.end method

.method private isShaking(Ljava/util/Queue;F)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Float;",
            ">;F)Z"
        }
    .end annotation

    .prologue
    .line 391
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v6, 0x0

    move v3, v6

    .line 392
    move-object v6, v1

    invoke-interface {v6}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    move v5, v6

    .line 393
    move v6, v3

    move v7, v5

    add-float/2addr v6, v7

    move v3, v6

    .line 394
    goto :goto_0

    .line 396
    :cond_0
    move v6, v3

    move-object v7, v1

    invoke-interface {v7}, Ljava/util/Queue;->size()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    move v3, v6

    .line 398
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->Sensitivity()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 399
    move v6, v3

    move v7, v2

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_1

    const/4 v6, 0x1

    move v0, v6

    .line 405
    :goto_1
    return v0

    .line 399
    :cond_1
    const/4 v6, 0x0

    move v0, v6

    goto :goto_1

    .line 400
    :cond_2
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->Sensitivity()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 401
    move v6, v3

    move v7, v2

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    const-wide/high16 v8, 0x402a000000000000L    # 13.0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_3

    move v6, v3

    move v7, v2

    sub-float/2addr v6, v7

    .line 402
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_3

    const/4 v6, 0x1

    move v0, v6

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    .line 401
    move v0, v6

    goto :goto_1

    .line 404
    :cond_4
    move v6, v3

    move v7, v2

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_5

    move v6, v3

    move v7, v2

    sub-float/2addr v6, v7

    .line 405
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    const-wide/high16 v8, 0x402a000000000000L    # 13.0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_5

    const/4 v6, 0x1

    move v0, v6

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    .line 404
    move v0, v6

    goto :goto_1
.end method

.method private startListening()V
    .locals 7

    .prologue
    .line 296
    move-object v1, p0

    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->androidUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/appinventor/components/runtime/AccelerometerSensor$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/AccelerometerSensor$1;-><init>(Lcom/google/appinventor/components/runtime/AccelerometerSensor;)V

    const-wide/16 v4, 0x20

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    .line 308
    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->sensorManager:Landroid/hardware/SensorManager;

    move-object v3, v1

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->accelerometerSensor:Landroid/hardware/Sensor;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v2

    .line 309
    return-void
.end method

.method private stopListening()V
    .locals 3

    .prologue
    .line 313
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->sensorManager:Landroid/hardware/SensorManager;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 314
    return-void
.end method


# virtual methods
.method public AccelerationChanged(FFF)V
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 214
    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object v6, v0

    move v7, v1

    iput v7, v6, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->xAccel:F

    .line 215
    move-object v6, v0

    move v7, v2

    iput v7, v6, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->yAccel:F

    .line 216
    move-object v6, v0

    move v7, v3

    iput v7, v6, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->zAccel:F

    .line 218
    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->X_CACHE:Ljava/util/Queue;

    move v8, v1

    invoke-direct {v6, v7, v8}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->addToSensorCache(Ljava/util/Queue;F)V

    .line 219
    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->Y_CACHE:Ljava/util/Queue;

    move v8, v2

    invoke-direct {v6, v7, v8}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->addToSensorCache(Ljava/util/Queue;F)V

    .line 220
    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->Z_CACHE:Ljava/util/Queue;

    move v8, v3

    invoke-direct {v6, v7, v8}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->addToSensorCache(Ljava/util/Queue;F)V

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-wide v4, v6

    .line 226
    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->X_CACHE:Ljava/util/Queue;

    move v8, v1

    invoke-direct {v6, v7, v8}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->isShaking(Ljava/util/Queue;F)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->Y_CACHE:Ljava/util/Queue;

    move v8, v2

    invoke-direct {v6, v7, v8}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->isShaking(Ljava/util/Queue;F)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->Z_CACHE:Ljava/util/Queue;

    move v8, v3

    invoke-direct {v6, v7, v8}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->isShaking(Ljava/util/Queue;F)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    move-object v6, v0

    iget-wide v6, v6, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->timeLastShook:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    move-wide v6, v4

    move-object v8, v0

    iget-wide v8, v8, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->timeLastShook:J

    move-object v10, v0

    iget v10, v10, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->minimumInterval:I

    int-to-long v10, v10

    add-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-ltz v6, :cond_2

    .line 228
    :cond_1
    move-object v6, v0

    move-wide v7, v4

    iput-wide v7, v6, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->timeLastShook:J

    .line 229
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->Shaking()V

    .line 232
    :cond_2
    move-object v6, v0

    const-string/jumbo v7, "AccelerationChanged"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move v11, v1

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move v11, v2

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x2

    move v11, v3

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v6, v7, v8}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v6

    .line 233
    return-void
.end method

.method public Available()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 276
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 277
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
    .line 328
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->enabled:Z

    move v3, v1

    if-ne v2, v3, :cond_0

    .line 329
    .line 337
    :goto_0
    return-void

    .line 331
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->enabled:Z

    .line 332
    move v2, v1

    if-eqz v2, :cond_1

    .line 333
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->startListening()V

    goto :goto_0

    .line 335
    :cond_1
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->stopListening()V

    .line 337
    goto :goto_0
.end method

.method public Enabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 290
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->enabled:Z

    move v0, v1

    return v0
.end method

.method public LegacyMode(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Prior to the release that added this property the AccelerometerSensor component passed through sensor values directly as received from the Android system. However these values do not compensate for tablets that default to Landscape mode, requiring the MIT App Inventor programmer to compensate. However compensating would result in incorrect results in Portrait mode devices such as phones. We now detect Landscape mode tablets and perform the compensation. However if your project is already compensating for the change, you will now get incorrect results. Although our preferred solution is for you to update your project, you can also just set this property to \u201ctrue\u201d and our compensation code will be deactivated. Note: We recommend that you update your project as we may remove this property in a future release."
        userVisible = false
    .end annotation

    .prologue
    .line 426
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->legacyMode:Z

    .line 427
    return-void
.end method

.method public LegacyMode()Z
    .locals 2

    .prologue
    .line 430
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->legacyMode:Z

    move v0, v1

    return v0
.end method

.method public MinimumInterval()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The minimum interval, in milliseconds, between phone shakes"
    .end annotation

    .prologue
    .line 154
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->minimumInterval:I

    move v0, v1

    return v0
.end method

.method public MinimumInterval(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "400"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 168
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->minimumInterval:I

    .line 169
    return-void
.end method

.method public Sensitivity()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how sensitive the accelerometer is. The choices are: 1 = weak, 2 = moderate,  3 = strong."
    .end annotation

    .prologue
    .line 185
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->sensitivity:I

    move v0, v1

    return v0
.end method

.method public Sensitivity(I)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2"
        editorType = "accelerometer_sensitivity"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 201
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    move v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 202
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->sensitivity:I

    .line 207
    :goto_0
    return-void

    .line 204
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    const-string/jumbo v4, "Sensitivity"

    const/16 v5, 0x76d

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v1

    .line 205
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 204
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 207
    goto :goto_0
.end method

.method public Shaking()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 264
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "Shaking"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 265
    return-void
.end method

.method public XAccel()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 348
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->xAccel:F

    move v0, v1

    return v0
.end method

.method public YAccel()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 360
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->yAccel:F

    move v0, v1

    return v0
.end method

.method public ZAccel()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 372
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->zAccel:F

    move v0, v1

    return v0
.end method

.method public getDeviceDefaultOrientation()I
    .locals 8

    .prologue
    .line 236
    move-object v0, p0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-ge v3, v4, :cond_0

    .line 239
    const/4 v3, 0x1

    move v0, v3

    .line 255
    :goto_0
    return v0

    .line 241
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->resources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    move-object v1, v3

    .line 242
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    move v2, v3

    .line 244
    const-string/jumbo v3, "AccelerometerSensor"

    const-string/jumbo v4, "rotation = "

    move v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 245
    const-string/jumbo v3, "AccelerometerSensor"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "config.orientation = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v1

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 249
    move v3, v2

    if-eqz v3, :cond_1

    move v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    :cond_1
    move-object v3, v1

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    :cond_2
    move v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    move v3, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    :cond_3
    move-object v3, v1

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 253
    :cond_4
    const/4 v3, 0x2

    move v0, v3

    goto :goto_0

    .line 255
    :cond_5
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 457
    return-void
.end method

.method public onDelete()V
    .locals 2

    .prologue
    .line 481
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->enabled:Z

    if-eqz v1, :cond_0

    .line 482
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->stopListening()V

    .line 484
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 472
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->enabled:Z

    if-eqz v1, :cond_0

    .line 473
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->stopListening()V

    .line 475
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 463
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->enabled:Z

    if-eqz v1, :cond_0

    .line 464
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->startListening()V

    .line 466
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    .prologue
    .line 436
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->enabled:Z

    if-eqz v3, :cond_0

    .line 437
    move-object v3, v1

    iget-object v3, v3, Landroid/hardware/SensorEvent;->values:[F

    move-object v2, v3

    .line 440
    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->deviceDefaultOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->legacyMode:Z

    if-nez v3, :cond_1

    .line 442
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x1

    aget v4, v4, v5

    iput v4, v3, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->xAccel:F

    .line 443
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x0

    aget v4, v4, v5

    neg-float v4, v4

    iput v4, v3, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->yAccel:F

    .line 448
    :goto_0
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x2

    aget v4, v4, v5

    iput v4, v3, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->zAccel:F

    .line 449
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroid/hardware/SensorEvent;->accuracy:I

    iput v4, v3, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->accuracy:I

    .line 450
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->xAccel:F

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->yAccel:F

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->zAccel:F

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->AccelerationChanged(FFF)V

    .line 452
    :cond_0
    return-void

    .line 445
    :cond_1
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x0

    aget v4, v4, v5

    iput v4, v3, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->xAccel:F

    .line 446
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x1

    aget v4, v4, v5

    iput v4, v3, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->yAccel:F

    goto :goto_0
.end method
