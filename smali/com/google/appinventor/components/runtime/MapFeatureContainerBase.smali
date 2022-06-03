.class public abstract Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final ERROR_CODE_IO_EXCEPTION:I = -0x2

.field private static final ERROR_CODE_MALFORMED_GEOJSON:I = -0x3

.field private static final ERROR_CODE_MALFORMED_URL:I = -0x1

.field private static final ERROR_CODE_UNKNOWN_TYPE:I = -0x4

.field private static final ERROR_IO_EXCEPTION:Ljava/lang/String; = "Unable to download content from URL"

.field private static final ERROR_MALFORMED_GEOJSON:Ljava/lang/String; = "Malformed GeoJSON response. Expected FeatureCollection as root element."

.field private static final ERROR_MALFORMED_URL:Ljava/lang/String; = "The URL is malformed"

.field private static final ERROR_UNKNOWN_TYPE:Ljava/lang/String; = "Unrecognized/invalid type in JSON object"

.field private static final GEOJSON_FEATURECOLLECTION:Ljava/lang/String; = "FeatureCollection"

.field private static final GEOJSON_FEATURES:Ljava/lang/String; = "features"

.field private static final GEOJSON_GEOMETRYCOLLECTION:Ljava/lang/String; = "GeometryCollection"

.field private static final GEOJSON_TYPE:Ljava/lang/String; = "type"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final featureAdder:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field protected features:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 7

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 62
    move-object v2, v0

    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    .line 64
    move-object v2, v0

    new-instance v3, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$1;-><init>(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->featureAdder:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->performGet(Ljava/lang/String;)V

    return-void
.end method

.method private loadUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    .prologue
    .line 339
    move-object v0, p0

    move-object v1, p1

    :try_start_0
    new-instance v6, Ljava/net/URL;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v1

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    .line 340
    move-object v2, v7

    invoke-virtual {v6}, Ljava/net/URLConnection;->connect()V

    .line 341
    move-object v6, v2

    instance-of v6, v6, Ljava/net/HttpURLConnection;

    if-eqz v6, :cond_0

    .line 342
    move-object v6, v2

    check-cast v6, Ljava/net/HttpURLConnection;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    .line 343
    move-object v3, v7

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    move v4, v6

    .line 344
    move-object v6, v3

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 345
    move v6, v4

    const/16 v7, 0xc8

    if-eq v6, v7, :cond_0

    .line 346
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    new-instance v7, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$3;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    move-object v10, v1

    move v11, v4

    move-object v12, v5

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$3;-><init>(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 351
    move-object v6, v3

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 352
    const/4 v6, 0x0

    move-object v0, v6

    .line 380
    :goto_0
    return-object v0

    .line 355
    :cond_0
    new-instance v6, Ljava/io/BufferedReader;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    new-instance v8, Ljava/io/InputStreamReader;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v2

    invoke-virtual {v10}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    const-string/jumbo v11, "UTF-8"

    invoke-direct {v9, v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v6

    .line 357
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v6

    .line 359
    :goto_1
    move-object v6, v3

    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v5, v7

    if-eqz v6, :cond_1

    .line 360
    move-object v6, v4

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 361
    move-object v6, v4

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    goto :goto_1

    .line 363
    :cond_1
    move-object v6, v3

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 364
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 366
    :catch_0
    move-exception v6

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    new-instance v7, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$4;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    move-object v10, v1

    invoke-direct {v8, v9, v10}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$4;-><init>(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 379
    .line 380
    :goto_2
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 373
    :catch_1
    move-exception v6

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    new-instance v7, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$5;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    move-object v10, v1

    invoke-direct {v8, v9, v10}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$5;-><init>(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method private performGet(Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 325
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->loadUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    .line 326
    move-object v2, v4

    if-nez v3, :cond_0

    .line 327
    .line 335
    :goto_0
    return-void

    .line 329
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->processGeoJSON(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    goto :goto_0

    .line 330
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 331
    sget-object v3, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Exception retreiving GeoJSON"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    .line 332
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    move-object v4, v0

    const-string/jumbo v5, "LoadFromURL"

    const/4 v6, -0x4

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v2

    .line 333
    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 332
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 335
    goto :goto_0
.end method


# virtual methods
.method public $add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 6

    .prologue
    .line 270
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Map.$add() called"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public $context()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 260
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public $form()Lcom/google/appinventor/components/runtime/Form;
    .locals 2

    .prologue
    .line 265
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public FeatureClick(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user clicked on a map feature."
    .end annotation

    .prologue
    .line 136
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "FeatureClick"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 137
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v2

    move-object v3, v0

    if-eq v2, v3, :cond_0

    .line 138
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Map;->FeatureClick(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 140
    :cond_0
    return-void
.end method

.method public FeatureDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user dragged a map feature."
    .end annotation

    .prologue
    .line 160
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "FeatureDrag"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 161
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v2

    move-object v3, v0

    if-eq v2, v3, :cond_0

    .line 162
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Map;->FeatureDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 164
    :cond_0
    return-void
.end method

.method public FeatureFromDescription(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Object;
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 220
    move-object v0, p0

    move-object v1, p1

    :try_start_0
    sget-object v2, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->TAG:Ljava/lang/String;

    move-object v3, v0

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->processGeoJSONFeature(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 224
    :goto_0
    return-object v0

    .line 221
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 222
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    move-object v3, v0

    const-string/jumbo v4, "FeatureFromDescription"

    const/4 v5, -0x3

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

    .line 223
    invoke-virtual {v10}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 222
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v11, v2

    move-object v2, v11

    move-object v3, v11

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public FeatureLongClick(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user long-pressed on a map feature."
    .end annotation

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "FeatureLongClick"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 145
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v2

    move-object v3, v0

    if-eq v2, v3, :cond_0

    .line 146
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Map;->FeatureLongClick(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 148
    :cond_0
    return-void
.end method

.method public FeatureStartDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user started dragging a map feature."
    .end annotation

    .prologue
    .line 152
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "FeatureStartDrag"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 153
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v2

    move-object v3, v0

    if-eq v2, v3, :cond_0

    .line 154
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Map;->FeatureStartDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 156
    :cond_0
    return-void
.end method

.method public FeatureStopDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user stopped dragging a map feature."
    .end annotation

    .prologue
    .line 168
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "FeatureStopDrag"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 169
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v2

    move-object v3, v0

    if-eq v2, v3, :cond_0

    .line 170
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Map;->FeatureStopDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 172
    :cond_0
    return-void
.end method

.method public Features()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The list of features placed on this map. This list also includes any features created by calls to FeatureFromDescription"
    .end annotation

    .prologue
    .line 131
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public Features(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 108
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v3

    :goto_0
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .line 109
    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->removeFromMap()V

    .line 110
    goto :goto_0

    .line 111
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 112
    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/YailList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    move-object v2, v3

    .line 113
    :goto_1
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 114
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 115
    move-object v1, v4

    instance-of v3, v3, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    if-eqz v3, :cond_1

    .line 116
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 118
    :cond_1
    goto :goto_1

    .line 119
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Map;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 120
    return-void
.end method

.method public GotFeatures(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "A GeoJSON document was successfully read from url. The features specified in the document are provided as a list in features."
    .end annotation

    .prologue
    .line 231
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    const-string/jumbo v4, "GotFeatures"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 233
    move-object v3, v2

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    .line 234
    move-object v1, v4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 235
    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 236
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->FeatureFromDescription(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 239
    :cond_0
    return-void
.end method

.method public LoadError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "An error was encountered while processing a GeoJSON document at the given url. The responseCode parameter will contain an HTTP status code and the errorMessage parameter will contain a detailed error message."
    .end annotation

    .prologue
    .line 245
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move-object v4, v0

    const-string/jumbo v5, "LoadError"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x1

    move v9, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x2

    move-object v9, v3

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 248
    move-object v4, v1

    const-string/jumbo v5, "file:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 249
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    move-object v5, v0

    const-string/jumbo v6, "LoadFromURL"

    const/16 v7, 0x836

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 256
    :goto_0
    return-void

    .line 252
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    move-object v5, v0

    const-string/jumbo v6, "LoadFromURL"

    const/16 v7, 0x44d

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 256
    :cond_1
    goto :goto_0
.end method

.method public LoadFromURL(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "<p>Load a feature collection in <a href=\"https://en.wikipedia.org/wiki/GeoJSON\">GeoJSON</a> format from the given url. On success, the event GotFeatures will be raised with the given url and a list of the features parsed from the GeoJSON as a list of (key, value) pairs. On failure, the LoadError event will be raised with any applicable HTTP response code and error message.</p>"
    .end annotation

    .prologue
    .line 190
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$2;-><init>(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 195
    return-void
.end method

.method addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V
    .locals 4

    .prologue
    .line 309
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 310
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Map;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V

    .line 311
    return-void
.end method

.method public addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 5

    .prologue
    .line 320
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->featureAdder:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->accept(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 321
    return-void
.end method

.method addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V
    .locals 4

    .prologue
    .line 299
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 300
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Map;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V

    .line 301
    return-void
.end method

.method addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
    .locals 4

    .prologue
    .line 294
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 295
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Map;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    .line 296
    return-void
.end method

.method addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    .locals 4

    .prologue
    .line 304
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 305
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Map;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    .line 306
    return-void
.end method

.method addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V
    .locals 4

    .prologue
    .line 314
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 315
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Map;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V

    .line 316
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method protected processGeoJSON(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 385
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v2

    const-string/jumbo v5, "type"

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->getGeoJSONType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 386
    const-string/jumbo v4, "FeatureCollection"

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "GeometryCollection"

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 387
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    new-instance v5, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$6;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$6;-><init>(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 393
    .line 401
    :goto_0
    return-void

    .line 395
    :cond_0
    sget-object v4, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->TAG:Ljava/lang/String;

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->getGeoJSONFeatures(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    move-object v2, v4

    .line 396
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    new-instance v5, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$7;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$7;-><init>(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 401
    goto :goto_0
.end method

.method public removeFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 4

    .prologue
    .line 284
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 285
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Map;->removeFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 286
    return-void
.end method

.method public setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 7

    .prologue
    .line 280
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Map.setChildHeight called"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 7

    .prologue
    .line 275
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Map.setChildWidth called"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
