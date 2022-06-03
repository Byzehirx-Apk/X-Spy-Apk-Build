.class public Lcom/google/appinventor/components/runtime/Marker;
.super Lcom/google/appinventor/components/runtime/MapFeatureBaseWithFill;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MAPS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>An icon positioned at a point to indicate information on a map. Markers can be used to provide an info window, custom fill and stroke colors, and custom images to convey information to the user.</p>"
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "osmdroid.aar",
        "androidsvg.jar"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private AjvYp2jprm0xITJdrrGGtoOyEc1YvelLDxRNqR8p3eG4UJR1UusSlSmznC0GO8Nd:I

.field private DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:I

.field private IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:I

.field private imagePath:Ljava/lang/String;

.field private jKPsNUTq382ltO4Ct4VOTi9lUb0GK32zS6afcWmZUk1wuONzG2KH4rBMniXwxrgH:I

.field private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lorg/osmdroid/util/GeoPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const-class v0, Lcom/google/appinventor/components/runtime/Marker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/Marker;->TAG:Ljava/lang/String;

    .line 82
    new-instance v0, Lcom/google/appinventor/components/runtime/Marker$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/Marker$1;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/Marker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    .line 125
    new-instance v0, Lcom/google/appinventor/components/runtime/Marker$2;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/Marker$2;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/Marker;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V
    .locals 11

    .prologue
    .line 175
    move-object v1, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, v2

    sget-object v5, Lcom/google/appinventor/components/runtime/Marker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/MapFeatureBaseWithFill;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;)V

    .line 53
    move-object v3, v1

    const-string/jumbo v4, ""

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Marker;->imagePath:Ljava/lang/String;

    .line 59
    move-object v3, v1

    const/4 v4, 0x3

    iput v4, v3, Lcom/google/appinventor/components/runtime/Marker;->jKPsNUTq382ltO4Ct4VOTi9lUb0GK32zS6afcWmZUk1wuONzG2KH4rBMniXwxrgH:I

    .line 65
    move-object v3, v1

    const/4 v4, 0x3

    iput v4, v3, Lcom/google/appinventor/components/runtime/Marker;->AjvYp2jprm0xITJdrrGGtoOyEc1YvelLDxRNqR8p3eG4UJR1UusSlSmznC0GO8Nd:I

    .line 70
    move-object v3, v1

    new-instance v4, Lorg/osmdroid/util/GeoPoint;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Marker;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lorg/osmdroid/util/GeoPoint;

    .line 75
    move-object v3, v1

    const/4 v4, -0x1

    iput v4, v3, Lcom/google/appinventor/components/runtime/Marker;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:I

    .line 80
    move-object v3, v1

    const/4 v4, -0x1

    iput v4, v3, Lcom/google/appinventor/components/runtime/Marker;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:I

    .line 176
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 177
    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Marker;->ShowShadow(Z)V

    .line 178
    move-object v3, v1

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Marker;->AnchorHorizontal(I)V

    .line 179
    move-object v3, v1

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Marker;->AnchorVertical(I)V

    .line 180
    move-object v3, v1

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Marker;->ImageAsset(Ljava/lang/String;)V

    .line 181
    move-object v3, v1

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Marker;->Width(I)V

    .line 182
    move-object v3, v1

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Marker;->Height(I)V

    .line 183
    move-object v3, v1

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/Marker;->Latitude(D)V

    .line 184
    move-object v3, v1

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/Marker;->Longitude(D)V

    .line 185
    return-void
.end method


# virtual methods
.method public AnchorHorizontal()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The horizontal alignment property controls where the Marker\'s anchor is located relative to its width."
    .end annotation

    .prologue
    .line 270
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Marker;->jKPsNUTq382ltO4Ct4VOTi9lUb0GK32zS6afcWmZUk1wuONzG2KH4rBMniXwxrgH:I

    move v0, v1

    return v0
.end method

.method public AnchorHorizontal(I)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "3"
        editorType = "horizontal_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 256
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/Marker;->jKPsNUTq382ltO4Ct4VOTi9lUb0GK32zS6afcWmZUk1wuONzG2KH4rBMniXwxrgH:I

    if-ne v2, v3, :cond_0

    .line 257
    .line 264
    :goto_0
    return-void

    .line 258
    :cond_0
    move v2, v1

    const/4 v3, 0x3

    if-gt v2, v3, :cond_1

    move v2, v1

    if-gtz v2, :cond_2

    .line 259
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Marker;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    move-object v3, v0

    const-string/jumbo v4, "AnchorHorizontal"

    const/16 v5, 0xd59

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 260
    goto :goto_0

    .line 262
    :cond_2
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Marker;->jKPsNUTq382ltO4Ct4VOTi9lUb0GK32zS6afcWmZUk1wuONzG2KH4rBMniXwxrgH:I

    .line 263
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v2

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    .line 264
    goto :goto_0
.end method

.method public AnchorVertical()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The vertical alignment property controls where the Marker\'s anchor is located relative to its height."
    .end annotation

    .prologue
    .line 292
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Marker;->AjvYp2jprm0xITJdrrGGtoOyEc1YvelLDxRNqR8p3eG4UJR1UusSlSmznC0GO8Nd:I

    move v0, v1

    return v0
.end method

.method public AnchorVertical(I)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "3"
        editorType = "vertical_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 278
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/Marker;->AjvYp2jprm0xITJdrrGGtoOyEc1YvelLDxRNqR8p3eG4UJR1UusSlSmznC0GO8Nd:I

    if-ne v2, v3, :cond_0

    .line 279
    .line 286
    :goto_0
    return-void

    .line 280
    :cond_0
    move v2, v1

    const/4 v3, 0x3

    if-gt v2, v3, :cond_1

    move v2, v1

    if-gtz v2, :cond_2

    .line 281
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Marker;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    move-object v3, v0

    const-string/jumbo v4, "AnchorVertical"

    const/16 v5, 0xd58

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 282
    goto :goto_0

    .line 284
    :cond_2
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Marker;->AjvYp2jprm0xITJdrrGGtoOyEc1YvelLDxRNqR8p3eG4UJR1UusSlSmznC0GO8Nd:I

    .line 285
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v2

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    .line 286
    goto :goto_0
.end method

.method public BearingToFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Z)D
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the bearing from the Marker to the given map feature, in degrees from due north. If the centroids parameter is true, the bearing will be to the center of the map feature. Otherwise, the bearing will be computed to the point in the feature nearest the Marker."
    .end annotation

    .prologue
    .line 401
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, v2

    if-nez v4, :cond_0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    move-wide v1, v4

    :goto_0
    return-wide v1

    :cond_0
    move-object v4, v2

    sget-object v5, Lcom/google/appinventor/components/runtime/Marker;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move v9, v3

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->accept(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-wide v1, v4

    goto :goto_0
.end method

.method public BearingToPoint(DD)D
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the bearing from the Marker to the given latitude and longitude, in degrees from due north."
    .end annotation

    .prologue
    .line 392
    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Marker;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lorg/osmdroid/util/GeoPoint;

    new-instance v6, Lorg/osmdroid/util/GeoPoint;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-wide v8, v1

    move-wide v10, v3

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v5, v6}, Lorg/osmdroid/util/GeoPoint;->bearingTo(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v5

    move-wide v0, v5

    return-wide v0
.end method

.method public DistanceToPoint(DD)D
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Compute the distance, in meters, between a map feature and a latitude, longitude point."
    .end annotation

    .prologue
    .line 384
    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-object v5, v0

    new-instance v6, Lorg/osmdroid/util/GeoPoint;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-wide v8, v1

    move-wide v10, v3

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lorg/osmdroid/util/GeoPoint;)D

    move-result-wide v5

    move-wide v0, v5

    return-wide v0
.end method

.method public DistanceToPoint(DDZ)D
    .locals 13

    .prologue
    .line 377
    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move-object v7, v1

    move-wide v8, v2

    move-wide v10, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/google/appinventor/components/runtime/Marker;->DistanceToPoint(DD)D

    move-result-wide v7

    move-wide v1, v7

    return-wide v1
.end method

.method public Height()I
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 342
    move-object v1, p0

    move-object v2, v1

    iget v2, v2, Lcom/google/appinventor/components/runtime/Marker;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    .line 343
    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Map;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    move v1, v2

    .line 347
    :goto_0
    return v1

    .line 344
    :cond_0
    move-object v2, v1

    iget v2, v2, Lcom/google/appinventor/components/runtime/Marker;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:I

    const/16 v3, -0x3e8

    if-ge v2, v3, :cond_1

    .line 345
    move-object v2, v1

    iget v2, v2, Lcom/google/appinventor/components/runtime/Marker;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:I

    neg-int v2, v2

    int-to-double v2, v2

    const-wide v4, -0x3f70c00000000000L    # -1000.0

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Map;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    move v1, v2

    goto :goto_0

    .line 347
    :cond_1
    move-object v2, v1

    iget v2, v2, Lcom/google/appinventor/components/runtime/Marker;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:I

    move v1, v2

    goto :goto_0
.end method

.method public Height(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 335
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Marker;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:I

    .line 336
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v2

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureSize(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    .line 337
    return-void
.end method

.method public HeightPercent(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 353
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/16 v3, -0x3e8

    move v4, v1

    rsub-int v3, v4, -0x3e8

    iput v3, v2, Lcom/google/appinventor/components/runtime/Marker;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:I

    .line 354
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v2

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureSize(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    .line 355
    return-void
.end method

.method public ImageAsset()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The ImageAsset property is used to provide an alternative image for the Marker."
    .end annotation

    .prologue
    .line 242
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Marker;->imagePath:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public ImageAsset(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "image_asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 234
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Lcom/google/appinventor/components/runtime/Marker;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "ImageAsset"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 235
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Marker;->imagePath:Ljava/lang/String;

    .line 236
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v2

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureImage(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    .line 237
    return-void
.end method

.method public Latitude()D
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 209
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Marker;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public Latitude(D)V
    .locals 15
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "latitude"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 197
    move-object v1, p0

    move-wide/from16 v2, p1

    sget-object v4, Lcom/google/appinventor/components/runtime/Marker;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Latitude"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 198
    move-wide v4, v2

    const-wide v6, -0x3fa9800000000000L    # -90.0

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_0

    move-wide v4, v2

    const-wide v6, 0x4056800000000000L    # 90.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 199
    :cond_0
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Marker;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    move-object v5, v1

    const-string/jumbo v6, "Latitude"

    const/16 v7, 0xd55

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x0

    move-wide v11, v2

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 205
    :goto_0
    return-void

    .line 201
    :cond_1
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Marker;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lorg/osmdroid/util/GeoPoint;

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    .line 202
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Marker;->clearGeometry()V

    .line 203
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v4, v5}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    .line 205
    goto :goto_0
.end method

.method public Longitude()D
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 228
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Marker;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public Longitude(D)V
    .locals 15
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "longitude"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 216
    move-object v1, p0

    move-wide/from16 v2, p1

    sget-object v4, Lcom/google/appinventor/components/runtime/Marker;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Longitude"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 217
    move-wide v4, v2

    const-wide v6, -0x3f99800000000000L    # -180.0

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_0

    move-wide v4, v2

    const-wide v6, 0x4066800000000000L    # 180.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 218
    :cond_0
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Marker;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    move-object v5, v1

    const-string/jumbo v6, "Longitude"

    const/16 v7, 0xd56

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x0

    move-wide v11, v2

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 224
    :goto_0
    return-void

    .line 220
    :cond_1
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Marker;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lorg/osmdroid/util/GeoPoint;

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    .line 221
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Marker;->clearGeometry()V

    .line 222
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v4, v5}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    .line 224
    goto :goto_0
.end method

.method public SetLocation(DD)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the location of the marker."
    .end annotation

    .prologue
    .line 359
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    sget-object v5, Lcom/google/appinventor/components/runtime/Marker;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "SetLocation"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 360
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Marker;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lorg/osmdroid/util/GeoPoint;

    move-wide v6, v1

    move-wide v8, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/osmdroid/util/GeoPoint;->setCoords(DD)V

    .line 361
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Marker;->clearGeometry()V

    .line 362
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v5

    move-object v6, v0

    invoke-interface {v5, v6}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    .line 363
    return-void
.end method

.method public ShowShadow(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 299
    return-void
.end method

.method public ShowShadow()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gets whether or not the shadow of the Marker is shown."
    .end annotation

    .prologue
    .line 304
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public StrokeColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 247
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/google/appinventor/components/runtime/MapFeatureBaseWithFill;->StrokeColor(I)V

    .line 248
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v2

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureStroke(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    .line 249
    return-void
.end method

.method public Type()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 190
    move-object v0, p0

    const-string/jumbo v1, "Marker"

    move-object v0, v1

    return-object v0
.end method

.method public Width()I
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 317
    move-object v1, p0

    move-object v2, v1

    iget v2, v2, Lcom/google/appinventor/components/runtime/Marker;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    .line 318
    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Map;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    move v1, v2

    .line 322
    :goto_0
    return v1

    .line 319
    :cond_0
    move-object v2, v1

    iget v2, v2, Lcom/google/appinventor/components/runtime/Marker;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:I

    const/16 v3, -0x3e8

    if-ge v2, v3, :cond_1

    .line 320
    move-object v2, v1

    iget v2, v2, Lcom/google/appinventor/components/runtime/Marker;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:I

    neg-int v2, v2

    int-to-double v2, v2

    const-wide v4, -0x3f70c00000000000L    # -1000.0

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Map;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    move v1, v2

    goto :goto_0

    .line 322
    :cond_1
    move-object v2, v1

    iget v2, v2, Lcom/google/appinventor/components/runtime/Marker;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:I

    move v1, v2

    goto :goto_0
.end method

.method public Width(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 310
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Marker;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:I

    .line 311
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v2

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureSize(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    .line 312
    return-void
.end method

.method public WidthPercent(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 328
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/16 v3, -0x3e8

    move v4, v1

    rsub-int v3, v4, -0x3e8

    iput v3, v2, Lcom/google/appinventor/components/runtime/Marker;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:I

    .line 329
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v2

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureSize(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    .line 330
    return-void
.end method

.method public varargs accept(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
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

    .prologue
    .line 417
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method protected computeGeometry()Lorg/locationtech/jts/geom/Geometry;
    .locals 2

    .prologue
    .line 422
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Marker;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lorg/osmdroid/util/GeoPoint;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getLocation()Lorg/osmdroid/api/IGeoPoint;
    .locals 2

    .prologue
    .line 406
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Marker;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lorg/osmdroid/util/GeoPoint;

    move-object v0, v1

    return-object v0
.end method

.method public updateLocation(DD)V
    .locals 13

    .prologue
    .line 411
    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-object v5, v0

    new-instance v6, Lorg/osmdroid/util/GeoPoint;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-wide v8, v1

    move-wide v10, v3

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/Marker;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lorg/osmdroid/util/GeoPoint;

    .line 412
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Marker;->clearGeometry()V

    .line 413
    return-void
.end method
