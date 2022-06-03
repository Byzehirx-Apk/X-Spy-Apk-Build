.class public abstract Lcom/google/appinventor/components/runtime/MapFeatureBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lorg/osmdroid/util/GeoPoint;

.field private JTEvmldvMjbbtPPlVS4hmZghOoRNnXC0kZOUUAZdwkVNl1VM5pL0vCTYv5HQZ7AX:I

.field protected container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

.field private gti6bIqu0aXgALoDtkq1foMnPcdzXO0EAPAgw4lcaEF132GirFLns82VqwKc8x6R:Ljava/lang/String;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/locationtech/jts/geom/Geometry;

.field protected map:Lcom/google/appinventor/components/runtime/Map;

.field private muMCPHZoR5LDcgNaOoyYPcH1tjqU9LHoHV7Yzgex9Dj2uE6xbcPRtlEMsWbJpsbN:I

.field private n86Bi3TT8lkq4OIAY6TQzz40yEQcROLeML3EOzGKfDOtlcMXWXcB7P2XOFzT0DDv:Ljava/lang/String;

.field private pA4gj2pijkqCsrKJCWMJXnTZqsBbwNoQGf3YiS6sfVTNefcGmCrEoGjUFuLXwlZr:Z

.field private tj0MDuMmBVyFcp8vwXpkfd0RnoyqL9aUR0zh2QG1qIbcD4cqzuxOkXiR3Ef5Sjag:F

.field private visible:Z

.field private yTV71ZsokI1cWCTQFF82CwpCeeVC4RDXPNMp7sNxPH2Pf25hYzf1pp0KzV43yJiS:Z


# direct methods
.method protected constructor <init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 32
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MapFeatureBase;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    .line 33
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    .line 34
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/MapFeatureBase;->visible:Z

    .line 35
    move-object v3, v0

    const/high16 v4, -0x1000000

    iput v4, v3, Lcom/google/appinventor/components/runtime/MapFeatureBase;->muMCPHZoR5LDcgNaOoyYPcH1tjqU9LHoHV7Yzgex9Dj2uE6xbcPRtlEMsWbJpsbN:I

    .line 36
    move-object v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Lcom/google/appinventor/components/runtime/MapFeatureBase;->tj0MDuMmBVyFcp8vwXpkfd0RnoyqL9aUR0zh2QG1qIbcD4cqzuxOkXiR3Ef5Sjag:F

    .line 37
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Lcom/google/appinventor/components/runtime/MapFeatureBase;->JTEvmldvMjbbtPPlVS4hmZghOoRNnXC0kZOUUAZdwkVNl1VM5pL0vCTYv5HQZ7AX:I

    .line 38
    move-object v3, v0

    const-string/jumbo v4, ""

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MapFeatureBase;->gti6bIqu0aXgALoDtkq1foMnPcdzXO0EAPAgw4lcaEF132GirFLns82VqwKc8x6R:Ljava/lang/String;

    .line 39
    move-object v3, v0

    const-string/jumbo v4, ""

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MapFeatureBase;->n86Bi3TT8lkq4OIAY6TQzz40yEQcROLeML3EOzGKfDOtlcMXWXcB7P2XOFzT0DDv:Ljava/lang/String;

    .line 40
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/MapFeatureBase;->pA4gj2pijkqCsrKJCWMJXnTZqsBbwNoQGf3YiS6sfVTNefcGmCrEoGjUFuLXwlZr:Z

    .line 41
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/MapFeatureBase;->yTV71ZsokI1cWCTQFF82CwpCeeVC4RDXPNMp7sNxPH2Pf25hYzf1pp0KzV43yJiS:Z

    .line 42
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MapFeatureBase;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lorg/osmdroid/util/GeoPoint;

    .line 44
    move-object v3, v0

    new-instance v4, Lcom/google/appinventor/components/runtime/MapFeatureBase$1;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/MapFeatureBase$1;-><init>(Lcom/google/appinventor/components/runtime/MapFeatureBase;)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MapFeatureBase;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    .line 91
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MapFeatureBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/locationtech/jts/geom/Geometry;

    .line 96
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MapFeatureBase;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    .line 97
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    .line 98
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MapFeatureBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    .line 99
    move-object v3, v0

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->Description(Ljava/lang/String;)V

    .line 100
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->Draggable(Z)V

    .line 101
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->EnableInfobox(Z)V

    .line 102
    move-object v3, v0

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->StrokeColor(I)V

    .line 103
    move-object v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->StrokeOpacity(F)V

    .line 104
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->StrokeWidth(I)V

    .line 105
    move-object v3, v0

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->Title(Ljava/lang/String;)V

    .line 106
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->Visible(Z)V

    .line 107
    return-void
.end method


# virtual methods
.method public Centroid()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2

    .prologue
    .line 271
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->asYailList(Lorg/osmdroid/api/IGeoPoint;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public Click()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user clicked on the feature."
    .end annotation

    .prologue
    .line 291
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "Click"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 292
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MapFeatureBase;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    move-object v2, v0

    invoke-interface {v1, v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->FeatureClick(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 293
    return-void
.end method

.method public Description()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The description displayed in the info window that appears when the user clicks on the map feature."
    .end annotation

    .prologue
    .line 236
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MapFeatureBase;->n86Bi3TT8lkq4OIAY6TQzz40yEQcROLeML3EOzGKfDOtlcMXWXcB7P2XOFzT0DDv:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public Description(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 227
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MapFeatureBase;->n86Bi3TT8lkq4OIAY6TQzz40yEQcROLeML3EOzGKfDOtlcMXWXcB7P2XOFzT0DDv:Ljava/lang/String;

    .line 228
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v2

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureText(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 229
    return-void
.end method

.method public DistanceToFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Z)D
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Compute the distance, in meters, between two map features."
    .end annotation

    .prologue
    .line 284
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

    move-object v5, v1

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MapFeatureBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

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

.method public DistanceToPoint(DDZ)D
    .locals 19
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Compute the distance, in meters, between a map feature and a latitude, longitude point."
    .end annotation

    .prologue
    .line 278
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move-object v7, v1

    move-object/from16 v18, v7

    move-object/from16 v7, v18

    move-object/from16 v8, v18

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/MapFeatureBase;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    const/4 v11, 0x0

    new-instance v12, Lorg/osmdroid/util/GeoPoint;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-wide v14, v2

    move-wide/from16 v16, v4

    invoke-direct/range {v13 .. v17}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    aput-object v12, v10, v11

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    const/4 v11, 0x1

    move v12, v6

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v8, v9}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->accept(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    move-wide v1, v7

    return-wide v1
.end method

.method public Drag()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user dragged the map feature."
    .end annotation

    .prologue
    .line 313
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "Drag"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 314
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MapFeatureBase;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    move-object v2, v0

    invoke-interface {v1, v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->FeatureDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 315
    return-void
.end method

.method public Draggable(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 196
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/MapFeatureBase;->pA4gj2pijkqCsrKJCWMJXnTZqsBbwNoQGf3YiS6sfVTNefcGmCrEoGjUFuLXwlZr:Z

    .line 197
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v2

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureDraggable(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 198
    return-void
.end method

.method public Draggable()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The Draggable property is used to set whether or not the user can drag the Marker by long-pressing and then dragging the marker to a new location."
    .end annotation

    .prologue
    .line 204
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/MapFeatureBase;->pA4gj2pijkqCsrKJCWMJXnTZqsBbwNoQGf3YiS6sfVTNefcGmCrEoGjUFuLXwlZr:Z

    move v0, v1

    return v0
.end method

.method public EnableInfobox(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 244
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/MapFeatureBase;->yTV71ZsokI1cWCTQFF82CwpCeeVC4RDXPNMp7sNxPH2Pf25hYzf1pp0KzV43yJiS:Z

    .line 245
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v2

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureText(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 246
    return-void
.end method

.method public EnableInfobox()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Enable or disable the infobox window display when the user taps the feature."
    .end annotation

    .prologue
    .line 252
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/MapFeatureBase;->yTV71ZsokI1cWCTQFF82CwpCeeVC4RDXPNMp7sNxPH2Pf25hYzf1pp0KzV43yJiS:Z

    move v0, v1

    return v0
.end method

.method public HideInfobox()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Hide the infobox if it is shown. If the infobox is not visible this function has no effect."
    .end annotation

    .prologue
    .line 266
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v1

    move-object v2, v0

    invoke-interface {v1, v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->hideInfobox(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 267
    return-void
.end method

.method public LongClick()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user long-pressed on the feature. This event will only trigger if Draggable is false."
    .end annotation

    .prologue
    .line 299
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "LongClick"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 300
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MapFeatureBase;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    move-object v2, v0

    invoke-interface {v1, v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->FeatureLongClick(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 301
    return-void
.end method

.method public ShowInfobox()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show the infobox for the feature. This will show the infobox even if {@link #EnableInfobox} is set to false."
    .end annotation

    .prologue
    .line 259
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v1

    move-object v2, v0

    invoke-interface {v1, v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->showInfobox(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 260
    return-void
.end method

.method public StartDrag()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user started a drag operation."
    .end annotation

    .prologue
    .line 306
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "StartDrag"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 307
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MapFeatureBase;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    move-object v2, v0

    invoke-interface {v1, v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->FeatureStartDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 308
    return-void
.end method

.method public StopDrag()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user stopped a drag operation."
    .end annotation

    .prologue
    .line 320
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "StopDrag"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 321
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MapFeatureBase;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    move-object v2, v0

    invoke-interface {v1, v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->FeatureStopDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 322
    return-void
.end method

.method public StrokeColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The paint color used to outline the map feature."
    .end annotation

    .prologue
    .line 155
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MapFeatureBase;->muMCPHZoR5LDcgNaOoyYPcH1tjqU9LHoHV7Yzgex9Dj2uE6xbcPRtlEMsWbJpsbN:I

    move v0, v1

    return v0
.end method

.method public StrokeColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 147
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MapFeatureBase;->muMCPHZoR5LDcgNaOoyYPcH1tjqU9LHoHV7Yzgex9Dj2uE6xbcPRtlEMsWbJpsbN:I

    .line 148
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v2

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureStroke(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    .line 149
    return-void
.end method

.method public StrokeOpacity()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The opacity of the stroke used to outline the map feature."
    .end annotation

    .prologue
    .line 172
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MapFeatureBase;->tj0MDuMmBVyFcp8vwXpkfd0RnoyqL9aUR0zh2QG1qIbcD4cqzuxOkXiR3Ef5Sjag:F

    move v0, v1

    return v0
.end method

.method public StrokeOpacity(F)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 163
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MapFeatureBase;->tj0MDuMmBVyFcp8vwXpkfd0RnoyqL9aUR0zh2QG1qIbcD4cqzuxOkXiR3Ef5Sjag:F

    .line 164
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/google/appinventor/components/runtime/MapFeatureBase;->muMCPHZoR5LDcgNaOoyYPcH1tjqU9LHoHV7Yzgex9Dj2uE6xbcPRtlEMsWbJpsbN:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    const/high16 v4, 0x437f0000    # 255.0f

    move v5, v1

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/16 v5, 0x18

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    iput v3, v2, Lcom/google/appinventor/components/runtime/MapFeatureBase;->muMCPHZoR5LDcgNaOoyYPcH1tjqU9LHoHV7Yzgex9Dj2uE6xbcPRtlEMsWbJpsbN:I

    .line 165
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v2

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureStroke(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    .line 166
    return-void
.end method

.method public StrokeWidth()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The width of the stroke used to outline the map feature."
    .end annotation

    .prologue
    .line 188
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MapFeatureBase;->JTEvmldvMjbbtPPlVS4hmZghOoRNnXC0kZOUUAZdwkVNl1VM5pL0vCTYv5HQZ7AX:I

    move v0, v1

    return v0
.end method

.method public StrokeWidth(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 180
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MapFeatureBase;->JTEvmldvMjbbtPPlVS4hmZghOoRNnXC0kZOUUAZdwkVNl1VM5pL0vCTYv5HQZ7AX:I

    .line 181
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v2

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureStroke(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    .line 182
    return-void
.end method

.method public Title()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The title displayed in the info window that appears when the user clicks on the map feature."
    .end annotation

    .prologue
    .line 220
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MapFeatureBase;->gti6bIqu0aXgALoDtkq1foMnPcdzXO0EAPAgw4lcaEF132GirFLns82VqwKc8x6R:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public Title(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 211
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MapFeatureBase;->gti6bIqu0aXgALoDtkq1foMnPcdzXO0EAPAgw4lcaEF132GirFLns82VqwKc8x6R:Ljava/lang/String;

    .line 212
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v2

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureText(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 213
    return-void
.end method

.method public Visible(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "visibility"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 123
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/MapFeatureBase;->visible:Z

    move v3, v1

    if-ne v2, v3, :cond_0

    .line 124
    .line 133
    :goto_0
    return-void

    .line 126
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/MapFeatureBase;->visible:Z

    .line 127
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/MapFeatureBase;->visible:Z

    if-eqz v2, :cond_1

    .line 128
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v2

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->showFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 132
    :goto_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Map;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 133
    goto :goto_0

    .line 130
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v2

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->hideFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    goto :goto_1
.end method

.method public Visible()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies whether the component should be visible on the screen. Value is true if the component is showing and false if hidden."
    .end annotation

    .prologue
    .line 139
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/MapFeatureBase;->visible:Z

    move v0, v1

    return v0
.end method

.method protected final declared-synchronized clearGeometry()V
    .locals 4

    .prologue
    .line 347
    move-object v0, p0

    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    const/4 v2, 0x0

    :try_start_0
    iput-object v2, v1, Lcom/google/appinventor/components/runtime/MapFeatureBase;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lorg/osmdroid/util/GeoPoint;

    .line 348
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/MapFeatureBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/locationtech/jts/geom/Geometry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    monitor-exit v3

    return-void

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method protected abstract computeGeometry()Lorg/locationtech/jts/geom/Geometry;
.end method

.method public final declared-synchronized getCentroid()Lorg/osmdroid/util/GeoPoint;
    .locals 5

    .prologue
    .line 331
    move-object v0, p0

    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MapFeatureBase;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lorg/osmdroid/util/GeoPoint;

    if-nez v1, :cond_0

    .line 332
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Geometry;->getCentroid()Lorg/locationtech/jts/geom/Point;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->jtsPointToGeoPoint(Lorg/locationtech/jts/geom/Point;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/MapFeatureBase;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lorg/osmdroid/util/GeoPoint;

    .line 334
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MapFeatureBase;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lorg/osmdroid/util/GeoPoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    monitor-exit v3

    return-object v0

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    .locals 2

    .prologue
    .line 326
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Map;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final declared-synchronized getGeometry()Lorg/locationtech/jts/geom/Geometry;
    .locals 5

    .prologue
    .line 339
    move-object v0, p0

    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MapFeatureBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/locationtech/jts/geom/Geometry;

    if-nez v1, :cond_0

    .line 340
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->computeGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/MapFeatureBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/locationtech/jts/geom/Geometry;

    .line 342
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MapFeatureBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/locationtech/jts/geom/Geometry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    monitor-exit v3

    return-object v0

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public removeFromMap()V
    .locals 3

    .prologue
    .line 115
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v1

    move-object v2, v0

    invoke-interface {v1, v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->removeFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 116
    return-void
.end method

.method public setMap(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V
    .locals 4

    .prologue
    .line 110
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    .line 111
    return-void
.end method
