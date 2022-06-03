.class public Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EV3:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to an ultrasonic sensor on a LEGO MINDSTORMS EV3 robot."
    iconName = "images/legoMindstormsEv3.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/lang/String;

.field private PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Z

.field private PW8gZZwgOCTWcD2kHUmkv6AgL0mFh4d5ZW9zStIiy43FwfJpRxeUshErA0Pq6Vc5:Z

.field private PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:I

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/os/Handler;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Runnable;

.field private moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:I

.field private opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:Z

.field private tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:I

.field private vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:D


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 8

    .prologue
    .line 62
    move-object v1, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, v2

    const-string/jumbo v5, "Ev3UltrasonicSensor"

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 47
    move-object v3, v1

    const-string/jumbo v4, "cm"

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/lang/String;

    .line 48
    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:I

    .line 51
    move-object v3, v1

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:D

    .line 64
    move-object v3, v1

    new-instance v4, Landroid/os/Handler;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/os/Handler;

    .line 65
    move-object v3, v1

    new-instance v4, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;-><init>(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Runnable;

    .line 96
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/os/Handler;

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v3

    .line 98
    move-object v3, v1

    const/16 v4, 0x5a

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->TopOfRange(I)V

    .line 99
    move-object v3, v1

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->BottomOfRange(I)V

    .line 100
    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->BelowRangeEventEnabled(Z)V

    .line 101
    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->AboveRangeEventEnabled(Z)V

    .line 102
    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->WithinRangeEventEnabled(Z)V

    .line 103
    move-object v3, v1

    const-string/jumbo v4, "cm"

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->Unit(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;)D
    .locals 12

    .prologue
    .line 114
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->sensorPortNumber:I

    const/16 v8, 0x1e

    move-object v9, v0

    iget v9, v9, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:I

    invoke-virtual/range {v4 .. v9}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->readInputSI(Ljava/lang/String;IIII)D

    move-result-wide v4

    move-wide v10, v4

    move-wide v4, v10

    move-wide v6, v10

    .line 115
    move-wide v2, v6

    const-wide v6, 0x406fe00000000000L    # 255.0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    move-wide v0, v4

    :goto_0
    return-wide v0

    :cond_0
    move-wide v4, v2

    move-wide v0, v4

    goto :goto_0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)I
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:I

    move v0, v1

    return v0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)Z
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->PW8gZZwgOCTWcD2kHUmkv6AgL0mFh4d5ZW9zStIiy43FwfJpRxeUshErA0Pq6Vc5:Z

    move v0, v1

    return v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)D
    .locals 3

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:D

    move-wide v0, v1

    return-wide v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;D)D
    .locals 13

    .prologue
    .line 35
    move-object v1, p0

    move-wide v2, p1

    move-object v4, v1

    move-wide v5, v2

    move-object v9, v4

    move-wide v10, v5

    move-wide v4, v10

    move-object v6, v9

    move-wide v7, v10

    iput-wide v7, v6, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:D

    move-wide v1, v4

    return-wide v1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;Ljava/lang/String;)D
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;)D

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)I
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:I

    move v0, v1

    return v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)Landroid/os/Handler;
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/os/Handler;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)Z
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Z

    move v0, v1

    return v0
.end method

.method private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 303
    move-object v1, p0

    move-object v2, p1

    move-object v3, v1

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:D

    .line 305
    const-string/jumbo v3, "cm"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 306
    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:I

    .line 314
    :goto_0
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/lang/String;

    .line 315
    return-void

    .line 308
    :cond_0
    const-string/jumbo v3, "inch"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 309
    move-object v3, v1

    const/4 v4, 0x1

    iput v4, v3, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:I

    goto :goto_0

    .line 312
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
.end method

.method static synthetic wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)Z
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:Z

    move v0, v1

    return v0
.end method


# virtual methods
.method public AboveRange()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the detected distance has gone above the range."
    .end annotation

    .prologue
    .line 249
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "AboveRange"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 250
    return-void
.end method

.method public AboveRangeEventEnabled(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 241
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->PW8gZZwgOCTWcD2kHUmkv6AgL0mFh4d5ZW9zStIiy43FwfJpRxeUshErA0Pq6Vc5:Z

    .line 242
    return-void
.end method

.method public AboveRangeEventEnabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the AboveRange event should fire when the distance goes above the TopOfRange."
    .end annotation

    .prologue
    .line 230
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->PW8gZZwgOCTWcD2kHUmkv6AgL0mFh4d5ZW9zStIiy43FwfJpRxeUshErA0Pq6Vc5:Z

    move v0, v1

    return v0
.end method

.method public BelowRange()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the detected distance has gone below the range."
    .end annotation

    .prologue
    .line 189
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "BelowRange"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 190
    return-void
.end method

.method public BelowRangeEventEnabled(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 181
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Z

    .line 182
    return-void
.end method

.method public BelowRangeEventEnabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the BelowRange event should fire when the distance goes below the BottomOfRange."
    .end annotation

    .prologue
    .line 170
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Z

    move v0, v1

    return v0
.end method

.method public BottomOfRange()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The bottom of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:I

    move v0, v1

    return v0
.end method

.method public BottomOfRange(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "30"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 137
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:I

    .line 138
    return-void
.end method

.method public GetDistance()D
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the current distance in centimeters as a value between 0 and 254, or -1 if the distance can not be read."
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    const-string/jumbo v2, "GetDistance"

    move-object v1, v2

    .line 110
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;)D

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public SetCmUnit()V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Measure the distance in centimeters."
    .end annotation

    .prologue
    .line 281
    move-object v0, p0

    const-string/jumbo v2, "SetCmUnit"

    move-object v1, v2

    .line 283
    move-object v2, v0

    :try_start_0
    const-string/jumbo v3, "cm"

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .line 287
    :goto_0
    return-void

    .line 285
    :catch_0
    move-exception v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    move-object v4, v1

    const/16 v5, 0xc1f

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 287
    goto :goto_0
.end method

.method public SetInchUnit()V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Measure the distance in inches."
    .end annotation

    .prologue
    .line 294
    move-object v0, p0

    const-string/jumbo v2, "SetInchUnit"

    move-object v1, v2

    .line 296
    move-object v2, v0

    :try_start_0
    const-string/jumbo v3, "inch"

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    .line 300
    :goto_0
    return-void

    .line 298
    :catch_0
    move-exception v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    move-object v4, v1

    const/16 v5, 0xc1f

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 300
    goto :goto_0
.end method

.method public TopOfRange()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The top of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .prologue
    .line 148
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:I

    move v0, v1

    return v0
.end method

.method public TopOfRange(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "90"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 159
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:I

    .line 160
    return-void
.end method

.method public Unit()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The distance unit, which can be either \"cm\" or \"inch\"."
    .end annotation

    .prologue
    .line 273
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public Unit(Ljava/lang/String;)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "cm"
        editorType = "lego_ev3_ultrasonic_sensor_mode"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 259
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v3, "Unit"

    move-object v2, v3

    .line 261
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .line 265
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    move-object v5, v2

    const/16 v6, 0xc1f

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v2

    aput-object v10, v8, v9

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 265
    goto :goto_0
.end method

.method public WithinRange()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the detected distance has gone within the range."
    .end annotation

    .prologue
    .line 219
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "WithinRange"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 220
    return-void
.end method

.method public WithinRangeEventEnabled(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 211
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:Z

    .line 212
    return-void
.end method

.method public WithinRangeEventEnabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the WithinRange event should fire when the distance goes between the BottomOfRange and the TopOfRange."
    .end annotation

    .prologue
    .line 200
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:Z

    move v0, v1

    return v0
.end method

.method public onDelete()V
    .locals 3

    .prologue
    .line 320
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/os/Handler;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 321
    move-object v1, v0

    invoke-super {v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->onDelete()V

    .line 322
    return-void
.end method
