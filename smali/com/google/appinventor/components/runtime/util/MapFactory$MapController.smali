.class public interface abstract Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/MapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MapController"
.end annotation


# virtual methods
.method public abstract addEventListener(Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;)V
.end method

.method public abstract addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V
.end method

.method public abstract addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V
.end method

.method public abstract addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
.end method

.method public abstract addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
.end method

.method public abstract addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V
.end method

.method public abstract getBoundingBox()Lorg/osmdroid/util/BoundingBox;
.end method

.method public abstract getLatitude()D
.end method

.method public abstract getLocationListener()Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;
.end method

.method public abstract getLongitude()D
.end method

.method public abstract getMapType()Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;
.end method

.method public abstract getOverlayCount()I
.end method

.method public abstract getRotation()F
.end method

.method public abstract getScaleUnits()Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract getZoom()I
.end method

.method public abstract hideFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
.end method

.method public abstract hideInfobox(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
.end method

.method public abstract isCompassEnabled()Z
.end method

.method public abstract isFeatureCollectionVisible(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureCollection;)Z
.end method

.method public abstract isFeatureVisible(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)Z
.end method

.method public abstract isInfoboxVisible(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)Z
.end method

.method public abstract isPanEnabled()Z
.end method

.method public abstract isRotationEnabled()Z
.end method

.method public abstract isScaleVisible()Z
.end method

.method public abstract isShowUserEnabled()Z
.end method

.method public abstract isZoomControlEnabled()Z
.end method

.method public abstract isZoomEnabled()Z
.end method

.method public abstract panTo(DDID)V
.end method

.method public abstract removeFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
.end method

.method public abstract setBoundingBox(Lorg/osmdroid/util/BoundingBox;)V
.end method

.method public abstract setCenter(DD)V
.end method

.method public abstract setCompassEnabled(Z)V
.end method

.method public abstract setFeatureCollectionVisible(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureCollection;Z)V
.end method

.method public abstract setMapType(Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;)V
.end method

.method public abstract setPanEnabled(Z)V
.end method

.method public abstract setRotation(F)V
.end method

.method public abstract setRotationEnabled(Z)V
.end method

.method public abstract setScaleUnits(Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;)V
.end method

.method public abstract setScaleVisible(Z)V
.end method

.method public abstract setShowUserEnabled(Z)V
.end method

.method public abstract setZoom(I)V
.end method

.method public abstract setZoomControlEnabled(Z)V
.end method

.method public abstract setZoomEnabled(Z)V
.end method

.method public abstract showFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
.end method

.method public abstract showInfobox(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
.end method

.method public abstract updateFeatureDraggable(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
.end method

.method public abstract updateFeatureFill(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V
.end method

.method public abstract updateFeatureHoles(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
.end method

.method public abstract updateFeatureImage(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
.end method

.method public abstract updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V
.end method

.method public abstract updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V
.end method

.method public abstract updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
.end method

.method public abstract updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
.end method

.method public abstract updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V
.end method

.method public abstract updateFeatureSize(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
.end method

.method public abstract updateFeatureStroke(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V
.end method

.method public abstract updateFeatureText(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
.end method
