.class public interface abstract Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;
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
    name = "MapRectangle"
.end annotation


# virtual methods
.method public abstract Bounds()Lcom/google/appinventor/components/runtime/util/YailList;
.end method

.method public abstract Center()Lcom/google/appinventor/components/runtime/util/YailList;
.end method

.method public abstract EastLongitude()D
.end method

.method public abstract EastLongitude(D)V
.end method

.method public abstract NorthLatitude()D
.end method

.method public abstract NorthLatitude(D)V
.end method

.method public abstract SetCenter(DD)V
.end method

.method public abstract SouthLatitude()D
.end method

.method public abstract SouthLatitude(D)V
.end method

.method public abstract WestLongitude()D
.end method

.method public abstract WestLongitude(D)V
.end method

.method public abstract updateBounds(DDDD)V
.end method
