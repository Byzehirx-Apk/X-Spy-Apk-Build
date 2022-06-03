.class public interface abstract Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/MapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MapMarker"
.end annotation


# virtual methods
.method public abstract AnchorHorizontal()I
.end method

.method public abstract AnchorHorizontal(I)V
.end method

.method public abstract AnchorVertical()I
.end method

.method public abstract AnchorVertical(I)V
.end method

.method public abstract Height()I
.end method

.method public abstract Height(I)V
.end method

.method public abstract ImageAsset()Ljava/lang/String;
.end method

.method public abstract ImageAsset(Ljava/lang/String;)V
.end method

.method public abstract Latitude()D
.end method

.method public abstract Latitude(D)V
.end method

.method public abstract Longitude()D
.end method

.method public abstract Longitude(D)V
.end method

.method public abstract SetLocation(DD)V
.end method

.method public abstract ShowShadow(Z)V
.end method

.method public abstract ShowShadow()Z
.end method

.method public abstract Width()I
.end method

.method public abstract Width(I)V
.end method

.method public abstract getLocation()Lorg/osmdroid/api/IGeoPoint;
.end method

.method public abstract updateLocation(DD)V
.end method
