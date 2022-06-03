.class public abstract Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;
    }
.end annotation


# instance fields
.field private iA1fsPSZHTCVXA414XY2edBmEFVpo23ZLLJ3ntPGDoZ3Lc1O8L7tucf7fjSxdGWm:Ljava/lang/String;

.field protected port:I


# direct methods
.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 63
    return-void
.end method


# virtual methods
.method public SensorPort()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The sensor port that the sensor is connected to."
        userVisible = false
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->iA1fsPSZHTCVXA414XY2edBmEFVpo23ZLLJ3ntPGDoZ3Lc1O8L7tucf7fjSxdGWm:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public abstract SensorPort(Ljava/lang/String;)V
.end method

.method public afterConnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V
    .locals 4

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "Connect"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->initializeSensor(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method protected abstract initializeSensor(Ljava/lang/String;)V
.end method

.method protected final setSensorPort(Ljava/lang/String;)V
    .locals 13

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v4, "SensorPort"

    move-object v2, v4

    .line 82
    move-object v4, v0

    move-object v5, v1

    :try_start_0
    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->convertSensorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    move v3, v4

    .line 87
    .line 89
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->iA1fsPSZHTCVXA414XY2edBmEFVpo23ZLLJ3ntPGDoZ3Lc1O8L7tucf7fjSxdGWm:Ljava/lang/String;

    .line 90
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->port:I

    .line 91
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 92
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->initializeSensor(Ljava/lang/String;)V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    move-object v6, v2

    const/16 v7, 0x198

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 86
    goto :goto_0
.end method
