.class public interface abstract Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/MapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MapLineString"
.end annotation


# virtual methods
.method public abstract Points()Lcom/google/appinventor/components/runtime/util/YailList;
.end method

.method public abstract Points(Lcom/google/appinventor/components/runtime/util/YailList;)V
.end method

.method public abstract getPoints()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation
.end method

.method public abstract updatePoints(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)V"
        }
    .end annotation
.end method
