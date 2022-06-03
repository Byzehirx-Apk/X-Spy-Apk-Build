.class public Lcom/google/appinventor/components/runtime/Pedometer;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A Component that acts like a Pedometer. It senses motion via the Accerleromter and attempts to determine if a step has been taken. Using a configurable stride length, it can estimate the distance traveled as well. "
    iconName = "images/pedometer.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:J

.field private Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:[F

.field private G7Lxwqvaa0zcPMEYmgjECqcap18lY2TYRMrZOi1cD4z0oU809LnjVuckWEr78wl:I

.field private I1fbWPe6RJ2coGGe88dnbV3SwCWOYXWySlRHSiEJVMw7CeEp0YdmKizbxY7zqrk2:I

.field private I88voynnB6lCbi2eFsNA2DcXYsTa46aEiMaovSB2sEx9V3gZP1qdgaJzEiYc8qjH:Z

.field private Mn7MCs8byCcphc6u6vZkI1pXuzw5IvVJJPq0YTQ0xCW64cXQ1HYdJPP7QsOPqGr1:I

.field private PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:F

.field private Qo6hTp4u7pOnq5WtKfNdQM86FuI5n4weAQCyrgAeimDlOrP2dP7U8KFwjrDIHyb:I

.field private TcZoKXUijRhvOFm1gZ0ppEfXWxECqlUNNvncSPIfT3ZrTDcozo05OAb21mkMXciT:I

.field private boZncMwfbKhn9wEZVXOlCQaCALViR3x19GsnEC1EZxndIE2ufazY5HxCE0U58Zvt:Z

.field private final context:Landroid/content/Context;

.field private haiIuOdmUoc5XQFvR9GJKGOwB3ZezhsWV0MdG7MgpkerzHclvrTRoGLrsRSHUTL5:Z

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[J

.field private mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:J

.field private opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:F

.field private pixa37in9tdgjNQb2jpfjxTaBGtatW1GnEvNM302mGQljyvLBwDosTGoRPcRGYok:I

.field private qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:[F

.field private sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:J

.field private final sensorManager:Landroid/hardware/SensorManager;

.field private t2ckruxpPDflxUi8XRIoUkd3SPCNiaP1fIl9I8fgeRcif548vLOXCzLwJMVgcQrg:Z

.field private vB3WjEtL56PUGm0spJ96S19MI1O4vPR6yju8tUYcKrC4atk0AV5GbVcHQNB7BlIK:F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 9

    .prologue
    .line 75
    move-object v1, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 55
    move-object v3, v1

    const/16 v4, 0x7d0

    iput v4, v3, Lcom/google/appinventor/components/runtime/Pedometer;->I1fbWPe6RJ2coGGe88dnbV3SwCWOYXWySlRHSiEJVMw7CeEp0YdmKizbxY7zqrk2:I

    .line 56
    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/appinventor/components/runtime/Pedometer;->Mn7MCs8byCcphc6u6vZkI1pXuzw5IvVJJPq0YTQ0xCW64cXQ1HYdJPP7QsOPqGr1:I

    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/appinventor/components/runtime/Pedometer;->TcZoKXUijRhvOFm1gZ0ppEfXWxECqlUNNvncSPIfT3ZrTDcozo05OAb21mkMXciT:I

    .line 57
    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/appinventor/components/runtime/Pedometer;->pixa37in9tdgjNQb2jpfjxTaBGtatW1GnEvNM302mGQljyvLBwDosTGoRPcRGYok:I

    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/appinventor/components/runtime/Pedometer;->G7Lxwqvaa0zcPMEYmgjECqcap18lY2TYRMrZOi1cD4z0oU809LnjVuckWEr78wl:I

    .line 58
    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/appinventor/components/runtime/Pedometer;->vB3WjEtL56PUGm0spJ96S19MI1O4vPR6yju8tUYcKrC4atk0AV5GbVcHQNB7BlIK:F

    .line 59
    move-object v3, v1

    const/16 v4, 0x64

    new-array v4, v4, [F

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Pedometer;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:[F

    .line 60
    move-object v3, v1

    const v4, 0x3f3ae148    # 0.73f

    iput v4, v3, Lcom/google/appinventor/components/runtime/Pedometer;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:F

    .line 61
    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/appinventor/components/runtime/Pedometer;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:F

    .line 62
    move-object v3, v1

    const/4 v4, 0x2

    new-array v4, v4, [J

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Pedometer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[J

    .line 63
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/Pedometer;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:J

    .line 64
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/Pedometer;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:J

    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/Pedometer;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:J

    .line 65
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Pedometer;->haiIuOdmUoc5XQFvR9GJKGOwB3ZezhsWV0MdG7MgpkerzHclvrTRoGLrsRSHUTL5:Z

    .line 66
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Pedometer;->t2ckruxpPDflxUi8XRIoUkd3SPCNiaP1fIl9I8fgeRcif548vLOXCzLwJMVgcQrg:Z

    .line 67
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Pedometer;->I88voynnB6lCbi2eFsNA2DcXYsTa46aEiMaovSB2sEx9V3gZP1qdgaJzEiYc8qjH:Z

    .line 68
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Pedometer;->boZncMwfbKhn9wEZVXOlCQaCALViR3x19GsnEC1EZxndIE2ufazY5HxCE0U58Zvt:Z

    .line 70
    move-object v3, v1

    const/16 v4, 0xa

    new-array v4, v4, [F

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Pedometer;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:[F

    .line 71
    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/appinventor/components/runtime/Pedometer;->Qo6hTp4u7pOnq5WtKfNdQM86FuI5n4weAQCyrgAeimDlOrP2dP7U8KFwjrDIHyb:I

    .line 76
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Pedometer;->context:Landroid/content/Context;

    .line 78
    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/appinventor/components/runtime/Pedometer;->Mn7MCs8byCcphc6u6vZkI1pXuzw5IvVJJPq0YTQ0xCW64cXQ1HYdJPP7QsOPqGr1:I

    .line 79
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Pedometer;->t2ckruxpPDflxUi8XRIoUkd3SPCNiaP1fIl9I8fgeRcif548vLOXCzLwJMVgcQrg:Z

    .line 80
    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/appinventor/components/runtime/Pedometer;->pixa37in9tdgjNQb2jpfjxTaBGtatW1GnEvNM302mGQljyvLBwDosTGoRPcRGYok:I

    .line 81
    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/appinventor/components/runtime/Pedometer;->G7Lxwqvaa0zcPMEYmgjECqcap18lY2TYRMrZOi1cD4z0oU809LnjVuckWEr78wl:I

    .line 83
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Pedometer;->haiIuOdmUoc5XQFvR9GJKGOwB3ZezhsWV0MdG7MgpkerzHclvrTRoGLrsRSHUTL5:Z

    .line 84
    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/appinventor/components/runtime/Pedometer;->vB3WjEtL56PUGm0spJ96S19MI1O4vPR6yju8tUYcKrC4atk0AV5GbVcHQNB7BlIK:F

    .line 86
    move-object v3, v1

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Pedometer;->context:Landroid/content/Context;

    const-string/jumbo v5, "sensor"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    .line 89
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Pedometer;->context:Landroid/content/Context;

    const-string/jumbo v4, "PedometerPrefs"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    move-object v2, v3

    .line 90
    move-object v3, v1

    move-object v4, v2

    const-string/jumbo v5, "Pedometer.stridelength"

    const v6, 0x3f3ae148    # 0.73f

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    iput v4, v3, Lcom/google/appinventor/components/runtime/Pedometer;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:F

    .line 91
    move-object v3, v1

    move-object v4, v2

    const-string/jumbo v5, "Pedometer.distance"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    iput v4, v3, Lcom/google/appinventor/components/runtime/Pedometer;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:F

    .line 92
    move-object v3, v1

    move-object v4, v2

    const-string/jumbo v5, "Pedometer.prevStepCount"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/google/appinventor/components/runtime/Pedometer;->G7Lxwqvaa0zcPMEYmgjECqcap18lY2TYRMrZOi1cD4z0oU809LnjVuckWEr78wl:I

    .line 93
    move-object v3, v1

    move-object v4, v2

    const-string/jumbo v5, "Pedometer.clockTime"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/Pedometer;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:J

    .line 94
    move-object v3, v1

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lcom/google/appinventor/components/runtime/Pedometer;->G7Lxwqvaa0zcPMEYmgjECqcap18lY2TYRMrZOi1cD4z0oU809LnjVuckWEr78wl:I

    iput v4, v3, Lcom/google/appinventor/components/runtime/Pedometer;->pixa37in9tdgjNQb2jpfjxTaBGtatW1GnEvNM302mGQljyvLBwDosTGoRPcRGYok:I

    .line 95
    move-object v3, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/Pedometer;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:J

    .line 96
    const-string/jumbo v3, "Pedometer"

    const-string/jumbo v4, "Pedometer Created"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 97
    return-void
.end method


# virtual methods
.method public CalibrateStrideLength(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 485
    return-void
.end method

.method public CalibrateStrideLength()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "deprecated"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 490
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public CalibrationFailed()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "deprecated"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 468
    return-void
.end method

.method public Distance()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The approximate distance traveled in meters."
    .end annotation

    .prologue
    .line 270
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Pedometer;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:F

    move v0, v1

    return v0
.end method

.method public ElapsedTime()J
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Time elapsed in milliseconds since the pedometer was started."
    .end annotation

    .prologue
    .line 281
    move-object v1, p0

    move-object v2, v1

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/Pedometer;->boZncMwfbKhn9wEZVXOlCQaCALViR3x19GsnEC1EZxndIE2ufazY5HxCE0U58Zvt:Z

    if-eqz v2, :cond_0

    .line 282
    move-object v2, v1

    iget-wide v2, v2, Lcom/google/appinventor/components/runtime/Pedometer;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:J

    move-wide v1, v2

    .line 284
    :goto_0
    return-wide v1

    :cond_0
    move-object v2, v1

    iget-wide v2, v2, Lcom/google/appinventor/components/runtime/Pedometer;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v6, v1

    iget-wide v6, v6, Lcom/google/appinventor/components/runtime/Pedometer;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    move-wide v1, v2

    goto :goto_0
.end method

.method public GPSAvailable()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "deprecated"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 473
    return-void
.end method

.method public GPSLost()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "deprecated"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 478
    return-void
.end method

.method public Moving()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "deprecated"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 496
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public Pause()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Pause counting of steps and distance."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 155
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Pedometer;->Stop()V

    .line 156
    return-void
.end method

.method public Reset()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Resets the step counter, distance measure and time running."
    .end annotation

    .prologue
    .line 133
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/appinventor/components/runtime/Pedometer;->pixa37in9tdgjNQb2jpfjxTaBGtatW1GnEvNM302mGQljyvLBwDosTGoRPcRGYok:I

    .line 134
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/appinventor/components/runtime/Pedometer;->G7Lxwqvaa0zcPMEYmgjECqcap18lY2TYRMrZOi1cD4z0oU809LnjVuckWEr78wl:I

    .line 135
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/appinventor/components/runtime/Pedometer;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:F

    .line 136
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/google/appinventor/components/runtime/Pedometer;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:J

    .line 137
    move-object v1, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/appinventor/components/runtime/Pedometer;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:J

    .line 138
    return-void
.end method

.method public Resume()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Resumes counting, synonym of Start."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 146
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Pedometer;->Start()V

    .line 147
    return-void
.end method

.method public Save()V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Saves the pedometer state to the phone. Permits permits accumulation of steps and distance between invocations of an App that uses the pedometer. Different Apps will have their own saved state."
    .end annotation

    .prologue
    .line 166
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Pedometer;->context:Landroid/content/Context;

    const-string/jumbo v3, "PedometerPrefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 167
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    .line 168
    move-object v1, v3

    const-string/jumbo v3, "Pedometer.stridelength"

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/Pedometer;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:F

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 169
    move-object v2, v1

    const-string/jumbo v3, "Pedometer.distance"

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/Pedometer;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:F

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 170
    move-object v2, v1

    const-string/jumbo v3, "Pedometer.prevStepCount"

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/Pedometer;->G7Lxwqvaa0zcPMEYmgjECqcap18lY2TYRMrZOi1cD4z0oU809LnjVuckWEr78wl:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 171
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/Pedometer;->boZncMwfbKhn9wEZVXOlCQaCALViR3x19GsnEC1EZxndIE2ufazY5HxCE0U58Zvt:Z

    if-eqz v2, :cond_0

    .line 172
    move-object v2, v1

    const-string/jumbo v3, "Pedometer.clockTime"

    move-object v4, v0

    iget-wide v4, v4, Lcom/google/appinventor/components/runtime/Pedometer;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:J

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 177
    :goto_0
    move-object v2, v1

    const-string/jumbo v3, "Pedometer.closeTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 178
    move-object v2, v1

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    .line 179
    const-string/jumbo v2, "Pedometer"

    const-string/jumbo v3, "Pedometer state saved."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 180
    return-void

    .line 174
    :cond_0
    move-object v2, v1

    const-string/jumbo v3, "Pedometer.clockTime"

    move-object v4, v0

    iget-wide v4, v4, Lcom/google/appinventor/components/runtime/Pedometer;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:J

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v8, v0

    iget-wide v8, v8, Lcom/google/appinventor/components/runtime/Pedometer;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    .line 174
    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    goto :goto_0
.end method

.method public SimpleStep(IF)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is run when a raw step is detected"
    .end annotation

    .prologue
    .line 192
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    const-string/jumbo v4, "SimpleStep"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move v8, v2

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v3

    .line 193
    return-void
.end method

.method public SimpleSteps()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The number of simple steps taken since the pedometer has started."
    .end annotation

    .prologue
    .line 296
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Pedometer;->G7Lxwqvaa0zcPMEYmgjECqcap18lY2TYRMrZOi1cD4z0oU809LnjVuckWEr78wl:I

    move v0, v1

    return v0
.end method

.method public Start()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start counting steps"
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Pedometer;->boZncMwfbKhn9wEZVXOlCQaCALViR3x19GsnEC1EZxndIE2ufazY5HxCE0U58Zvt:Z

    if-eqz v1, :cond_0

    .line 107
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/Pedometer;->boZncMwfbKhn9wEZVXOlCQaCALViR3x19GsnEC1EZxndIE2ufazY5HxCE0U58Zvt:Z

    .line 108
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x1

    .line 109
    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    const/4 v4, 0x0

    .line 108
    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    .line 111
    move-object v1, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/appinventor/components/runtime/Pedometer;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:J

    .line 113
    :cond_0
    return-void
.end method

.method public StartedMoving()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "deprecated"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 452
    return-void
.end method

.method public Stop()V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop counting steps"
    .end annotation

    .prologue
    .line 120
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Pedometer;->boZncMwfbKhn9wEZVXOlCQaCALViR3x19GsnEC1EZxndIE2ufazY5HxCE0U58Zvt:Z

    if-nez v1, :cond_0

    .line 121
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/Pedometer;->boZncMwfbKhn9wEZVXOlCQaCALViR3x19GsnEC1EZxndIE2ufazY5HxCE0U58Zvt:Z

    .line 122
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 123
    const-string/jumbo v1, "Pedometer"

    const-string/jumbo v2, "Unregistered listener on pause"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 124
    move-object v1, v0

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    iget-wide v2, v2, Lcom/google/appinventor/components/runtime/Pedometer;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v6, v0

    iget-wide v6, v6, Lcom/google/appinventor/components/runtime/Pedometer;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/google/appinventor/components/runtime/Pedometer;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:J

    .line 126
    :cond_0
    return-void
.end method

.method public StopDetectionTimeout()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 259
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Pedometer;->I1fbWPe6RJ2coGGe88dnbV3SwCWOYXWySlRHSiEJVMw7CeEp0YdmKizbxY7zqrk2:I

    move v0, v1

    return v0
.end method

.method public StopDetectionTimeout(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2000"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The duration in milliseconds of idleness (no steps detected) after which to go into a \"stopped\" state"
    .end annotation

    .prologue
    .line 249
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Pedometer;->I1fbWPe6RJ2coGGe88dnbV3SwCWOYXWySlRHSiEJVMw7CeEp0YdmKizbxY7zqrk2:I

    .line 250
    return-void
.end method

.method public StoppedMoving()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "deprecated"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 458
    return-void
.end method

.method public StrideLength()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 234
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Pedometer;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:F

    move v0, v1

    return v0
.end method

.method public StrideLength(F)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.73"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the average stride length in meters."
    .end annotation

    .prologue
    .line 223
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Pedometer;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:F

    .line 224
    return-void
.end method

.method public UseGPS(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 463
    return-void
.end method

.method public WalkStep(IF)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is run when a walking step is detected. A walking step is a step that appears to be involved in forward motion."
    .end annotation

    .prologue
    .line 205
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    const-string/jumbo v4, "WalkStep"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move v8, v2

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v3

    .line 206
    return-void
.end method

.method public WalkSteps()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "the number of walk steps taken since the pedometer has started."
    .end annotation

    .prologue
    .line 307
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Pedometer;->pixa37in9tdgjNQb2jpfjxTaBGtatW1GnEvNM302mGQljyvLBwDosTGoRPcRGYok:I

    move v0, v1

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 5

    .prologue
    .line 362
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const-string/jumbo v3, "Pedometer"

    const-string/jumbo v4, "Accelerometer accuracy changed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 363
    return-void
.end method

.method public onDelete()V
    .locals 3

    .prologue
    .line 439
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 440
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 22

    .prologue
    .line 367
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v14, v4

    iget-object v14, v14, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v14}, Landroid/hardware/Sensor;->getType()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_0

    .line 368
    .line 434
    :goto_0
    return-void

    .line 370
    :cond_0
    move-object v14, v4

    iget-object v14, v14, Landroid/hardware/SensorEvent;->values:[F

    move-object v4, v14

    .line 371
    const/4 v14, 0x0

    move v5, v14

    .line 372
    move-object v14, v4

    array-length v14, v14

    move v8, v14

    const/4 v14, 0x0

    move v9, v14

    :goto_1
    move v14, v9

    move v15, v8

    if-ge v14, v15, :cond_1

    move-object v14, v4

    move v15, v9

    aget v14, v14, v15

    move v6, v14

    move v14, v5

    move v15, v6

    move/from16 v20, v15

    move/from16 v15, v20

    move/from16 v16, v20

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    move v5, v14

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 375
    :cond_1
    move-object v14, v3

    iget v14, v14, Lcom/google/appinventor/components/runtime/Pedometer;->Mn7MCs8byCcphc6u6vZkI1pXuzw5IvVJJPq0YTQ0xCW64cXQ1HYdJPP7QsOPqGr1:I

    const/16 v15, 0x32

    add-int/lit8 v14, v14, 0x32

    const/16 v15, 0x64

    rem-int/lit8 v14, v14, 0x64

    move v4, v14

    .line 378
    move-object v14, v3

    iget-boolean v14, v14, Lcom/google/appinventor/components/runtime/Pedometer;->t2ckruxpPDflxUi8XRIoUkd3SPCNiaP1fIl9I8fgeRcif548vLOXCzLwJMVgcQrg:Z

    if-eqz v14, :cond_7

    move-object v14, v3

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    .line 1336
    move-object v6, v15

    iget v14, v14, Lcom/google/appinventor/components/runtime/Pedometer;->Mn7MCs8byCcphc6u6vZkI1pXuzw5IvVJJPq0YTQ0xCW64cXQ1HYdJPP7QsOPqGr1:I

    const/16 v15, 0x32

    add-int/lit8 v14, v14, 0x32

    const/16 v15, 0x64

    rem-int/lit8 v14, v14, 0x64

    move v7, v14

    .line 1337
    const/4 v14, 0x0

    move v8, v14

    :goto_2
    move v14, v8

    const/16 v15, 0x64

    if-ge v14, v15, :cond_4

    .line 1338
    move v14, v8

    move v15, v7

    if-eq v14, v15, :cond_3

    move-object v14, v6

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/Pedometer;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:[F

    move v15, v8

    aget v14, v14, v15

    move-object v15, v6

    iget-object v15, v15, Lcom/google/appinventor/components/runtime/Pedometer;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:[F

    move/from16 v16, v7

    aget v15, v15, v16

    cmpl-float v14, v14, v15

    if-lez v14, :cond_3

    .line 1339
    const/4 v14, 0x0

    .line 378
    :goto_3
    if-eqz v14, :cond_7

    .line 379
    move-object v14, v3

    iget-boolean v14, v14, Lcom/google/appinventor/components/runtime/Pedometer;->haiIuOdmUoc5XQFvR9GJKGOwB3ZezhsWV0MdG7MgpkerzHclvrTRoGLrsRSHUTL5:Z

    if-eqz v14, :cond_7

    move-object v14, v3

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/Pedometer;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:[F

    move v15, v4

    aget v14, v14, v15

    move-object v15, v3

    iget v15, v15, Lcom/google/appinventor/components/runtime/Pedometer;->vB3WjEtL56PUGm0spJ96S19MI1O4vPR6yju8tUYcKrC4atk0AV5GbVcHQNB7BlIK:F

    sub-float/2addr v14, v15

    const/high16 v15, 0x42200000    # 40.0f

    cmpl-float v14, v14, v15

    if-lez v14, :cond_7

    .line 381
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-wide v8, v14

    .line 382
    move-object v14, v3

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/Pedometer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[J

    move-object v15, v3

    iget v15, v15, Lcom/google/appinventor/components/runtime/Pedometer;->TcZoKXUijRhvOFm1gZ0ppEfXWxECqlUNNvncSPIfT3ZrTDcozo05OAb21mkMXciT:I

    move-wide/from16 v16, v8

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/Pedometer;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    aput-wide v16, v14, v15

    .line 383
    move-object v14, v3

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    iget v15, v15, Lcom/google/appinventor/components/runtime/Pedometer;->TcZoKXUijRhvOFm1gZ0ppEfXWxECqlUNNvncSPIfT3ZrTDcozo05OAb21mkMXciT:I

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    const/16 v16, 0x2

    rem-int/lit8 v15, v15, 0x2

    iput v15, v14, Lcom/google/appinventor/components/runtime/Pedometer;->TcZoKXUijRhvOFm1gZ0ppEfXWxECqlUNNvncSPIfT3ZrTDcozo05OAb21mkMXciT:I

    .line 384
    move-object v14, v3

    move-wide v15, v8

    iput-wide v15, v14, Lcom/google/appinventor/components/runtime/Pedometer;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:J

    .line 385
    move-object v14, v3

    move-object v6, v14

    .line 2315
    const/4 v14, 0x0

    move v7, v14

    .line 2316
    const/4 v14, 0x0

    move v8, v14

    .line 2317
    move-object v14, v6

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/Pedometer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[J

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object v9, v15

    array-length v14, v14

    move v10, v14

    const/4 v14, 0x0

    move v11, v14

    :goto_4
    move v14, v11

    move v15, v10

    if-ge v14, v15, :cond_5

    move-object v14, v9

    move v15, v11

    aget-wide v14, v14, v15

    move-wide/from16 v20, v14

    move-wide/from16 v14, v20

    move-wide/from16 v16, v20

    .line 2318
    move-wide/from16 v12, v16

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_2

    .line 2319
    add-int/lit8 v8, v8, 0x1

    .line 2320
    move v14, v7

    move-wide v15, v12

    long-to-float v15, v15

    add-float/2addr v14, v15

    move v7, v14

    .line 2317
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1337
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 1342
    :cond_4
    const/4 v14, 0x1

    goto :goto_3

    .line 2323
    :cond_5
    move v14, v7

    move v15, v8

    int-to-float v15, v15

    div-float/2addr v14, v15

    move v7, v14

    .line 2324
    move-object v14, v6

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/Pedometer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[J

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object v9, v15

    array-length v14, v14

    move v10, v14

    const/4 v14, 0x0

    move v11, v14

    :goto_5
    move v14, v11

    move v15, v10

    if-ge v14, v15, :cond_a

    move-object v14, v9

    move v15, v11

    aget-wide v14, v14, v15

    .line 2325
    long-to-float v14, v14

    move v15, v7

    sub-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const/high16 v15, 0x437a0000    # 250.0f

    cmpl-float v14, v14, v15

    if-lez v14, :cond_9

    .line 2326
    const/4 v14, 0x0

    .line 385
    :goto_6
    if-eqz v14, :cond_b

    .line 386
    move-object v14, v3

    iget-boolean v14, v14, Lcom/google/appinventor/components/runtime/Pedometer;->I88voynnB6lCbi2eFsNA2DcXYsTa46aEiMaovSB2sEx9V3gZP1qdgaJzEiYc8qjH:Z

    if-eqz v14, :cond_6

    .line 387
    move-object v14, v3

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    iget v15, v15, Lcom/google/appinventor/components/runtime/Pedometer;->pixa37in9tdgjNQb2jpfjxTaBGtatW1GnEvNM302mGQljyvLBwDosTGoRPcRGYok:I

    const/16 v16, 0x2

    add-int/lit8 v15, v15, 0x2

    iput v15, v14, Lcom/google/appinventor/components/runtime/Pedometer;->pixa37in9tdgjNQb2jpfjxTaBGtatW1GnEvNM302mGQljyvLBwDosTGoRPcRGYok:I

    .line 388
    move-object v14, v3

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    iget v15, v15, Lcom/google/appinventor/components/runtime/Pedometer;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:F

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/appinventor/components/runtime/Pedometer;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:F

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    mul-float v16, v16, v17

    add-float v15, v15, v16

    iput v15, v14, Lcom/google/appinventor/components/runtime/Pedometer;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:F

    .line 389
    move-object v14, v3

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/google/appinventor/components/runtime/Pedometer;->I88voynnB6lCbi2eFsNA2DcXYsTa46aEiMaovSB2sEx9V3gZP1qdgaJzEiYc8qjH:Z

    .line 391
    :cond_6
    move-object v14, v3

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    iget v15, v15, Lcom/google/appinventor/components/runtime/Pedometer;->pixa37in9tdgjNQb2jpfjxTaBGtatW1GnEvNM302mGQljyvLBwDosTGoRPcRGYok:I

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    iput v15, v14, Lcom/google/appinventor/components/runtime/Pedometer;->pixa37in9tdgjNQb2jpfjxTaBGtatW1GnEvNM302mGQljyvLBwDosTGoRPcRGYok:I

    .line 392
    move-object v14, v3

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    iget v15, v15, Lcom/google/appinventor/components/runtime/Pedometer;->pixa37in9tdgjNQb2jpfjxTaBGtatW1GnEvNM302mGQljyvLBwDosTGoRPcRGYok:I

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/appinventor/components/runtime/Pedometer;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:F

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/Pedometer;->WalkStep(IF)V

    .line 393
    move-object v14, v3

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    iget v15, v15, Lcom/google/appinventor/components/runtime/Pedometer;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:F

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/appinventor/components/runtime/Pedometer;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:F

    move/from16 v16, v0

    add-float v15, v15, v16

    iput v15, v14, Lcom/google/appinventor/components/runtime/Pedometer;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:F

    .line 397
    :goto_7
    move-object v14, v3

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    iget v15, v15, Lcom/google/appinventor/components/runtime/Pedometer;->G7Lxwqvaa0zcPMEYmgjECqcap18lY2TYRMrZOi1cD4z0oU809LnjVuckWEr78wl:I

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    iput v15, v14, Lcom/google/appinventor/components/runtime/Pedometer;->G7Lxwqvaa0zcPMEYmgjECqcap18lY2TYRMrZOi1cD4z0oU809LnjVuckWEr78wl:I

    .line 398
    move-object v14, v3

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    iget v15, v15, Lcom/google/appinventor/components/runtime/Pedometer;->G7Lxwqvaa0zcPMEYmgjECqcap18lY2TYRMrZOi1cD4z0oU809LnjVuckWEr78wl:I

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/appinventor/components/runtime/Pedometer;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:F

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/Pedometer;->SimpleStep(IF)V

    .line 399
    move-object v14, v3

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/google/appinventor/components/runtime/Pedometer;->haiIuOdmUoc5XQFvR9GJKGOwB3ZezhsWV0MdG7MgpkerzHclvrTRoGLrsRSHUTL5:Z

    .line 403
    :cond_7
    move-object v14, v3

    iget-boolean v14, v14, Lcom/google/appinventor/components/runtime/Pedometer;->t2ckruxpPDflxUi8XRIoUkd3SPCNiaP1fIl9I8fgeRcif548vLOXCzLwJMVgcQrg:Z

    if-eqz v14, :cond_8

    move-object v14, v3

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    .line 2349
    move-object v6, v15

    iget v14, v14, Lcom/google/appinventor/components/runtime/Pedometer;->Mn7MCs8byCcphc6u6vZkI1pXuzw5IvVJJPq0YTQ0xCW64cXQ1HYdJPP7QsOPqGr1:I

    const/16 v15, 0x32

    add-int/lit8 v14, v14, 0x32

    const/16 v15, 0x64

    rem-int/lit8 v14, v14, 0x64

    move v7, v14

    .line 2350
    const/4 v14, 0x0

    move v8, v14

    :goto_8
    move v14, v8

    const/16 v15, 0x64

    if-ge v14, v15, :cond_d

    .line 2351
    move v14, v8

    move v15, v7

    if-eq v14, v15, :cond_c

    move-object v14, v6

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/Pedometer;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:[F

    move v15, v8

    aget v14, v14, v15

    move-object v15, v6

    iget-object v15, v15, Lcom/google/appinventor/components/runtime/Pedometer;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:[F

    move/from16 v16, v7

    aget v15, v15, v16

    cmpg-float v14, v14, v15

    if-gez v14, :cond_c

    .line 2352
    const/4 v14, 0x0

    .line 403
    :goto_9
    if-eqz v14, :cond_8

    .line 404
    move-object v14, v3

    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/google/appinventor/components/runtime/Pedometer;->haiIuOdmUoc5XQFvR9GJKGOwB3ZezhsWV0MdG7MgpkerzHclvrTRoGLrsRSHUTL5:Z

    .line 405
    move-object v14, v3

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    iget-object v15, v15, Lcom/google/appinventor/components/runtime/Pedometer;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:[F

    move/from16 v16, v4

    aget v15, v15, v16

    iput v15, v14, Lcom/google/appinventor/components/runtime/Pedometer;->vB3WjEtL56PUGm0spJ96S19MI1O4vPR6yju8tUYcKrC4atk0AV5GbVcHQNB7BlIK:F

    .line 408
    :cond_8
    move-object v14, v3

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/Pedometer;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:[F

    move-object v15, v3

    iget v15, v15, Lcom/google/appinventor/components/runtime/Pedometer;->Qo6hTp4u7pOnq5WtKfNdQM86FuI5n4weAQCyrgAeimDlOrP2dP7U8KFwjrDIHyb:I

    move/from16 v16, v5

    aput v16, v14, v15

    .line 409
    move-object v14, v3

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    iget v15, v15, Lcom/google/appinventor/components/runtime/Pedometer;->Qo6hTp4u7pOnq5WtKfNdQM86FuI5n4weAQCyrgAeimDlOrP2dP7U8KFwjrDIHyb:I

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Pedometer;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:[F

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    rem-int v15, v15, v16

    iput v15, v14, Lcom/google/appinventor/components/runtime/Pedometer;->Qo6hTp4u7pOnq5WtKfNdQM86FuI5n4weAQCyrgAeimDlOrP2dP7U8KFwjrDIHyb:I

    .line 410
    move-object v14, v3

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/Pedometer;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:[F

    move-object v15, v3

    iget v15, v15, Lcom/google/appinventor/components/runtime/Pedometer;->Mn7MCs8byCcphc6u6vZkI1pXuzw5IvVJJPq0YTQ0xCW64cXQ1HYdJPP7QsOPqGr1:I

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 411
    move-object v14, v3

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/Pedometer;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:[F

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object v8, v15

    array-length v14, v14

    move v9, v14

    const/4 v14, 0x0

    move v6, v14

    :goto_a
    move v14, v6

    move v15, v9

    if-ge v14, v15, :cond_e

    move-object v14, v8

    move v15, v6

    aget v14, v14, v15

    move v4, v14

    move-object v14, v3

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/Pedometer;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:[F

    move-object v15, v3

    iget v15, v15, Lcom/google/appinventor/components/runtime/Pedometer;->Mn7MCs8byCcphc6u6vZkI1pXuzw5IvVJJPq0YTQ0xCW64cXQ1HYdJPP7QsOPqGr1:I

    move-object/from16 v20, v14

    move/from16 v21, v15

    move-object/from16 v14, v20

    move/from16 v15, v21

    move-object/from16 v16, v20

    move/from16 v17, v21

    aget v16, v16, v17

    move/from16 v17, v4

    add-float v16, v16, v17

    aput v16, v14, v15

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 2324
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    .line 2329
    :cond_a
    const/4 v14, 0x1

    goto/16 :goto_6

    .line 395
    :cond_b
    move-object v14, v3

    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/google/appinventor/components/runtime/Pedometer;->I88voynnB6lCbi2eFsNA2DcXYsTa46aEiMaovSB2sEx9V3gZP1qdgaJzEiYc8qjH:Z

    goto/16 :goto_7

    .line 2350
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_8

    .line 2355
    :cond_d
    const/4 v14, 0x1

    goto/16 :goto_9

    .line 412
    :cond_e
    move-object v14, v3

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/Pedometer;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:[F

    move-object v15, v3

    iget v15, v15, Lcom/google/appinventor/components/runtime/Pedometer;->Mn7MCs8byCcphc6u6vZkI1pXuzw5IvVJJPq0YTQ0xCW64cXQ1HYdJPP7QsOPqGr1:I

    move-object/from16 v20, v14

    move/from16 v21, v15

    move-object/from16 v14, v20

    move/from16 v15, v21

    move-object/from16 v16, v20

    move/from16 v17, v21

    aget v16, v16, v17

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Pedometer;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:[F

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    aput v16, v14, v15

    .line 413
    move-object v14, v3

    iget-boolean v14, v14, Lcom/google/appinventor/components/runtime/Pedometer;->t2ckruxpPDflxUi8XRIoUkd3SPCNiaP1fIl9I8fgeRcif548vLOXCzLwJMVgcQrg:Z

    if-nez v14, :cond_f

    move-object v14, v3

    iget v14, v14, Lcom/google/appinventor/components/runtime/Pedometer;->Mn7MCs8byCcphc6u6vZkI1pXuzw5IvVJJPq0YTQ0xCW64cXQ1HYdJPP7QsOPqGr1:I

    const/4 v15, 0x1

    if-le v14, v15, :cond_15

    .line 414
    :cond_f
    move-object v14, v3

    iget v14, v14, Lcom/google/appinventor/components/runtime/Pedometer;->Mn7MCs8byCcphc6u6vZkI1pXuzw5IvVJJPq0YTQ0xCW64cXQ1HYdJPP7QsOPqGr1:I

    move v8, v14

    .line 415
    add-int/lit8 v8, v8, -0x1

    move v14, v8

    if-gez v14, :cond_10

    add-int/lit8 v8, v8, 0x64

    .line 416
    :cond_10
    move-object v14, v3

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/Pedometer;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:[F

    move-object v15, v3

    iget v15, v15, Lcom/google/appinventor/components/runtime/Pedometer;->Mn7MCs8byCcphc6u6vZkI1pXuzw5IvVJJPq0YTQ0xCW64cXQ1HYdJPP7QsOPqGr1:I

    move-object/from16 v20, v14

    move/from16 v21, v15

    move-object/from16 v14, v20

    move/from16 v15, v21

    move-object/from16 v16, v20

    move/from16 v17, v21

    aget v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Pedometer;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:[F

    move-object/from16 v18, v0

    move/from16 v19, v8

    aget v18, v18, v19

    mul-float v17, v17, v18

    add-float v16, v16, v17

    aput v16, v14, v15

    .line 417
    add-int/lit8 v8, v8, -0x1

    move v14, v8

    if-gez v14, :cond_11

    add-int/lit8 v8, v8, 0x64

    .line 418
    :cond_11
    move-object v14, v3

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/Pedometer;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:[F

    move-object v15, v3

    iget v15, v15, Lcom/google/appinventor/components/runtime/Pedometer;->Mn7MCs8byCcphc6u6vZkI1pXuzw5IvVJJPq0YTQ0xCW64cXQ1HYdJPP7QsOPqGr1:I

    move-object/from16 v20, v14

    move/from16 v21, v15

    move-object/from16 v14, v20

    move/from16 v15, v21

    move-object/from16 v16, v20

    move/from16 v17, v21

    aget v16, v16, v17

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Pedometer;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:[F

    move-object/from16 v17, v0

    move/from16 v18, v8

    aget v17, v17, v18

    add-float v16, v16, v17

    aput v16, v14, v15

    .line 419
    move-object v14, v3

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/Pedometer;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:[F

    move-object v15, v3

    iget v15, v15, Lcom/google/appinventor/components/runtime/Pedometer;->Mn7MCs8byCcphc6u6vZkI1pXuzw5IvVJJPq0YTQ0xCW64cXQ1HYdJPP7QsOPqGr1:I

    move-object/from16 v20, v14

    move/from16 v21, v15

    move-object/from16 v14, v20

    move/from16 v15, v21

    move-object/from16 v16, v20

    move/from16 v17, v21

    aget v16, v16, v17

    const/high16 v17, 0x40800000    # 4.0f

    div-float v16, v16, v17

    aput v16, v14, v15

    .line 420
    .line 424
    :cond_12
    :goto_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-wide/from16 v20, v14

    move-wide/from16 v14, v20

    move-wide/from16 v16, v20

    .line 425
    move-wide/from16 v8, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/Pedometer;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/appinventor/components/runtime/Pedometer;->I1fbWPe6RJ2coGGe88dnbV3SwCWOYXWySlRHSiEJVMw7CeEp0YdmKizbxY7zqrk2:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-lez v14, :cond_13

    .line 426
    move-object v14, v3

    move-wide v15, v8

    iput-wide v15, v14, Lcom/google/appinventor/components/runtime/Pedometer;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:J

    .line 429
    :cond_13
    move-object v14, v3

    iget v14, v14, Lcom/google/appinventor/components/runtime/Pedometer;->Mn7MCs8byCcphc6u6vZkI1pXuzw5IvVJJPq0YTQ0xCW64cXQ1HYdJPP7QsOPqGr1:I

    const/16 v15, 0x63

    if-ne v14, v15, :cond_14

    move-object v14, v3

    iget-boolean v14, v14, Lcom/google/appinventor/components/runtime/Pedometer;->t2ckruxpPDflxUi8XRIoUkd3SPCNiaP1fIl9I8fgeRcif548vLOXCzLwJMVgcQrg:Z

    if-nez v14, :cond_14

    .line 430
    move-object v14, v3

    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/google/appinventor/components/runtime/Pedometer;->t2ckruxpPDflxUi8XRIoUkd3SPCNiaP1fIl9I8fgeRcif548vLOXCzLwJMVgcQrg:Z

    .line 433
    :cond_14
    move-object v14, v3

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    iget v15, v15, Lcom/google/appinventor/components/runtime/Pedometer;->Mn7MCs8byCcphc6u6vZkI1pXuzw5IvVJJPq0YTQ0xCW64cXQ1HYdJPP7QsOPqGr1:I

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    const/16 v16, 0x64

    rem-int/lit8 v15, v15, 0x64

    iput v15, v14, Lcom/google/appinventor/components/runtime/Pedometer;->Mn7MCs8byCcphc6u6vZkI1pXuzw5IvVJJPq0YTQ0xCW64cXQ1HYdJPP7QsOPqGr1:I

    .line 434
    goto/16 :goto_0

    .line 420
    :cond_15
    move-object v14, v3

    iget-boolean v14, v14, Lcom/google/appinventor/components/runtime/Pedometer;->t2ckruxpPDflxUi8XRIoUkd3SPCNiaP1fIl9I8fgeRcif548vLOXCzLwJMVgcQrg:Z

    if-nez v14, :cond_12

    move-object v14, v3

    iget v14, v14, Lcom/google/appinventor/components/runtime/Pedometer;->Mn7MCs8byCcphc6u6vZkI1pXuzw5IvVJJPq0YTQ0xCW64cXQ1HYdJPP7QsOPqGr1:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_12

    .line 421
    move-object v14, v3

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/Pedometer;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:[F

    const/4 v15, 0x1

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Pedometer;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:[F

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Pedometer;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    add-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    aput v16, v14, v15

    goto :goto_b
.end method
