.class public interface abstract Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/LocationSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LocationSensorListener"
.end annotation


# virtual methods
.method public abstract onDistanceIntervalChanged(I)V
.end method

.method public abstract onTimeIntervalChanged(I)V
.end method

.method public abstract setSource(Lcom/google/appinventor/components/runtime/LocationSensor;)V
.end method
