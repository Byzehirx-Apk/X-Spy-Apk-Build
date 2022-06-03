.class public Lcom/google/appinventor/components/runtime/LineString;
.super Lcom/google/appinventor/components/runtime/MapFeatureBase;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MAPS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "LineString"
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
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


# instance fields
.field private KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const-class v0, Lcom/google/appinventor/components/runtime/LineString;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/LineString;->TAG:Ljava/lang/String;

    .line 48
    new-instance v0, Lcom/google/appinventor/components/runtime/LineString$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/LineString$1;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/LineString;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V
    .locals 6

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lcom/google/appinventor/components/runtime/LineString;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/MapFeatureBase;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;)V

    .line 46
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/LineString;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/util/List;

    .line 97
    move-object v2, v0

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/LineString;->StrokeWidth(I)V

    .line 98
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 99
    return-void
.end method


# virtual methods
.method public Points()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A list of latitude and longitude pairs that represent the line segments of the polyline."
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LineString;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/util/List;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointsListToYailList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public Points(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 12
    .param p1    # Lcom/google/appinventor/components/runtime/util/YailList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 120
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LineString;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    move-object v3, v0

    const-string/jumbo v4, "Points"

    const/16 v5, 0xd49

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    move-object v9, v1

    .line 121
    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/util/YailList;->length()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 120
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 132
    :goto_0
    return-void

    .line 124
    :cond_0
    move-object v2, v0

    move-object v3, v1

    :try_start_0
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointsFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/LineString;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/util/List;

    .line 125
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/LineString;->clearGeometry()V

    .line 126
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LineString;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v2

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    goto :goto_0

    .line 127
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 128
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LineString;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    move-object v3, v0

    const-string/jumbo v4, "Points"

    move-object v5, v1

    .line 129
    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getErrorCode()I

    move-result v5

    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getArguments()[Ljava/lang/Object;

    move-result-object v6

    .line 128
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 132
    goto :goto_0
.end method

.method public PointsFromString(Ljava/lang/String;)V
    .locals 22
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 146
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    :try_start_0
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v12

    .line 147
    new-instance v12, Lorg/json/JSONArray;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    move-object v14, v2

    invoke-direct {v13, v14}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    .line 148
    move-object v4, v13

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v12

    const/4 v13, 0x2

    if-ge v12, v13, :cond_0

    .line 150
    new-instance v12, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/16 v14, 0xd49

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const/16 v17, 0x0

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-direct {v13, v14, v15}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw v12
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_0 .. :try_end_0} :catch_1

    .line 176
    :catch_0
    move-exception v12

    move-object v3, v12

    .line 177
    sget-object v12, Lcom/google/appinventor/components/runtime/LineString;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "Malformed string to LineString.PointsFromString"

    move-object v14, v3

    invoke-static {v12, v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v12

    .line 178
    move-object v12, v1

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/LineString;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v12}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v12

    move-object v13, v1

    const-string/jumbo v14, "PointsFromString"

    const/16 v15, 0xd4a

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    const/16 v18, 0x0

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v21, v19

    move-object/from16 v19, v21

    move-object/from16 v20, v21

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v12 .. v16}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 181
    .line 182
    :goto_0
    return-void

    .line 152
    :cond_0
    move-object v12, v4

    :try_start_1
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v12

    move v5, v12

    .line 153
    const/4 v12, 0x0

    move v6, v12

    :goto_1
    move v12, v6

    move v13, v5

    if-ge v12, v13, :cond_5

    .line 154
    move-object v12, v4

    move v13, v6

    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v12

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    .line 155
    move-object v7, v13

    if-nez v12, :cond_1

    .line 156
    new-instance v12, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/16 v14, 0xd5c

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const/16 v17, 0x0

    move/from16 v18, v6

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const/16 v17, 0x1

    move-object/from16 v18, v4

    move/from16 v19, v6

    .line 157
    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-direct {v13, v14, v15}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw v12
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    :catch_1
    move-exception v12

    move-object v3, v12

    .line 180
    move-object v12, v1

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/LineString;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v12}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v12

    move-object v13, v1

    const-string/jumbo v14, "PointsFromString"

    move-object v15, v3

    invoke-virtual {v15}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getErrorCode()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    const/16 v18, 0x0

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v21, v19

    move-object/from16 v19, v21

    move-object/from16 v20, v21

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getArguments()[Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v12 .. v16}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 182
    goto/16 :goto_0

    .line 158
    :cond_1
    move-object v12, v7

    :try_start_2
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v12

    const/4 v13, 0x2

    if-ge v12, v13, :cond_2

    .line 159
    new-instance v12, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/16 v14, 0xd4b

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const/16 v17, 0x0

    move/from16 v18, v6

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const/16 v17, 0x1

    move-object/from16 v18, v2

    .line 160
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-direct {v13, v14, v15}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw v12

    .line 162
    :cond_2
    move-object v12, v7

    const/4 v13, 0x0

    const-wide/high16 v14, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v12, v13, v14, v15}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v12

    move-wide v8, v12

    .line 163
    move-object v12, v7

    const/4 v13, 0x1

    const-wide/high16 v14, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v12, v13, v14, v15}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v12

    move-wide v10, v12

    .line 164
    move-wide v12, v8

    invoke-static {v12, v13}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLatitude(D)Z

    move-result v12

    if-nez v12, :cond_3

    .line 165
    new-instance v12, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/16 v14, 0xd5a

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const/16 v17, 0x0

    move/from16 v18, v6

    .line 166
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const/16 v17, 0x1

    move-object/from16 v18, v4

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-direct {v13, v14, v15}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw v12

    .line 167
    :cond_3
    move-wide v12, v10

    invoke-static {v12, v13}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLongitude(D)Z

    move-result v12

    if-nez v12, :cond_4

    .line 168
    new-instance v12, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/16 v14, 0xd5b

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const/16 v17, 0x0

    move/from16 v18, v6

    .line 169
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const/16 v17, 0x1

    move-object/from16 v18, v4

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-direct {v13, v14, v15}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw v12

    .line 171
    :cond_4
    move-object v12, v3

    new-instance v13, Lorg/osmdroid/util/GeoPoint;

    move-object/from16 v21, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v21

    move-wide v15, v8

    move-wide/from16 v17, v10

    invoke-direct/range {v14 .. v18}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 153
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 173
    :cond_5
    move-object v12, v1

    move-object v13, v3

    iput-object v13, v12, Lcom/google/appinventor/components/runtime/LineString;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/util/List;

    .line 174
    move-object v12, v1

    invoke-virtual {v12}, Lcom/google/appinventor/components/runtime/LineString;->clearGeometry()V

    .line 175
    move-object v12, v1

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/LineString;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v12}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v12

    move-object v13, v1

    invoke-interface {v12, v13}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_2 .. :try_end_2} :catch_1

    .line 181
    goto/16 :goto_0
.end method

.method public StrokeWidth(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "3"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 188
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->StrokeWidth(I)V

    .line 189
    return-void
.end method

.method public Type()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The type of the map feature."
    .end annotation

    .prologue
    .line 105
    move-object v0, p0

    const-string/jumbo v1, "LineString"

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
    .line 198
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method protected computeGeometry()Lorg/locationtech/jts/geom/Geometry;
    .locals 2

    .prologue
    .line 203
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LineString;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/util/List;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(Ljava/util/List;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LineString;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method public updatePoints(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/LineString;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/util/List;

    .line 209
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/LineString;->clearGeometry()V

    .line 210
    return-void
.end method
