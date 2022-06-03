.class final Lcom/google/appinventor/components/runtime/MapFeatureBase$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/MapFeatureBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MapFeatureBase;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/MapFeatureBase;)V
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MapFeatureBase$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MapFeatureBase;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 2070
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v3

    const/4 v5, 0x1

    aget-object v4, v4, v5

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2071
    move-object v4, v2

    move-object v5, v3

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Lorg/osmdroid/util/GeoPoint;

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;Lorg/osmdroid/util/GeoPoint;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object v1, v4

    :goto_0
    return-object v1

    .line 2073
    :cond_0
    move-object v4, v2

    move-object v5, v3

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Lorg/osmdroid/util/GeoPoint;

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;Lorg/osmdroid/util/GeoPoint;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 44
    move-object v1, v4

    goto :goto_0
.end method

.method public final synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 4052
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v3

    const/4 v5, 0x1

    aget-object v4, v4, v5

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4053
    move-object v4, v2

    move-object v5, v3

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Lorg/osmdroid/util/GeoPoint;

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lorg/osmdroid/util/GeoPoint;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object v1, v4

    :goto_0
    return-object v1

    .line 4055
    :cond_0
    move-object v4, v2

    move-object v5, v3

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Lorg/osmdroid/util/GeoPoint;

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lorg/osmdroid/util/GeoPoint;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 44
    move-object v1, v4

    goto :goto_0
.end method

.method public final synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 44
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v2

    .line 5047
    move-object v5, v3

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Lorg/osmdroid/util/GeoPoint;

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lorg/osmdroid/util/GeoPoint;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 44
    move-object v1, v4

    return-object v1
.end method

.method public final synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 3061
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v3

    const/4 v5, 0x1

    aget-object v4, v4, v5

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3062
    move-object v4, v2

    move-object v5, v3

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Lorg/osmdroid/util/GeoPoint;

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;Lorg/osmdroid/util/GeoPoint;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object v1, v4

    :goto_0
    return-object v1

    .line 3064
    :cond_0
    move-object v4, v2

    move-object v5, v3

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Lorg/osmdroid/util/GeoPoint;

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;Lorg/osmdroid/util/GeoPoint;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 44
    move-object v1, v4

    goto :goto_0
.end method

.method public final synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 1079
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v3

    const/4 v5, 0x1

    aget-object v4, v4, v5

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1080
    move-object v4, v2

    move-object v5, v3

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Lorg/osmdroid/util/GeoPoint;

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;Lorg/osmdroid/util/GeoPoint;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object v1, v4

    :goto_0
    return-object v1

    .line 1082
    :cond_0
    move-object v4, v2

    move-object v5, v3

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Lorg/osmdroid/util/GeoPoint;

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;Lorg/osmdroid/util/GeoPoint;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 44
    move-object v1, v4

    goto :goto_0
.end method
