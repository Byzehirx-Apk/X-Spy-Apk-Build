.class public interface abstract Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/MapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MapFeature"
.end annotation


# virtual methods
.method public abstract Click()V
.end method

.method public abstract Description()Ljava/lang/String;
.end method

.method public abstract Description(Ljava/lang/String;)V
.end method

.method public abstract Drag()V
.end method

.method public abstract Draggable(Z)V
.end method

.method public abstract Draggable()Z
.end method

.method public abstract EnableInfobox(Z)V
.end method

.method public abstract EnableInfobox()Z
.end method

.method public abstract HideInfobox()V
.end method

.method public abstract LongClick()V
.end method

.method public abstract ShowInfobox()V
.end method

.method public abstract StartDrag()V
.end method

.method public abstract StopDrag()V
.end method

.method public abstract Title()Ljava/lang/String;
.end method

.method public abstract Title(Ljava/lang/String;)V
.end method

.method public abstract Type()Ljava/lang/String;
.end method

.method public abstract Visible(Z)V
.end method

.method public abstract Visible()Z
.end method

.method public varargs abstract accept(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getCentroid()Lorg/osmdroid/util/GeoPoint;
.end method

.method public abstract getGeometry()Lorg/locationtech/jts/geom/Geometry;
.end method

.method public abstract removeFromMap()V
.end method

.method public abstract setMap(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V
.end method
