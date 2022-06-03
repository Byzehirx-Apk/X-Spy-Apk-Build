.class public Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field protected static final DEFAULT_SENSOR_PORT:Ljava/lang/String; = "1"


# instance fields
.field protected sensorPortNumber:I


# direct methods
.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 29
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 30
    move-object v3, v0

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->SensorPort(Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public SensorPort()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The sensor port that the sensor is connected to."
        userVisible = false
    .end annotation

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    iget v2, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->sensorPortNumber:I

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->portNumberToSensorPortLetter(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public SensorPort(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "lego_ev3_sensor_port"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v3, "SensorPort"

    move-object v2, v3

    .line 48
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->setSensorPort(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method protected final readInputPercentage(Ljava/lang/String;IIII)I
    .locals 16

    .prologue
    .line 65
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move v6, v2

    if-ltz v6, :cond_0

    move v6, v2

    const/4 v7, 0x3

    if-gt v6, v7, :cond_0

    move v6, v3

    if-ltz v6, :cond_0

    move v6, v3

    const/4 v7, 0x3

    if-gt v6, v7, :cond_0

    move v6, v5

    const/4 v7, -0x1

    if-lt v6, v7, :cond_0

    move v6, v5

    const/4 v7, 0x7

    if-le v6, v7, :cond_1

    .line 66
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 68
    :cond_1
    const/16 v6, -0x67

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string/jumbo v10, "ccccccg"

    const/4 v11, 0x7

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    const/16 v14, 0x1b

    .line 73
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x1

    move v14, v2

    int-to-byte v14, v14

    .line 74
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x2

    move v14, v3

    int-to-byte v14, v14

    .line 75
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x3

    move v14, v4

    int-to-byte v14, v14

    .line 76
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x4

    move v14, v5

    int-to-byte v14, v14

    .line 77
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x5

    const/4 v14, 0x1

    .line 78
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x6

    const/4 v14, 0x0

    .line 79
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    .line 68
    invoke-static/range {v6 .. v11}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    move-object v2, v6

    .line 81
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v6

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    .line 82
    move-object v1, v7

    if-eqz v6, :cond_2

    move-object v6, v1

    array-length v6, v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    move-object v6, v1

    const/4 v7, 0x0

    aget-byte v6, v6, v7

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 83
    move-object v6, v1

    const/4 v7, 0x1

    aget-byte v6, v6, v7

    move v0, v6

    .line 85
    :goto_0
    return v0

    :cond_2
    const/4 v6, -0x1

    move v0, v6

    goto :goto_0
.end method

.method protected final readInputSI(Ljava/lang/String;IIII)D
    .locals 16

    .prologue
    .line 94
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move v6, v2

    if-ltz v6, :cond_0

    move v6, v2

    const/4 v7, 0x3

    if-gt v6, v7, :cond_0

    move v6, v3

    if-ltz v6, :cond_0

    move v6, v3

    const/4 v7, 0x3

    if-gt v6, v7, :cond_0

    move v6, v5

    const/4 v7, -0x1

    if-lt v6, v7, :cond_0

    move v6, v5

    const/4 v7, 0x7

    if-le v6, v7, :cond_1

    .line 95
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 96
    :cond_1
    const/16 v6, -0x67

    const/4 v7, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string/jumbo v10, "ccccccg"

    const/4 v11, 0x7

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    const/16 v14, 0x1d

    .line 101
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x1

    move v14, v2

    int-to-byte v14, v14

    .line 102
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x2

    move v14, v3

    int-to-byte v14, v14

    .line 103
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x3

    move v14, v4

    int-to-byte v14, v14

    .line 104
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x4

    move v14, v5

    int-to-byte v14, v14

    .line 105
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x5

    const/4 v14, 0x1

    .line 106
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x6

    const/4 v14, 0x0

    .line 107
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    .line 96
    invoke-static/range {v6 .. v11}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    move-object v2, v6

    .line 109
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v6

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    .line 111
    move-object v2, v7

    if-eqz v6, :cond_2

    move-object v6, v2

    array-length v6, v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_2

    move-object v6, v2

    const/4 v7, 0x0

    aget-byte v6, v6, v7

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 112
    const-string/jumbo v6, "xf"

    move-object v7, v2

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->unpack(Ljava/lang/String;[B)[Ljava/lang/Object;

    move-result-object v6

    .line 113
    const/4 v7, 0x0

    aget-object v6, v6, v7

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v6, v6

    move-wide v0, v6

    .line 117
    :goto_0
    return-wide v0

    .line 116
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v7, v0

    move-object v8, v1

    const/16 v9, 0xc1e

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 117
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    move-wide v0, v6

    goto :goto_0
.end method

.method protected final setSensorPort(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v2

    :try_start_0
    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->sensorPortLetterToPortNumber(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->sensorPortNumber:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    move-object v5, v1

    const/16 v6, 0xc21

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v2

    aput-object v10, v8, v9

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 56
    goto :goto_0
.end method
