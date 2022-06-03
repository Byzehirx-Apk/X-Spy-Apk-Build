.class public abstract Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;
.super Lcom/google/appinventor/components/runtime/SingleValueSensor;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;
    }
.end annotation


# instance fields
.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;II)V
    .locals 11

    .prologue
    .line 25
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    move v6, v2

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/SingleValueSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;I)V

    .line 26
    move-object v4, v0

    new-instance v5, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move v8, v3

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;-><init>(Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;IB)V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;

    .line 27
    return-void
.end method


# virtual methods
.method protected getAverageValue()F
    .locals 10

    .prologue
    .line 39
    move-object v0, p0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;

    .line 2042
    move-object v1, v6

    .line 2059
    const-wide/16 v6, 0x0

    move-wide v3, v6

    .line 2060
    const/4 v6, 0x0

    move v2, v6

    .line 2062
    const/4 v6, 0x0

    move v5, v6

    :goto_0
    move v6, v5

    move-object v7, v1

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Ljava/lang/Float;

    array-length v7, v7

    if-ge v6, v7, :cond_1

    .line 2063
    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Ljava/lang/Float;

    move v7, v5

    aget-object v6, v6, v7

    if-eqz v6, :cond_0

    .line 2064
    move-wide v6, v3

    move-object v8, v1

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Ljava/lang/Float;

    move v9, v5

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    float-to-double v8, v8

    add-double/2addr v6, v8

    move-wide v3, v6

    .line 2065
    add-int/lit8 v2, v2, 0x1

    .line 2062
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2069
    :cond_1
    move v6, v2

    if-nez v6, :cond_2

    move-wide v6, v3

    :goto_1
    double-to-float v6, v6

    .line 39
    move v0, v6

    return v0

    .line 2069
    :cond_2
    move-wide v6, v3

    move v8, v2

    int-to-double v8, v8

    div-double/2addr v6, v8

    goto :goto_1
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;->enabled:Z

    if-eqz v4, :cond_1

    move-object v4, v1

    iget-object v4, v4, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;->sensorType:I

    if-ne v4, v5, :cond_1

    .line 32
    move-object v4, v1

    iget-object v4, v4, Landroid/hardware/SensorEvent;->values:[F

    move-object v2, v4

    .line 33
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;

    move-object v5, v2

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 1042
    move-object v3, v5

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 1052
    move-object v2, v5

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Ljava/lang/Float;

    move-object v5, v2

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:I

    move-object v6, v3

    aput-object v6, v4, v5

    .line 1053
    move-object v4, v2

    iget v4, v4, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:I

    move-object v5, v2

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Ljava/lang/Float;

    array-length v5, v5

    if-ne v4, v5, :cond_0

    .line 1054
    move-object v4, v2

    const/4 v5, 0x0

    iput v5, v4, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:I

    .line 34
    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 36
    :cond_1
    return-void
.end method
