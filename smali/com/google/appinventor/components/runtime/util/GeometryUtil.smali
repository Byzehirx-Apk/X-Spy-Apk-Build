.class public final Lcom/google/appinventor/components/runtime/util/GeometryUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EARTH_RADIUS:D = 6378137.0

.field public static final ONE_DEG_IN_METERS:D = 111319.49079327358

.field public static final WEB_MERCATOR_SRID:I = 0x10e6

.field private static final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/locationtech/jts/geom/GeometryFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 46
    new-instance v0, Lorg/locationtech/jts/geom/GeometryFactory;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    new-instance v2, Lorg/locationtech/jts/geom/PrecisionModel;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/locationtech/jts/geom/PrecisionModel;-><init>()V

    const/16 v3, 0x10e6

    invoke-direct {v1, v2, v3}, Lorg/locationtech/jts/geom/GeometryFactory;-><init>(Lorg/locationtech/jts/geom/PrecisionModel;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/locationtech/jts/geom/GeometryFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static asYailList(Lorg/osmdroid/api/IGeoPoint;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 7

    .prologue
    .line 81
    move-object v0, p0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x0

    move-object v4, v0

    invoke-interface {v4}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x1

    move-object v4, v0

    invoke-interface {v4}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static bearingTo(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)D
    .locals 4

    .prologue
    .line 400
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/osmdroid/util/GeoPoint;->bearingTo(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public static bearingToCentroid(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D
    .locals 4

    .prologue
    .line 435
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/osmdroid/util/GeoPoint;->bearingTo(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public static bearingToCentroid(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)D
    .locals 4

    .prologue
    .line 423
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/osmdroid/util/GeoPoint;->bearingTo(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public static bearingToCentroid(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)D
    .locals 4

    .prologue
    .line 427
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/osmdroid/util/GeoPoint;->bearingTo(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public static bearingToCentroid(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 4

    .prologue
    .line 431
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/osmdroid/util/GeoPoint;->bearingTo(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public static bearingToEdge(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D
    .locals 4

    .prologue
    .line 419
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/osmdroid/util/GeoPoint;->bearingTo(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public static bearingToEdge(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)D
    .locals 4

    .prologue
    .line 405
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/osmdroid/util/GeoPoint;->bearingTo(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public static bearingToEdge(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)D
    .locals 4

    .prologue
    .line 410
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/osmdroid/util/GeoPoint;->bearingTo(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public static bearingToEdge(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 4

    .prologue
    .line 415
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/osmdroid/util/GeoPoint;->bearingTo(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public static coerceToDouble(Ljava/lang/Object;)D
    .locals 4

    .prologue
    .line 53
    move-object v1, p0

    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_0

    .line 54
    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    move-wide v1, v2

    .line 59
    :goto_0
    return-wide v1

    .line 57
    :cond_0
    move-object v2, v1

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    move-wide v1, v2

    goto :goto_0

    .line 59
    :catch_0
    move-exception v2

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    move-wide v1, v2

    goto :goto_0
.end method

.method public static coerceToPoint(Ljava/lang/Object;Ljava/lang/Object;)Lorg/osmdroid/util/GeoPoint;
    .locals 13

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->coerceToDouble(Ljava/lang/Object;)D

    move-result-wide v6

    move-wide v2, v6

    .line 66
    move-object v6, v1

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->coerceToDouble(Ljava/lang/Object;)D

    move-result-wide v6

    move-wide v4, v6

    .line 67
    move-wide v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 68
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string/jumbo v8, "Latitude must be a numeric."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 69
    :cond_0
    move-wide v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 70
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string/jumbo v8, "Longitude must be a numeric."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 71
    :cond_1
    move-wide v6, v2

    const-wide v8, -0x3fa9800000000000L    # -90.0

    cmpg-double v6, v6, v8

    if-ltz v6, :cond_2

    move-wide v6, v2

    const-wide v8, 0x4056800000000000L    # 90.0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_3

    .line 72
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string/jumbo v8, "Latitude must be between -90 and 90."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 73
    :cond_3
    move-wide v6, v4

    const-wide v8, -0x3f99800000000000L    # -180.0

    cmpg-double v6, v6, v8

    if-ltz v6, :cond_4

    move-wide v6, v4

    const-wide v8, 0x4066800000000000L    # 180.0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_5

    .line 74
    :cond_4
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string/jumbo v8, "Longitude must be between -180 and 180."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 76
    :cond_5
    new-instance v6, Lorg/osmdroid/util/GeoPoint;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-wide v8, v2

    move-wide v10, v4

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object v0, v6

    return-object v0
.end method

.method public static createGeometry(DDDD)Lorg/locationtech/jts/geom/Geometry;
    .locals 20

    .prologue
    .line 129
    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    sget-object v8, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/locationtech/jts/geom/GeometryFactory;

    const/4 v9, 0x5

    new-array v9, v9, [Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    const/4 v11, 0x0

    new-instance v12, Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-wide v14, v2

    move-wide/from16 v16, v0

    invoke-direct/range {v13 .. v17}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    aput-object v12, v10, v11

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    const/4 v11, 0x1

    new-instance v12, Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-wide v14, v2

    move-wide/from16 v16, v4

    invoke-direct/range {v13 .. v17}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    aput-object v12, v10, v11

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    const/4 v11, 0x2

    new-instance v12, Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-wide v14, v6

    move-wide/from16 v16, v4

    invoke-direct/range {v13 .. v17}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    aput-object v12, v10, v11

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    const/4 v11, 0x3

    new-instance v12, Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-wide v14, v6

    move-wide/from16 v16, v0

    invoke-direct/range {v13 .. v17}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    aput-object v12, v10, v11

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    const/4 v11, 0x4

    new-instance v12, Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-wide v14, v2

    move-wide/from16 v16, v0

    invoke-direct/range {v13 .. v17}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    aput-object v12, v10, v11

    invoke-virtual {v8, v9}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v8

    move-object v0, v8

    return-object v0
.end method

.method public static createGeometry(Ljava/util/List;)Lorg/locationtech/jts/geom/Geometry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)",
            "Lorg/locationtech/jts/geom/Geometry;"
        }
    .end annotation

    .prologue
    .line 125
    move-object v0, p0

    sget-object v1, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/locationtech/jts/geom/GeometryFactory;

    move-object v2, v0

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointsToCoordinates(Ljava/util/List;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static createGeometry(Ljava/util/List;Ljava/util/List;)Lorg/locationtech/jts/geom/Geometry;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;>;)",
            "Lorg/locationtech/jts/geom/Geometry;"
        }
    .end annotation

    .prologue
    .line 139
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    if-nez v4, :cond_0

    .line 140
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "points must not be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 142
    :cond_0
    move-object v4, v1

    if-eqz v4, :cond_1

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 143
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "holes must either be null or the same length as points."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 145
    :cond_1
    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lorg/locationtech/jts/geom/Polygon;

    move-object v2, v4

    .line 146
    const/4 v4, 0x0

    move v3, v4

    .line 147
    move-object v4, v1

    if-eqz v4, :cond_2

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 148
    :cond_2
    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v0, v4

    :goto_0
    move-object v4, v0

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move-object v1, v4

    .line 149
    move-object v4, v2

    move v5, v3

    add-int/lit8 v3, v3, 0x1

    move-object v6, v1

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->ringToPolygon(Ljava/util/List;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v6

    aput-object v6, v4, v5

    .line 150
    goto :goto_0

    .line 158
    :cond_3
    move-object v4, v2

    array-length v4, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    move-object v4, v2

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v0, v4

    :goto_1
    return-object v0

    .line 152
    :cond_4
    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v0, v4

    .line 153
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v4

    .line 154
    :goto_2
    move-object v4, v0

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 155
    move-object v4, v2

    move v5, v3

    add-int/lit8 v3, v3, 0x1

    move-object v6, v0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    move-object v7, v1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->ringToPolygon(Ljava/util/List;Ljava/util/List;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v6

    aput-object v6, v4, v5

    goto :goto_2

    .line 158
    :cond_5
    sget-object v4, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/locationtech/jts/geom/GeometryFactory;

    move-object v5, v2

    invoke-virtual {v4, v5}, Lorg/locationtech/jts/geom/GeometryFactory;->createMultiPolygon([Lorg/locationtech/jts/geom/Polygon;)Lorg/locationtech/jts/geom/MultiPolygon;

    move-result-object v4

    move-object v0, v4

    goto :goto_1
.end method

.method public static createGeometry(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Geometry;
    .locals 3

    .prologue
    .line 121
    move-object v0, p0

    sget-object v1, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/locationtech/jts/geom/GeometryFactory;

    move-object v2, v0

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->geoPointToCoordinate(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->createPoint(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Point;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static distanceBetween(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)D
    .locals 4

    .prologue
    .line 246
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getLocation()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getLocation()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public static distanceBetween(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lorg/osmdroid/util/GeoPoint;)D
    .locals 4

    .prologue
    .line 242
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getLocation()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public static distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D
    .locals 24

    .prologue
    .line 230
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    move-wide/from16 v2, v16

    .line 231
    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    move-wide/from16 v4, v16

    .line 232
    move-object/from16 v16, v1

    invoke-interface/range {v16 .. v16}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    move-wide/from16 v6, v16

    .line 233
    move-object/from16 v16, v1

    invoke-interface/range {v16 .. v16}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    move-wide/from16 v8, v16

    .line 234
    move-wide/from16 v16, v6

    move-wide/from16 v18, v2

    sub-double v16, v16, v18

    move-wide/from16 v10, v16

    .line 235
    move-wide/from16 v16, v8

    move-wide/from16 v18, v4

    sub-double v16, v16, v18

    move-wide/from16 v12, v16

    .line 236
    move-wide/from16 v16, v10

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    move-wide/from16 v18, v2

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    move-wide/from16 v20, v6

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    move-wide/from16 v20, v12

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-wide/from16 v14, v16

    .line 237
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    move-wide/from16 v18, v14

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v22, v14

    sub-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    mul-double v16, v16, v18

    .line 238
    const-wide v18, 0x415854a640000000L    # 6378137.0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D
    .locals 4

    .prologue
    .line 384
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 4

    .prologue
    .line 388
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;Lorg/osmdroid/util/GeoPoint;)D
    .locals 4

    .prologue
    .line 380
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D
    .locals 4

    .prologue
    .line 356
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)D
    .locals 4

    .prologue
    .line 348
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)D
    .locals 4

    .prologue
    .line 352
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 4

    .prologue
    .line 360
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lorg/osmdroid/util/GeoPoint;)D
    .locals 4

    .prologue
    .line 344
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D
    .locals 4

    .prologue
    .line 336
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)D
    .locals 4

    .prologue
    .line 328
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)D
    .locals 4

    .prologue
    .line 332
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 4

    .prologue
    .line 340
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D
    .locals 4

    .prologue
    .line 372
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)D
    .locals 4

    .prologue
    .line 368
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 4

    .prologue
    .line 376
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;Lorg/osmdroid/util/GeoPoint;)D
    .locals 4

    .prologue
    .line 364
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 4

    .prologue
    .line 396
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;Lorg/osmdroid/util/GeoPoint;)D
    .locals 4

    .prologue
    .line 392
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D
    .locals 10

    .prologue
    .line 310
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v4

    move-object v6, v0

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Radius()D

    move-result-wide v6

    sub-double/2addr v4, v6

    move-object v6, v1

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Radius()D

    move-result-wide v6

    sub-double/2addr v4, v6

    move-wide v8, v4

    move-wide v4, v8

    move-wide v6, v8

    .line 311
    move-wide v2, v6

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    const-wide/16 v4, 0x0

    move-wide v0, v4

    :goto_0
    return-wide v0

    :cond_0
    move-wide v4, v2

    move-wide v0, v4

    goto :goto_0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 10

    .prologue
    .line 315
    move-object v0, p0

    move-object v1, p1

    const-wide v4, 0x40fb2d77da4a0c32L    # 111319.49079327358

    move-object v6, v1

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v6

    move-object v7, v0

    invoke-interface {v7}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v7

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v6

    mul-double/2addr v4, v6

    move-object v6, v0

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Radius()D

    move-result-wide v6

    sub-double/2addr v4, v6

    move-wide v8, v4

    move-wide v4, v8

    move-wide v6, v8

    .line 316
    move-wide v2, v6

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    const-wide/16 v4, 0x0

    move-wide v0, v4

    :goto_0
    return-wide v0

    :cond_0
    move-wide v4, v2

    move-wide v0, v4

    goto :goto_0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;Lorg/osmdroid/util/GeoPoint;)D
    .locals 10

    .prologue
    .line 305
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v4

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v4

    move-object v6, v0

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Radius()D

    move-result-wide v6

    sub-double/2addr v4, v6

    move-wide v8, v4

    move-wide v4, v8

    move-wide v6, v8

    .line 306
    move-wide v2, v6

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    const-wide/16 v4, 0x0

    move-wide v0, v4

    :goto_0
    return-wide v0

    :cond_0
    move-wide v4, v2

    move-wide v0, v4

    goto :goto_0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D
    .locals 10

    .prologue
    .line 279
    move-object v0, p0

    move-object v1, p1

    const-wide v4, 0x40fb2d77da4a0c32L    # 111319.49079327358

    move-object v6, v0

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v6

    move-object v7, v1

    invoke-interface {v7}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v7

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v6

    mul-double/2addr v4, v6

    move-object v6, v1

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Radius()D

    move-result-wide v6

    sub-double/2addr v4, v6

    move-wide v8, v4

    move-wide v4, v8

    move-wide v6, v8

    .line 280
    move-wide v2, v6

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    const-wide/16 v4, 0x0

    move-wide v0, v4

    :goto_0
    return-wide v0

    :cond_0
    move-wide v4, v2

    move-wide v0, v4

    goto :goto_0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)D
    .locals 6

    .prologue
    .line 271
    move-object v0, p0

    move-object v1, p1

    const-wide v2, 0x40fb2d77da4a0c32L    # 111319.49079327358

    move-object v4, v0

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    move-wide v0, v2

    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)D
    .locals 6

    .prologue
    .line 275
    move-object v0, p0

    move-object v1, p1

    const-wide v2, 0x40fb2d77da4a0c32L    # 111319.49079327358

    move-object v4, v0

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    move-wide v0, v2

    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 6

    .prologue
    .line 284
    move-object v0, p0

    move-object v1, p1

    const-wide v2, 0x40fb2d77da4a0c32L    # 111319.49079327358

    move-object v4, v0

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    move-wide v0, v2

    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lorg/osmdroid/util/GeoPoint;)D
    .locals 6

    .prologue
    .line 267
    move-object v0, p0

    move-object v1, p1

    const-wide v2, 0x40fb2d77da4a0c32L    # 111319.49079327358

    move-object v4, v0

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v4

    move-object v5, v1

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    move-wide v0, v2

    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D
    .locals 10

    .prologue
    .line 258
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/osmdroid/util/GeoPoint;->distanceTo(Lorg/osmdroid/api/IGeoPoint;)I

    move-result v4

    int-to-double v4, v4

    move-object v6, v1

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Radius()D

    move-result-wide v6

    sub-double/2addr v4, v6

    move-wide v8, v4

    move-wide v4, v8

    move-wide v6, v8

    .line 259
    move-wide v2, v6

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    const-wide/16 v4, 0x0

    move-wide v0, v4

    :goto_0
    return-wide v0

    :cond_0
    move-wide v4, v2

    move-wide v0, v4

    goto :goto_0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)D
    .locals 6

    .prologue
    .line 250
    move-object v0, p0

    move-object v1, p1

    const-wide v2, 0x40fb2d77da4a0c32L    # 111319.49079327358

    move-object v4, v0

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    move-wide v0, v2

    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)D
    .locals 6

    .prologue
    .line 254
    move-object v0, p0

    move-object v1, p1

    const-wide v2, 0x40fb2d77da4a0c32L    # 111319.49079327358

    move-object v4, v0

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    move-wide v0, v2

    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 6

    .prologue
    .line 263
    move-object v0, p0

    move-object v1, p1

    const-wide v2, 0x40fb2d77da4a0c32L    # 111319.49079327358

    move-object v4, v0

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    move-wide v0, v2

    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D
    .locals 10

    .prologue
    .line 296
    move-object v0, p0

    move-object v1, p1

    const-wide v4, 0x40fb2d77da4a0c32L    # 111319.49079327358

    move-object v6, v0

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v6

    move-object v7, v1

    invoke-interface {v7}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v7

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v6

    mul-double/2addr v4, v6

    move-object v6, v1

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Radius()D

    move-result-wide v6

    sub-double/2addr v4, v6

    move-wide v8, v4

    move-wide v4, v8

    move-wide v6, v8

    .line 297
    move-wide v2, v6

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    const-wide/16 v4, 0x0

    move-wide v0, v4

    :goto_0
    return-wide v0

    :cond_0
    move-wide v4, v2

    move-wide v0, v4

    goto :goto_0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)D
    .locals 6

    .prologue
    .line 292
    move-object v0, p0

    move-object v1, p1

    const-wide v2, 0x40fb2d77da4a0c32L    # 111319.49079327358

    move-object v4, v0

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    move-wide v0, v2

    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 6

    .prologue
    .line 301
    move-object v0, p0

    move-object v1, p1

    const-wide v2, 0x40fb2d77da4a0c32L    # 111319.49079327358

    move-object v4, v0

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    move-wide v0, v2

    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;Lorg/osmdroid/util/GeoPoint;)D
    .locals 6

    .prologue
    .line 288
    move-object v0, p0

    move-object v1, p1

    const-wide v2, 0x40fb2d77da4a0c32L    # 111319.49079327358

    move-object v4, v0

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v4

    move-object v5, v1

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    move-wide v0, v2

    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 6

    .prologue
    .line 324
    move-object v0, p0

    move-object v1, p1

    const-wide v2, 0x40fb2d77da4a0c32L    # 111319.49079327358

    move-object v4, v0

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    move-wide v0, v2

    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;Lorg/osmdroid/util/GeoPoint;)D
    .locals 6

    .prologue
    .line 320
    move-object v0, p0

    move-object v1, p1

    const-wide v2, 0x40fb2d77da4a0c32L    # 111319.49079327358

    move-object v4, v0

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v4

    move-object v5, v1

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    move-wide v0, v2

    return-wide v0
.end method

.method public static geoPointToCoordinate(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 9

    .prologue
    .line 226
    move-object v1, p0

    new-instance v2, Lorg/locationtech/jts/geom/Coordinate;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v1

    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    move-object v1, v2

    return-object v1
.end method

.method public static geoPointsToLinearRing(Ljava/util/List;)Lorg/locationtech/jts/geom/LinearRing;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)",
            "Lorg/locationtech/jts/geom/LinearRing;"
        }
    .end annotation

    .prologue
    .line 208
    move-object v0, p0

    sget-object v1, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/locationtech/jts/geom/GeometryFactory;

    move-object v2, v0

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointsToCoordinates(Ljava/util/List;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->createLinearRing([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getCentroid(Ljava/util/List;Ljava/util/List;)Lorg/osmdroid/util/GeoPoint;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;>;)",
            "Lorg/osmdroid/util/GeoPoint;"
        }
    .end annotation

    .prologue
    .line 187
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(Ljava/util/List;Ljava/util/List;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Geometry;->getCentroid()Lorg/locationtech/jts/geom/Point;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->jtsPointToGeoPoint(Lorg/locationtech/jts/geom/Point;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static getMidpoint(Ljava/util/List;)Lorg/osmdroid/util/GeoPoint;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)",
            "Lorg/osmdroid/util/GeoPoint;"
        }
    .end annotation

    .prologue
    .line 162
    move-object v1, p0

    move-object v2, v1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    new-instance v2, Lorg/osmdroid/util/GeoPoint;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object v1, v2

    .line 169
    :goto_0
    return-object v1

    .line 165
    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 166
    new-instance v2, Lorg/osmdroid/util/GeoPoint;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v1

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v3, v4}, Lorg/osmdroid/util/GeoPoint;-><init>(Lorg/osmdroid/util/GeoPoint;)V

    move-object v1, v2

    goto :goto_0

    .line 168
    :cond_1
    sget-object v2, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/locationtech/jts/geom/GeometryFactory;

    move-object v3, v1

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointsToCoordinates(Ljava/util/List;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v2

    .line 169
    invoke-virtual {v2}, Lorg/locationtech/jts/geom/LineString;->getCentroid()Lorg/locationtech/jts/geom/Point;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->jtsPointToGeoPoint(Lorg/locationtech/jts/geom/Point;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    move-object v1, v2

    goto :goto_0
.end method

.method public static isMultiPolygon(Lcom/google/appinventor/components/runtime/util/YailList;)Z
    .locals 4

    .prologue
    .line 567
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v1

    if-lez v1, :cond_0

    move-object v1, v0

    const/4 v2, 0x1

    .line 568
    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-class v2, Lcom/google/appinventor/components/runtime/util/YailList;

    const-string/jumbo v3, "list"

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TypeUtil;->castNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isPolygon(Lcom/google/appinventor/components/runtime/util/YailList;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    .line 567
    move v0, v1

    goto :goto_0
.end method

.method public static isPolygon(Lcom/google/appinventor/components/runtime/util/YailList;)Z
    .locals 4

    .prologue
    .line 546
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 547
    const/4 v1, 0x0

    move v0, v1

    .line 553
    :goto_0
    return v0

    .line 550
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-class v2, Lcom/google/appinventor/components/runtime/util/YailList;

    const-string/jumbo v3, "list"

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TypeUtil;->castNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Lorg/osmdroid/util/GeoPoint;
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 551
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 553
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static isValidLatitude(D)Z
    .locals 6

    .prologue
    .line 445
    move-wide v0, p0

    const-wide v2, -0x3fa9800000000000L    # -90.0

    move-wide v4, v0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_0

    move-wide v2, v0

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public static isValidLongitude(D)Z
    .locals 6

    .prologue
    .line 455
    move-wide v0, p0

    const-wide v2, -0x3f99800000000000L    # -180.0

    move-wide v4, v0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_0

    move-wide v2, v0

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public static jtsPointToGeoPoint(Lorg/locationtech/jts/geom/Point;)Lorg/osmdroid/util/GeoPoint;
    .locals 9

    .prologue
    .line 222
    move-object v1, p0

    new-instance v2, Lorg/osmdroid/util/GeoPoint;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v1

    invoke-virtual {v4}, Lorg/locationtech/jts/geom/Point;->getY()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Lorg/locationtech/jts/geom/Point;->getX()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object v1, v2

    return-object v1
.end method

.method public static multiPolygonFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 501
    move-object v0, p0

    new-instance v2, Ljava/util/ArrayList;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 502
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    move-object v0, v2

    .line 503
    :goto_0
    move-object v2, v0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 504
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const-class v4, Lcom/google/appinventor/components/runtime/util/YailList;

    const-string/jumbo v5, "list"

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/TypeUtil;->castNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointsFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 506
    :cond_0
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public static multiPolygonHolesFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 510
    move-object v0, p0

    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    .line 511
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    move-object v0, v4

    .line 512
    const/4 v4, 0x1

    move v2, v4

    .line 514
    :goto_0
    move-object v4, v0

    :try_start_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 515
    move-object v4, v0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    const-class v5, Lcom/google/appinventor/components/runtime/util/YailList;

    const-string/jumbo v6, "list"

    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/TypeUtil;->castNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v3, v4

    .line 516
    move-object v4, v1

    move-object v5, v3

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->multiPolygonFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 517
    add-int/lit8 v2, v2, 0x1

    .line 518
    goto :goto_0

    .line 521
    .line 522
    :cond_0
    move-object v4, v1

    move-object v0, v4

    return-object v0

    .line 519
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 520
    move v4, v2

    move-object v5, v3

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/errors/IterationError;->fromError(ILcom/google/appinventor/components/runtime/errors/DispatchableError;)Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    move-result-object v4

    throw v4
.end method

.method public static multiPolygonHolesToList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 526
    move-object v0, p0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v3

    .line 527
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    if-nez v3, :cond_1

    .line 528
    move-object v3, v1

    move-object v4, v0

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->multiPolygonToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 534
    :cond_0
    move-object v3, v1

    move-object v0, v3

    return-object v0

    .line 530
    :cond_1
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 531
    move-object v3, v1

    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->multiPolygonToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 530
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static multiPolygonToList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 479
    move-object v0, p0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v3

    .line 480
    move-object v3, v0

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 481
    move-object v3, v1

    move-object v0, v3

    .line 489
    :goto_0
    return-object v0

    .line 482
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    if-nez v3, :cond_2

    .line 483
    move-object v3, v1

    move-object v4, v0

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->polygonToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 489
    :cond_1
    move-object v3, v1

    move-object v0, v3

    goto :goto_0

    .line 485
    :cond_2
    const/4 v3, 0x0

    move v2, v3

    :goto_1
    move v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 486
    move-object v3, v1

    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->polygonToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 485
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static multiPolygonToYailList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;)",
            "Lcom/google/appinventor/components/runtime/util/YailList;"
        }
    .end annotation

    .prologue
    .line 493
    move-object v0, p0

    new-instance v3, Ljava/util/LinkedList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    move-object v1, v3

    .line 494
    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v0, v3

    :goto_0
    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object v2, v3

    .line 495
    move-object v3, v1

    move-object v4, v2

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointsListToYailList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 496
    goto :goto_0

    .line 497
    :cond_0
    move-object v3, v1

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public static pointFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Lorg/osmdroid/util/GeoPoint;
    .locals 10

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 94
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    move-object v9, v1

    move-object v1, v9

    move-object v2, v9

    const/16 v3, 0xd51

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x0

    const/4 v7, 0x2

    .line 95
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x1

    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/util/YailList;->length()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw v1

    .line 98
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v0

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->coerceToPoint(Ljava/lang/Object;Ljava/lang/Object;)Lorg/osmdroid/util/GeoPoint;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v0, v1

    return-object v0

    .line 100
    :catch_0
    move-exception v1

    new-instance v1, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    move-object v9, v1

    move-object v1, v9

    move-object v2, v9

    const/16 v3, 0xd4d

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x0

    move-object v7, v0

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x1

    move-object v7, v0

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw v1
.end method

.method public static pointsFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    move-object v0, p0

    new-instance v3, Ljava/util/ArrayList;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v3

    .line 106
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v0, v3

    .line 107
    const/4 v3, 0x1

    move v2, v3

    .line 108
    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 109
    :goto_0
    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    move-object v3, v1

    move-object v4, v0

    :try_start_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    const-class v5, Lcom/google/appinventor/components/runtime/util/YailList;

    const-string/jumbo v6, "list"

    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/TypeUtil;->castNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 112
    add-int/lit8 v2, v2, 0x1

    .line 115
    goto :goto_0

    .line 113
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 114
    move v3, v2

    move-object v4, v0

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/errors/IterationError;->fromError(ILcom/google/appinventor/components/runtime/errors/DispatchableError;)Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    move-result-object v3

    throw v3

    .line 117
    :cond_0
    move-object v3, v1

    move-object v0, v3

    return-object v0
.end method

.method public static pointsListToYailList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/osmdroid/api/IGeoPoint;",
            ">;)",
            "Lcom/google/appinventor/components/runtime/util/YailList;"
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v3

    .line 86
    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v0, v3

    :goto_0
    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/api/IGeoPoint;

    move-object v2, v3

    .line 87
    move-object v3, v1

    move-object v4, v2

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->asYailList(Lorg/osmdroid/api/IGeoPoint;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 88
    goto :goto_0

    .line 89
    :cond_0
    move-object v3, v1

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public static pointsToCoordinates(Ljava/util/List;)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)[",
            "Lorg/locationtech/jts/geom/Coordinate;"
        }
    .end annotation

    .prologue
    .line 195
    move-object v0, p0

    move-object v5, v0

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/osmdroid/util/GeoPoint;

    move-object v6, v0

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/osmdroid/util/GeoPoint;->equals(Ljava/lang/Object;)Z

    move-result v5

    move v1, v5

    .line 196
    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v6, v1

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    :goto_0
    add-int/2addr v5, v6

    new-array v5, v5, [Lorg/locationtech/jts/geom/Coordinate;

    move-object v2, v5

    .line 197
    const/4 v5, 0x0

    move v3, v5

    .line 198
    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v0, v5

    :goto_1
    move-object v5, v0

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/osmdroid/util/GeoPoint;

    move-object v4, v5

    .line 199
    move-object v5, v2

    move v6, v3

    add-int/lit8 v3, v3, 0x1

    move-object v7, v4

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->geoPointToCoordinate(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v7

    aput-object v7, v5, v6

    .line 200
    goto :goto_1

    .line 196
    :cond_0
    const/4 v6, 0x1

    goto :goto_0

    .line 201
    :cond_1
    move v5, v1

    if-nez v5, :cond_2

    .line 202
    move-object v5, v2

    move v6, v3

    move-object v7, v2

    const/4 v8, 0x0

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    .line 204
    :cond_2
    move-object v5, v2

    move-object v0, v5

    return-object v0
.end method

.method public static polygonToList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 459
    move-object v1, p0

    new-instance v5, Ljava/util/ArrayList;

    move-object v14, v5

    move-object v5, v14

    move-object v6, v14

    move-object v7, v1

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v5

    .line 460
    move-object v5, v1

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_0

    .line 461
    new-instance v5, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    move-object v14, v5

    move-object v5, v14

    move-object v6, v14

    const/16 v7, 0xd4c

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, 0x0

    const-string/jumbo v11, "Too few points in Polygon, expected 3."

    aput-object v11, v9, v10

    invoke-direct {v6, v7, v8}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw v5

    .line 464
    :cond_0
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v1

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 465
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v5

    move-object v14, v5

    move-object v5, v14

    move-object v6, v14

    .line 466
    move-object v4, v6

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    .line 467
    new-instance v5, Lorg/json/JSONException;

    move-object v14, v5

    move-object v5, v14

    move-object v6, v14

    const-string/jumbo v7, "Invalid number of dimensions in polygon, expected 2."

    invoke-direct {v6, v7}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 469
    :cond_1
    move-object v5, v4

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 470
    move-object v5, v2

    new-instance v6, Lorg/osmdroid/util/GeoPoint;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v4

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    move-object v10, v4

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 464
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 472
    :cond_2
    move-object v5, v2

    new-instance v6, Lorg/osmdroid/util/GeoPoint;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v4

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    move-object v10, v4

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v10

    move-object v12, v4

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v12

    invoke-direct/range {v7 .. v13}, Lorg/osmdroid/util/GeoPoint;-><init>(DDD)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1

    .line 475
    :cond_3
    move-object v5, v2

    move-object v1, v5

    return-object v1
.end method

.method public static ringToPolygon(Ljava/util/List;)Lorg/locationtech/jts/geom/Polygon;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)",
            "Lorg/locationtech/jts/geom/Polygon;"
        }
    .end annotation

    .prologue
    .line 191
    move-object v0, p0

    sget-object v1, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/locationtech/jts/geom/GeometryFactory;

    move-object v2, v0

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->geoPointsToLinearRing(Ljava/util/List;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon(Lorg/locationtech/jts/geom/LinearRing;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static ringToPolygon(Ljava/util/List;Ljava/util/List;)Lorg/locationtech/jts/geom/Polygon;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;)",
            "Lorg/locationtech/jts/geom/Polygon;"
        }
    .end annotation

    .prologue
    .line 212
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->geoPointsToLinearRing(Ljava/util/List;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v5

    move-object v0, v5

    .line 213
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lorg/locationtech/jts/geom/LinearRing;

    move-object v2, v5

    .line 214
    const/4 v5, 0x0

    move v3, v5

    .line 215
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v5

    :goto_0
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    move-object v4, v5

    .line 216
    move-object v5, v2

    move v6, v3

    add-int/lit8 v3, v3, 0x1

    move-object v7, v4

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->geoPointsToLinearRing(Ljava/util/List;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v7

    aput-object v7, v5, v6

    .line 217
    goto :goto_0

    .line 218
    :cond_0
    sget-object v5, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/locationtech/jts/geom/GeometryFactory;

    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon(Lorg/locationtech/jts/geom/LinearRing;[Lorg/locationtech/jts/geom/LinearRing;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method
