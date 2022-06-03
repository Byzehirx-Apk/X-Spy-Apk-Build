.class public Lcom/google/appinventor/components/runtime/Circle;
.super Lcom/google/appinventor/components/runtime/PolygonBase;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MAPS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Circle"
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
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


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:D

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:D

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/osmdroid/util/GeoPoint;

.field private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Lcom/google/appinventor/components/runtime/Circle$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/Circle$1;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/Circle;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V
    .locals 11

    .prologue
    .line 106
    move-object v1, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, v2

    sget-object v5, Lcom/google/appinventor/components/runtime/Circle;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/PolygonBase;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;)V

    .line 41
    move-object v3, v1

    new-instance v4, Lorg/osmdroid/util/GeoPoint;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Circle;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/osmdroid/util/GeoPoint;

    .line 107
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 108
    return-void
.end method


# virtual methods
.method public Latitude()D
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The latitude of the center of the circle."
    .end annotation

    .prologue
    .line 153
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/google/appinventor/components/runtime/Circle;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:D

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
    .line 138
    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide v4, v2

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLatitude(D)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    move-object v4, v1

    move-wide v5, v2

    iput-wide v5, v4, Lcom/google/appinventor/components/runtime/Circle;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:D

    .line 140
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Circle;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/osmdroid/util/GeoPoint;

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    .line 141
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Circle;->clearGeometry()V

    .line 142
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Circle;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v4, v5}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V

    .line 147
    :goto_0
    return-void

    .line 144
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Circle;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

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

    .line 145
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    .line 144
    invoke-interface {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 147
    goto :goto_0
.end method

.method public Longitude()D
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The longitude of the center of the circle."
    .end annotation

    .prologue
    .line 176
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/google/appinventor/components/runtime/Circle;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:D

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
    .line 161
    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide v4, v2

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLongitude(D)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 162
    move-object v4, v1

    move-wide v5, v2

    iput-wide v5, v4, Lcom/google/appinventor/components/runtime/Circle;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:D

    .line 163
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Circle;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/osmdroid/util/GeoPoint;

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    .line 164
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Circle;->clearGeometry()V

    .line 165
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Circle;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v4, v5}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V

    .line 170
    :goto_0
    return-void

    .line 167
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Circle;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

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

    .line 168
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    .line 167
    invoke-interface {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 170
    goto :goto_0
.end method

.method public Radius()D
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The radius of the circle in meters."
    .end annotation

    .prologue
    .line 130
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/google/appinventor/components/runtime/Circle;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:D

    move-wide v0, v1

    return-wide v0
.end method

.method public Radius(D)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 121
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/Circle;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:D

    .line 122
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Circle;->clearGeometry()V

    .line 123
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Circle;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v3

    move-object v4, v0

    invoke-interface {v3, v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V

    .line 124
    return-void
.end method

.method public SetLocation(DD)V
    .locals 17
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the center of the Circle."
    .end annotation

    .prologue
    .line 182
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide v6, v2

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLatitude(D)Z

    move-result v6

    if-nez v6, :cond_0

    .line 183
    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Circle;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v6

    move-object v7, v1

    const-string/jumbo v8, "SetLocation"

    const/16 v9, 0xd55

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    move-wide v13, v2

    .line 184
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v11, v12

    .line 183
    invoke-interface {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 196
    :goto_0
    return-void

    .line 185
    :cond_0
    move-wide v6, v4

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLongitude(D)Z

    move-result v6

    if-nez v6, :cond_1

    .line 186
    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Circle;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v6

    move-object v7, v1

    const-string/jumbo v8, "SetLocation"

    const/16 v9, 0xd56

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    move-wide v13, v4

    .line 187
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v11, v12

    .line 186
    invoke-interface {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 189
    :cond_1
    move-object v6, v1

    move-wide v7, v2

    iput-wide v7, v6, Lcom/google/appinventor/components/runtime/Circle;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:D

    .line 190
    move-object v6, v1

    move-wide v7, v4

    iput-wide v7, v6, Lcom/google/appinventor/components/runtime/Circle;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:D

    .line 191
    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Circle;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/osmdroid/util/GeoPoint;

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    .line 192
    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Circle;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/osmdroid/util/GeoPoint;

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    .line 193
    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Circle;->clearGeometry()V

    .line 194
    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Circle;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v6

    move-object v7, v1

    invoke-interface {v6, v7}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V

    .line 196
    goto :goto_0
.end method

.method public Type()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    const-string/jumbo v1, "Circle"

    move-object v0, v1

    return-object v0
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
    .line 200
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method protected computeGeometry()Lorg/locationtech/jts/geom/Geometry;
    .locals 2

    .prologue
    .line 205
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Circle;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/osmdroid/util/GeoPoint;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public updateCenter(DD)V
    .locals 9

    .prologue
    .line 210
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, v0

    move-wide v6, v1

    iput-wide v6, v5, Lcom/google/appinventor/components/runtime/Circle;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:D

    .line 211
    move-object v5, v0

    move-wide v6, v3

    iput-wide v6, v5, Lcom/google/appinventor/components/runtime/Circle;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:D

    .line 212
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Circle;->clearGeometry()V

    .line 213
    return-void
.end method
