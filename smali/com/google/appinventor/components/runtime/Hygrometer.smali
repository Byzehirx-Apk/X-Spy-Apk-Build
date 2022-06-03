.class public Lcom/google/appinventor/components/runtime/Hygrometer;
.super Lcom/google/appinventor/components/runtime/SingleValueSensor;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A sensor component that can measure the relative ambient air humidity. Most Android devices do not have this sensor."
    iconName = "images/hygrometer.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    const/16 v4, 0xc

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/SingleValueSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;I)V

    .line 38
    return-void
.end method


# virtual methods
.method public Humidity()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The relative ambient humidity as a percentage, if the sensor is available and enabled."
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Hygrometer;->getValue()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public HumidityChanged(F)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when a change is detected in the ambient air humidity (expressed as a percentage)."
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "HumidityChanged"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 54
    return-void
.end method

.method protected onValueChanged(F)V
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Hygrometer;->HumidityChanged(F)V

    .line 43
    return-void
.end method
