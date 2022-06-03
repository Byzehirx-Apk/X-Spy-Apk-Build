.class public Lcom/google/appinventor/components/runtime/Rectangle;
.super Lcom/google/appinventor/components/runtime/PolygonBase;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MAPS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Rectangle"
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
.field private ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:D

.field private KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:D

.field private sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:D

.field private wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Lcom/google/appinventor/components/runtime/Rectangle$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/Rectangle$1;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/Rectangle;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V
    .locals 6

    .prologue
    .line 90
    move-object v1, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, v2

    sget-object v5, Lcom/google/appinventor/components/runtime/Rectangle;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/PolygonBase;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;)V

    .line 37
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/Rectangle;->ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:D

    .line 38
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/Rectangle;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:D

    .line 39
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/Rectangle;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:D

    .line 40
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/Rectangle;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:D

    .line 91
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 92
    return-void
.end method


# virtual methods
.method public Bounds()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the bounding box of the Rectangle in the format ((North West) (South East))."
    .end annotation

    .prologue
    .line 176
    move-object v0, p0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Double;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    move-object v6, v0

    iget-wide v6, v6, Lcom/google/appinventor/components/runtime/Rectangle;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x1

    move-object v6, v0

    iget-wide v6, v6, Lcom/google/appinventor/components/runtime/Rectangle;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    move-object v1, v3

    .line 177
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Double;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    move-object v6, v0

    iget-wide v6, v6, Lcom/google/appinventor/components/runtime/Rectangle;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x1

    move-object v6, v0

    iget-wide v6, v6, Lcom/google/appinventor/components/runtime/Rectangle;->ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    move-object v2, v3

    .line 178
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    move-object v6, v1

    aput-object v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x1

    move-object v6, v2

    aput-object v6, v4, v5

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public Center()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the center of the Rectangle as a list of the form (Latitude Longitude)."
    .end annotation

    .prologue
    .line 169
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Rectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->asYailList(Lorg/osmdroid/api/IGeoPoint;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public EastLongitude()D
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 114
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/google/appinventor/components/runtime/Rectangle;->ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:D

    move-wide v0, v1

    return-wide v0
.end method

.method public EastLongitude(D)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/Rectangle;->ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:D

    .line 107
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Rectangle;->clearGeometry()V

    .line 108
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Rectangle;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v3

    move-object v4, v0

    invoke-interface {v3, v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V

    .line 109
    return-void
.end method

.method public NorthLatitude()D
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 130
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/google/appinventor/components/runtime/Rectangle;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:D

    move-wide v0, v1

    return-wide v0
.end method

.method public NorthLatitude(D)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 122
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/Rectangle;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:D

    .line 123
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Rectangle;->clearGeometry()V

    .line 124
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Rectangle;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v3

    move-object v4, v0

    invoke-interface {v3, v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V

    .line 125
    return-void
.end method

.method public SetCenter(DD)V
    .locals 29
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Moves the Rectangle so that it is centered on the given latitude and longitude while attempting to maintain the width and height of the Rectangle as measured from the center to the edges."
    .end annotation

    .prologue
    .line 186
    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v18, v5

    const-wide v20, -0x3fa9800000000000L    # -90.0

    cmpg-double v18, v18, v20

    if-ltz v18, :cond_0

    move-wide/from16 v18, v5

    const-wide v20, 0x4056800000000000L    # 90.0

    cmpl-double v18, v18, v20

    if-lez v18, :cond_1

    .line 187
    :cond_0
    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Rectangle;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v18

    move-object/from16 v19, v4

    const-string/jumbo v20, "SetCenter"

    const/16 v21, 0xd4d

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    const/16 v24, 0x0

    move-wide/from16 v25, v5

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    const/16 v24, 0x1

    move-wide/from16 v25, v7

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-virtual/range {v18 .. v22}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 188
    .line 208
    :goto_0
    return-void

    .line 190
    :cond_1
    move-wide/from16 v18, v7

    const-wide v20, -0x3f99800000000000L    # -180.0

    cmpg-double v18, v18, v20

    if-ltz v18, :cond_2

    move-wide/from16 v18, v7

    const-wide v20, 0x4066800000000000L    # 180.0

    cmpl-double v18, v18, v20

    if-lez v18, :cond_3

    .line 191
    :cond_2
    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Rectangle;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v18

    move-object/from16 v19, v4

    const-string/jumbo v20, "SetCenter"

    const/16 v21, 0xd4d

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    const/16 v24, 0x0

    move-wide/from16 v25, v5

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    const/16 v24, 0x1

    move-wide/from16 v25, v7

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-virtual/range {v18 .. v22}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 192
    goto :goto_0

    .line 194
    :cond_3
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lcom/google/appinventor/components/runtime/Rectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v18

    move-object/from16 v9, v18

    .line 195
    new-instance v18, Lorg/osmdroid/util/GeoPoint;

    move-object/from16 v27, v18

    move-object/from16 v18, v27

    move-object/from16 v19, v27

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/Rectangle;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:D

    move-wide/from16 v20, v0

    move-object/from16 v22, v9

    invoke-virtual/range {v22 .. v22}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v22

    invoke-direct/range {v19 .. v23}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object/from16 v10, v18

    .line 196
    new-instance v18, Lorg/osmdroid/util/GeoPoint;

    move-object/from16 v27, v18

    move-object/from16 v18, v27

    move-object/from16 v19, v27

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/Rectangle;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:D

    move-wide/from16 v20, v0

    move-object/from16 v22, v9

    invoke-virtual/range {v22 .. v22}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v22

    invoke-direct/range {v19 .. v23}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object/from16 v11, v18

    .line 197
    new-instance v18, Lorg/osmdroid/util/GeoPoint;

    move-object/from16 v27, v18

    move-object/from16 v18, v27

    move-object/from16 v19, v27

    move-object/from16 v20, v9

    invoke-virtual/range {v20 .. v20}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v20

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/Rectangle;->ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:D

    move-wide/from16 v22, v0

    invoke-direct/range {v19 .. v23}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object/from16 v12, v18

    .line 198
    new-instance v18, Lorg/osmdroid/util/GeoPoint;

    move-object/from16 v27, v18

    move-object/from16 v18, v27

    move-object/from16 v19, v27

    move-object/from16 v20, v9

    invoke-virtual/range {v20 .. v20}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v20

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/Rectangle;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:D

    move-wide/from16 v22, v0

    invoke-direct/range {v19 .. v23}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object/from16 v13, v18

    .line 199
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    invoke-static/range {v18 .. v19}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v18

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    move-wide/from16 v14, v18

    .line 200
    move-object/from16 v18, v12

    move-object/from16 v19, v13

    invoke-static/range {v18 .. v19}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v18

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    move-wide/from16 v16, v18

    .line 201
    move-object/from16 v18, v9

    move-wide/from16 v19, v5

    move-wide/from16 v21, v7

    invoke-virtual/range {v18 .. v22}, Lorg/osmdroid/util/GeoPoint;->setCoords(DD)V

    .line 202
    move-object/from16 v18, v4

    move-object/from16 v19, v9

    move-wide/from16 v20, v14

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v22}, Lorg/osmdroid/util/GeoPoint;->destinationPoint(DF)Lorg/osmdroid/util/GeoPoint;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/google/appinventor/components/runtime/Rectangle;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:D

    .line 203
    move-object/from16 v18, v4

    move-object/from16 v19, v9

    move-wide/from16 v20, v14

    const/high16 v22, 0x43340000    # 180.0f

    invoke-virtual/range {v19 .. v22}, Lorg/osmdroid/util/GeoPoint;->destinationPoint(DF)Lorg/osmdroid/util/GeoPoint;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/google/appinventor/components/runtime/Rectangle;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:D

    .line 204
    move-object/from16 v18, v4

    move-object/from16 v19, v9

    move-wide/from16 v20, v16

    const/high16 v22, 0x42b40000    # 90.0f

    invoke-virtual/range {v19 .. v22}, Lorg/osmdroid/util/GeoPoint;->destinationPoint(DF)Lorg/osmdroid/util/GeoPoint;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/google/appinventor/components/runtime/Rectangle;->ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:D

    .line 205
    move-object/from16 v18, v4

    move-object/from16 v19, v9

    move-wide/from16 v20, v16

    const/high16 v22, 0x43870000    # 270.0f

    invoke-virtual/range {v19 .. v22}, Lorg/osmdroid/util/GeoPoint;->destinationPoint(DF)Lorg/osmdroid/util/GeoPoint;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/google/appinventor/components/runtime/Rectangle;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:D

    .line 206
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lcom/google/appinventor/components/runtime/Rectangle;->clearGeometry()V

    .line 207
    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Rectangle;->map:Lcom/google/appinventor/components/runtime/Map;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v18

    move-object/from16 v19, v4

    invoke-interface/range {v18 .. v19}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V

    .line 208
    goto/16 :goto_0
.end method

.method public SouthLatitude()D
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 146
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/google/appinventor/components/runtime/Rectangle;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:D

    move-wide v0, v1

    return-wide v0
.end method

.method public SouthLatitude(D)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 138
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/Rectangle;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:D

    .line 139
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Rectangle;->clearGeometry()V

    .line 140
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Rectangle;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v3

    move-object v4, v0

    invoke-interface {v3, v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V

    .line 141
    return-void
.end method

.method public Type()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The type of the feature. For rectangles, this returns the text \"Rectangle\"."
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    const-string/jumbo v1, "Rectangle"

    move-object v0, v1

    return-object v0
.end method

.method public WestLongitude()D
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 162
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/google/appinventor/components/runtime/Rectangle;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:D

    move-wide v0, v1

    return-wide v0
.end method

.method public WestLongitude(D)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 154
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/Rectangle;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:D

    .line 155
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Rectangle;->clearGeometry()V

    .line 156
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Rectangle;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v3

    move-object v4, v0

    invoke-interface {v3, v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V

    .line 157
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
    .line 212
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method protected computeGeometry()Lorg/locationtech/jts/geom/Geometry;
    .locals 10

    .prologue
    .line 217
    move-object v1, p0

    move-object v2, v1

    iget-wide v2, v2, Lcom/google/appinventor/components/runtime/Rectangle;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:D

    move-object v4, v1

    iget-wide v4, v4, Lcom/google/appinventor/components/runtime/Rectangle;->ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:D

    move-object v6, v1

    iget-wide v6, v6, Lcom/google/appinventor/components/runtime/Rectangle;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:D

    move-object v8, v1

    iget-wide v8, v8, Lcom/google/appinventor/components/runtime/Rectangle;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:D

    invoke-static/range {v2 .. v9}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(DDDD)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    move-object v1, v2

    return-object v1
.end method

.method public updateBounds(DDDD)V
    .locals 13

    .prologue
    .line 222
    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-object v9, v0

    move-wide v10, v1

    iput-wide v10, v9, Lcom/google/appinventor/components/runtime/Rectangle;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:D

    .line 223
    move-object v9, v0

    move-wide v10, v3

    iput-wide v10, v9, Lcom/google/appinventor/components/runtime/Rectangle;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:D

    .line 224
    move-object v9, v0

    move-wide v10, v5

    iput-wide v10, v9, Lcom/google/appinventor/components/runtime/Rectangle;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:D

    .line 225
    move-object v9, v0

    move-wide v10, v7

    iput-wide v10, v9, Lcom/google/appinventor/components/runtime/Rectangle;->ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:D

    .line 226
    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/Rectangle;->clearGeometry()V

    .line 227
    return-void
.end method
