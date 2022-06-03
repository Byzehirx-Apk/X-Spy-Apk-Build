.class public final Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/MapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MapFeatureType"
.end annotation


# static fields
.field public static final TYPE_CIRCLE:Ljava/lang/String; = "Circle"

.field public static final TYPE_LINESTRING:Ljava/lang/String; = "LineString"

.field public static final TYPE_MARKER:Ljava/lang/String; = "Marker"

.field public static final TYPE_MULTILINESTRING:Ljava/lang/String; = "MultiLineString"

.field public static final TYPE_MULTIPOINT:Ljava/lang/String; = "MultiPoint"

.field public static final TYPE_MULTIPOLYGON:Ljava/lang/String; = "MultiPolygon"

.field public static final TYPE_POINT:Ljava/lang/String; = "Point"

.field public static final TYPE_POLYGON:Ljava/lang/String; = "Polygon"

.field public static final TYPE_RECTANGLE:Ljava/lang/String; = "Rectangle"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 1484
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
