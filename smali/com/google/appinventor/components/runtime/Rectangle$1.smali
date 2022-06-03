.class final Lcom/google/appinventor/components/runtime/Rectangle$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Rectangle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 2072
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

    .line 2073
    move-object v4, v2

    move-object v5, v3

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Lcom/google/appinventor/components/runtime/Rectangle;

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object v1, v4

    :goto_0
    return-object v1

    .line 2075
    :cond_0
    move-object v4, v2

    move-object v5, v3

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Lcom/google/appinventor/components/runtime/Rectangle;

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 42
    move-object v1, v4

    goto :goto_0
.end method

.method public final synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 4054
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

    .line 4055
    move-object v4, v2

    move-object v5, v3

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Lcom/google/appinventor/components/runtime/Rectangle;

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object v1, v4

    :goto_0
    return-object v1

    .line 4057
    :cond_0
    move-object v4, v2

    move-object v5, v3

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Lcom/google/appinventor/components/runtime/Rectangle;

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 42
    move-object v1, v4

    goto :goto_0
.end method

.method public final synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 5045
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

    .line 5046
    move-object v4, v2

    move-object v5, v3

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Lcom/google/appinventor/components/runtime/Rectangle;

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object v1, v4

    :goto_0
    return-object v1

    .line 5048
    :cond_0
    move-object v4, v2

    move-object v5, v3

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Lcom/google/appinventor/components/runtime/Rectangle;

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 42
    move-object v1, v4

    goto :goto_0
.end method

.method public final synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 3063
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

    .line 3064
    move-object v4, v2

    move-object v5, v3

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Lcom/google/appinventor/components/runtime/Rectangle;

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object v1, v4

    :goto_0
    return-object v1

    .line 3066
    :cond_0
    move-object v4, v2

    move-object v5, v3

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Lcom/google/appinventor/components/runtime/Rectangle;

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 42
    move-object v1, v4

    goto :goto_0
.end method

.method public final synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 1081
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

    .line 1082
    move-object v4, v2

    move-object v5, v3

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Lcom/google/appinventor/components/runtime/Rectangle;

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object v1, v4

    :goto_0
    return-object v1

    .line 1084
    :cond_0
    move-object v4, v2

    move-object v5, v3

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Lcom/google/appinventor/components/runtime/Rectangle;

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 42
    move-object v1, v4

    goto :goto_0
.end method
