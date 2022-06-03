.class public Lcom/google/appinventor/components/runtime/Polygon;
.super Lcom/google/appinventor/components/runtime/PolygonBase;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MAPS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Polygon"
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
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;"
        }
    .end annotation
.end field

.field private TcZoKXUijRhvOFm1gZ0ppEfXWxECqlUNNvncSPIfT3ZrTDcozo05OAb21mkMXciT:Z

.field private initialized:Z

.field private sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
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
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const-class v0, Lcom/google/appinventor/components/runtime/Polygon;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/Polygon;->TAG:Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/google/appinventor/components/runtime/Polygon$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/Polygon$1;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/Polygon;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V
    .locals 6

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lcom/google/appinventor/components/runtime/Polygon;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/PolygonBase;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;)V

    .line 47
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Polygon;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/util/List;

    .line 48
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Polygon;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:Ljava/util/List;

    .line 49
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Polygon;->TcZoKXUijRhvOFm1gZ0ppEfXWxECqlUNNvncSPIfT3ZrTDcozo05OAb21mkMXciT:Z

    .line 50
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Polygon;->initialized:Z

    .line 101
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 102
    return-void
.end method


# virtual methods
.method public Centroid()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the centroid of the Polygon as a (latitude, longitude) pair."
    .end annotation

    .prologue
    .line 268
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Lcom/google/appinventor/components/runtime/PolygonBase;->Centroid()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public HolePoints()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 197
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Polygon;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 198
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    move-object v0, v4

    .line 206
    :goto_0
    return-object v0

    .line 199
    :cond_0
    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/Polygon;->TcZoKXUijRhvOFm1gZ0ppEfXWxECqlUNNvncSPIfT3ZrTDcozo05OAb21mkMXciT:Z

    if-eqz v4, :cond_2

    .line 200
    new-instance v4, Ljava/util/LinkedList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    move-object v1, v4

    .line 201
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Polygon;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move-object v3, v4

    .line 202
    move-object v4, v1

    move-object v5, v3

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->multiPolygonToYailList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 203
    goto :goto_1

    .line 204
    :cond_1
    move-object v4, v1

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 206
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Polygon;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->multiPolygonToYailList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public HolePoints(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 214
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    :try_start_0
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 215
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Polygon;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:Ljava/util/List;

    .line 226
    :goto_0
    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/Polygon;->initialized:Z

    if-eqz v3, :cond_0

    .line 227
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Polygon;->clearGeometry()V

    .line 228
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Polygon;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v3

    move-object v4, v0

    invoke-interface {v3, v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureHoles(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    .line 233
    .line 234
    :cond_0
    :goto_1
    return-void

    .line 216
    :cond_1
    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/Polygon;->TcZoKXUijRhvOFm1gZ0ppEfXWxECqlUNNvncSPIfT3ZrTDcozo05OAb21mkMXciT:Z

    if-eqz v3, :cond_2

    .line 217
    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->multiPolygonHolesFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Polygon;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:Ljava/util/List;

    goto :goto_0

    .line 218
    :cond_2
    move-object v3, v1

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isMultiPolygon(Lcom/google/appinventor/components/runtime/util/YailList;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 219
    new-instance v3, Ljava/util/ArrayList;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    .line 220
    move-object v2, v4

    move-object v4, v1

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->multiPolygonFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 221
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Polygon;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:Ljava/util/List;

    .line 222
    goto :goto_0

    .line 223
    :cond_3
    new-instance v3, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/16 v5, 0xd4c

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const-string/jumbo v9, "Unable to determine the structure of the points argument."

    aput-object v9, v7, v8

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw v3
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 231
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Polygon;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    move-object v4, v0

    const-string/jumbo v5, "HolePoints"

    move-object v6, v2

    .line 232
    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getErrorCode()I

    move-result v6

    move-object v7, v2

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getArguments()[Ljava/lang/Object;

    move-result-object v7

    .line 231
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 234
    goto :goto_1
.end method

.method public HolePointsFromString(Ljava/lang/String;)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Constructs holes in a polygon from a given list of coordinates per hole."
    .end annotation

    .prologue
    .line 240
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Polygon;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:Ljava/util/List;

    .line 242
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Polygon;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v2

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureHoles(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    .line 243
    .line 263
    :goto_0
    return-void

    .line 246
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    move-object v11, v2

    move-object v2, v11

    move-object v3, v11

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object v11, v2

    move-object v2, v11

    move-object v3, v11

    .line 247
    move-object v1, v3

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 248
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Polygon;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:Ljava/util/List;

    .line 249
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Polygon;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v2

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureHoles(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    .line 250
    goto :goto_0

    .line 252
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->multiPolygonHolesToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Polygon;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:Ljava/util/List;

    .line 253
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/Polygon;->initialized:Z

    if-eqz v2, :cond_2

    .line 254
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Polygon;->clearGeometry()V

    .line 255
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Polygon;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v2

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureHoles(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    .line 257
    :cond_2
    sget-object v2, Lcom/google/appinventor/components/runtime/Polygon;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    const-string/jumbo v5, "Points: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Polygon;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 262
    goto :goto_0

    .line 258
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 259
    sget-object v2, Lcom/google/appinventor/components/runtime/Polygon;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Unable to parse point string"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 260
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Polygon;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    move-object v3, v0

    const-string/jumbo v4, "HolePointsFromString"

    const/16 v5, 0xd4c

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v1

    .line 261
    invoke-virtual {v10}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 260
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 263
    goto/16 :goto_0
.end method

.method public Initialize()V
    .locals 3

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/Polygon;->initialized:Z

    .line 106
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Polygon;->clearGeometry()V

    .line 107
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Polygon;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v1

    move-object v2, v0

    invoke-interface {v1, v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    .line 108
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Polygon;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v1

    move-object v2, v0

    invoke-interface {v1, v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureHoles(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    .line 109
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Polygon;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v1

    move-object v2, v0

    invoke-interface {v1, v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureText(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 110
    return-void
.end method

.method public Points()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Gets or sets the sequence of points used to draw the polygon."
    .end annotation

    .prologue
    .line 123
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Polygon;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 124
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    move-object v0, v4

    .line 134
    :goto_0
    return-object v0

    .line 125
    :cond_0
    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/Polygon;->TcZoKXUijRhvOFm1gZ0ppEfXWxECqlUNNvncSPIfT3ZrTDcozo05OAb21mkMXciT:Z

    if-eqz v4, :cond_2

    .line 127
    new-instance v4, Ljava/util/LinkedList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    move-object v1, v4

    .line 128
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Polygon;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move-object v3, v4

    .line 129
    move-object v4, v1

    move-object v5, v3

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointsListToYailList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 130
    goto :goto_1

    .line 131
    :cond_1
    move-object v4, v1

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 134
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Polygon;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointsListToYailList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public Points(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 142
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    :try_start_0
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isPolygon(Lcom/google/appinventor/components/runtime/util/YailList;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Polygon;->TcZoKXUijRhvOFm1gZ0ppEfXWxECqlUNNvncSPIfT3ZrTDcozo05OAb21mkMXciT:Z

    .line 144
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Polygon;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 145
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Polygon;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/util/List;

    move-object v3, v1

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointsFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 153
    :goto_0
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/Polygon;->initialized:Z

    if-eqz v2, :cond_0

    .line 154
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Polygon;->clearGeometry()V

    .line 155
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Polygon;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v2

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    .line 159
    .line 160
    :cond_0
    :goto_1
    return-void

    .line 146
    :cond_1
    move-object v2, v1

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isMultiPolygon(Lcom/google/appinventor/components/runtime/util/YailList;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 147
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Polygon;->TcZoKXUijRhvOFm1gZ0ppEfXWxECqlUNNvncSPIfT3ZrTDcozo05OAb21mkMXciT:Z

    .line 148
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->multiPolygonFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Polygon;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/util/List;

    goto :goto_0

    .line 150
    :cond_2
    new-instance v2, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/16 v4, 0xd4c

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const-string/jumbo v8, "Unable to determine the structure of the points argument."

    aput-object v8, v6, v7

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw v2
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 158
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Polygon;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    move-object v3, v0

    const-string/jumbo v4, "Points"

    move-object v5, v1

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getErrorCode()I

    move-result v5

    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getArguments()[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 160
    goto :goto_1
.end method

.method public PointsFromString(Ljava/lang/String;)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Constructs a polygon from the given list of coordinates."
    .end annotation

    .prologue
    .line 166
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Polygon;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/util/List;

    .line 168
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Polygon;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v2

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    .line 169
    .line 192
    :goto_0
    return-void

    .line 172
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    move-object v11, v2

    move-object v2, v11

    move-object v3, v11

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object v11, v2

    move-object v2, v11

    move-object v3, v11

    .line 173
    move-object v1, v3

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 174
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Polygon;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/util/List;

    .line 175
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Polygon;->TcZoKXUijRhvOFm1gZ0ppEfXWxECqlUNNvncSPIfT3ZrTDcozo05OAb21mkMXciT:Z

    .line 176
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Polygon;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v2

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    .line 177
    goto :goto_0

    .line 179
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->multiPolygonToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Polygon;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/util/List;

    .line 180
    move-object v2, v0

    move-object v11, v2

    move-object v2, v11

    move-object v3, v11

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Polygon;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Polygon;->TcZoKXUijRhvOFm1gZ0ppEfXWxECqlUNNvncSPIfT3ZrTDcozo05OAb21mkMXciT:Z

    .line 181
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/Polygon;->initialized:Z

    if-eqz v2, :cond_2

    .line 182
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Polygon;->clearGeometry()V

    .line 183
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Polygon;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v2

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_0 .. :try_end_0} :catch_1

    .line 191
    :cond_2
    goto :goto_0

    .line 180
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 185
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 186
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Polygon;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    move-object v3, v0

    const-string/jumbo v4, "PointsFromString"

    const/16 v5, 0xd4c

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v1

    .line 187
    invoke-virtual {v10}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 186
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 191
    goto/16 :goto_0

    .line 188
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 189
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Polygon;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v2

    move-object v3, v0

    const-string/jumbo v4, "PointsFromString"

    move-object v5, v1

    .line 190
    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getErrorCode()I

    move-result v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v1

    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getArguments()[Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 189
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 192
    goto/16 :goto_0
.end method

.method public Type()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The type of the feature. For polygons, this returns the text \"Polygon\"."
    .end annotation

    .prologue
    .line 116
    move-object v0, p0

    const-string/jumbo v1, "Polygon"

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
    .line 283
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method protected computeGeometry()Lorg/locationtech/jts/geom/Geometry;
    .locals 3

    .prologue
    .line 288
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Polygon;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/util/List;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Polygon;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(Ljava/util/List;Ljava/util/List;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getHolePoints()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
    .line 278
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Polygon;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:Ljava/util/List;

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
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 273
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Polygon;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method public updateHolePoints(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 300
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Polygon;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 301
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Polygon;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v2

    .line 302
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Polygon;->clearGeometry()V

    .line 303
    return-void
.end method

.method public updatePoints(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 293
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Polygon;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 294
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Polygon;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v2

    .line 295
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Polygon;->clearGeometry()V

    .line 296
    return-void
.end method
