.class public Lcom/google/appinventor/components/runtime/Navigation;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MAPS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Navigation"
    iconName = "images/navigation.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "osmdroid.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Navigation$a;
    }
.end annotation


# static fields
.field public static final OPEN_ROUTE_SERVICE_URL:Ljava/lang/String; = "https://api.openrouteservice.org/v2/directions/"


# instance fields
.field private IQizCoownq3QMuqjiN3SEtpvqAzYOMGAuQhX0ytYpmBBjgggyq4HRoSxolTbNj90:Ljava/lang/String;

.field private hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Lorg/osmdroid/util/GeoPoint;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Navigation$a;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/YailDictionary;

.field private sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:Ljava/lang/String;

.field private vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

.field private vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lorg/osmdroid/util/GeoPoint;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 11

    .prologue
    .line 94
    move-object v1, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 66
    move-object v3, v1

    const-string/jumbo v4, "https://api.openrouteservice.org/v2/directions/"

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Navigation;->IQizCoownq3QMuqjiN3SEtpvqAzYOMGAuQhX0ytYpmBBjgggyq4HRoSxolTbNj90:Ljava/lang/String;

    .line 67
    move-object v3, v1

    const-string/jumbo v4, "en"

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Navigation;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

    .line 68
    move-object v3, v1

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->makeDictionary()Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Navigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 95
    move-object v3, v1

    const-string/jumbo v4, ""

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Navigation;->sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:Ljava/lang/String;

    .line 96
    move-object v3, v1

    new-instance v4, Lorg/osmdroid/util/GeoPoint;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Navigation;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lorg/osmdroid/util/GeoPoint;

    .line 97
    move-object v3, v1

    new-instance v4, Lorg/osmdroid/util/GeoPoint;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Navigation;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Lorg/osmdroid/util/GeoPoint;

    .line 98
    move-object v3, v1

    sget-object v4, Lcom/google/appinventor/components/runtime/Navigation$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lcom/google/appinventor/components/runtime/Navigation$a;

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Navigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Navigation$a;

    .line 99
    return-void
.end method

.method private static getResponseContent(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    .line 401
    move-object v1, v5

    if-nez v4, :cond_0

    .line 402
    const-string/jumbo v4, "UTF-8"

    move-object v1, v4

    .line 404
    :cond_0
    const-string/jumbo v4, "Navigation"

    move-object v5, v0

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 405
    new-instance v4, Ljava/io/InputStreamReader;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v1, v4

    .line 407
    move-object v4, v0

    :try_start_0
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    move v8, v4

    move v4, v8

    move v5, v8

    .line 408
    move v0, v5

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move v6, v0

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    move-object v0, v4

    .line 411
    const/16 v4, 0x400

    new-array v4, v4, [C

    move-object v2, v4

    .line 413
    :goto_1
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    move v8, v4

    move v4, v8

    move v5, v8

    move v3, v5

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 414
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x0

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_1

    .line 408
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 418
    :catchall_0
    move-exception v4

    move-object v0, v4

    move-object v4, v1

    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 419
    move-object v4, v0

    throw v4

    .line 416
    :cond_2
    move-object v4, v0

    :try_start_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    move-object v0, v4

    .line 418
    move-object v4, v1

    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 416
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Navigation;Lcom/google/appinventor/components/runtime/util/YailDictionary;)Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .locals 7

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Navigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Navigation;Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;Lcom/google/appinventor/components/runtime/Navigation$a;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 56
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v9, v0

    move-object v10, v1

    move-object v1, v10

    move-object v0, v9

    .line 1337
    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v20, v9

    move-object/from16 v9, v20

    move-object/from16 v10, v20

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v0

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/Navigation;->IQizCoownq3QMuqjiN3SEtpvqAzYOMGAuQhX0ytYpmBBjgggyq4HRoSxolTbNj90:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v3

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/Navigation$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Navigation$a;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/geojson/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 1338
    new-instance v9, Ljava/net/URL;

    move-object/from16 v20, v9

    move-object/from16 v9, v20

    move-object/from16 v10, v20

    move-object v11, v3

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1339
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;

    move-object/from16 v20, v9

    move-object/from16 v9, v20

    move-object/from16 v10, v20

    .line 1340
    move-object v3, v10

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 1341
    move-object v9, v3

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1342
    move-object v9, v3

    const-string/jumbo v10, "Content-Type"

    const-string/jumbo v11, "application/json; charset=UTF-8"

    invoke-virtual {v9, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    move-object v9, v3

    const-string/jumbo v10, "POST"

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1344
    move-object v9, v3

    const-string/jumbo v10, "Authorization"

    move-object v11, v0

    iget-object v11, v11, Lcom/google/appinventor/components/runtime/Navigation;->sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v20, v9

    move-object/from16 v9, v20

    move-object/from16 v10, v20

    const-string/jumbo v11, "{\"coordinates\": "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v10, v1

    move-object v11, v2

    .line 1347
    move-object v1, v11

    move-object v4, v10

    .line 1423
    const/4 v10, 0x2

    const/4 v11, 0x2

    filled-new-array {v10, v11}, [I

    move-result-object v11

    const-class v10, Ljava/lang/Double;

    invoke-static {v10, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[Ljava/lang/Double;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    .line 1424
    move-object v2, v11

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x0

    move-object v12, v4

    invoke-virtual {v12}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v10, v11

    .line 1425
    move-object v10, v2

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x1

    move-object v12, v4

    invoke-virtual {v12}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v10, v11

    .line 1426
    move-object v10, v2

    const/4 v11, 0x1

    aget-object v10, v10, v11

    const/4 v11, 0x0

    move-object v12, v1

    invoke-virtual {v12}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v10, v11

    .line 1427
    move-object v10, v2

    const/4 v11, 0x1

    aget-object v10, v10, v11

    const/4 v11, 0x1

    move-object v12, v1

    invoke-virtual {v12}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v10, v11

    .line 1428
    move-object v10, v2

    .line 1347
    invoke-static {v10}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", \"language\": \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/Navigation;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\"}"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1349
    const-string/jumbo v10, "UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    move-object v1, v9

    .line 1350
    move-object v9, v3

    move-object v10, v1

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 1351
    new-instance v9, Ljava/io/BufferedOutputStream;

    move-object/from16 v20, v9

    move-object/from16 v9, v20

    move-object/from16 v10, v20

    move-object v11, v3

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, v9

    .line 1353
    move-object v9, v2

    move-object v10, v1

    const/4 v11, 0x0

    move-object v12, v1

    :try_start_1
    array-length v12, v12

    invoke-virtual {v9, v10, v11, v12}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 1354
    move-object v9, v2

    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1356
    move-object v9, v2

    :try_start_2
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->close()V

    .line 1357
    .line 1359
    move-object v9, v3

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    const/16 v10, 0xc8

    if-eq v9, v10, :cond_0

    .line 1360
    move-object v9, v0

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/Navigation;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v10, v0

    const-string/jumbo v11, "RequestDirections"

    const/16 v12, 0xfa3

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    move-object/from16 v16, v3

    .line 1361
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    move-object/from16 v16, v3

    .line 1362
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 1360
    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1395
    move-object v9, v3

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1363
    .line 1396
    :goto_0
    return-void

    .line 1356
    :catchall_0
    move-exception v9

    move-object v1, v9

    move-object v9, v2

    :try_start_3
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->close()V

    .line 1357
    move-object v9, v1

    throw v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1390
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 1391
    move-object v9, v0

    :try_start_4
    iget-object v9, v9, Lcom/google/appinventor/components/runtime/Navigation;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v10, v0

    const-string/jumbo v11, "RequestDirections"

    const/16 v12, 0xfa2

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    move-object/from16 v16, v1

    .line 1392
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 1391
    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1393
    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1395
    move-object v9, v3

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1396
    goto :goto_0

    .line 1365
    :cond_0
    move-object v9, v3

    :try_start_5
    invoke-static {v9}, Lcom/google/appinventor/components/runtime/Navigation;->getResponseContent(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v9

    move-object v1, v9

    .line 1366
    const-string/jumbo v9, "Navigation"

    move-object v10, v1

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1367
    move-object v9, v1

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-object/from16 v20, v9

    move-object/from16 v9, v20

    move-object/from16 v10, v20

    .line 1368
    move-object v1, v10

    const-string/jumbo v10, "features"

    invoke-virtual {v9, v10}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/appinventor/components/runtime/util/YailList;

    move-object/from16 v20, v9

    move-object/from16 v9, v20

    move-object/from16 v10, v20

    .line 1369
    move-object v2, v10

    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 1370
    move-object v9, v2

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-object/from16 v20, v9

    move-object/from16 v9, v20

    move-object/from16 v10, v20

    .line 1371
    move-object v2, v10

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/4 v12, 0x0

    const-string/jumbo v13, "properties"

    aput-object v13, v11, v12

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/4 v12, 0x1

    const-string/jumbo v13, "summary"

    aput-object v13, v11, v12

    .line 1372
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->getObjectAtKeyPath(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-object/from16 v20, v9

    move-object/from16 v9, v20

    move-object/from16 v10, v20

    .line 1373
    move-object v4, v10

    const-string/jumbo v10, "distance"

    invoke-virtual {v9, v10}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    move-wide v5, v9

    .line 1374
    move-object v9, v4

    const-string/jumbo v10, "duration"

    invoke-virtual {v9, v10}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    move-wide v7, v9

    .line 1375
    move-object v9, v2

    .line 1438
    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/4 v12, 0x0

    const-string/jumbo v13, "properties"

    aput-object v13, v11, v12

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/4 v12, 0x1

    const-string/jumbo v13, "segments"

    aput-object v13, v11, v12

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/4 v12, 0x2

    sget-object v13, Lcom/google/appinventor/components/runtime/util/YailDictionary;->ALL:Ljava/lang/Object;

    aput-object v13, v11, v12

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/4 v12, 0x3

    const-string/jumbo v13, "steps"

    aput-object v13, v11, v12

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/4 v12, 0x4

    sget-object v13, Lcom/google/appinventor/components/runtime/util/YailDictionary;->ALL:Ljava/lang/Object;

    aput-object v13, v11, v12

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/4 v12, 0x5

    const-string/jumbo v13, "instruction"

    aput-object v13, v11, v12

    .line 1439
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 1438
    invoke-static {v9, v10}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->walkKeyPath(Lcom/google/appinventor/components/runtime/util/YailObject;Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 1375
    invoke-static {v9}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v9

    move-object v4, v9

    .line 1376
    move-object v9, v2

    .line 2432
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/4 v12, 0x0

    const-string/jumbo v13, "geometry"

    aput-object v13, v11, v12

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/4 v12, 0x1

    const-string/jumbo v13, "coordinates"

    aput-object v13, v11, v12

    .line 2433
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->getObjectAtKeyPath(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 2434
    invoke-static {v9}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->swapCoordinates(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v9

    .line 1376
    move-object v2, v9

    .line 1378
    move-object v9, v0

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/Navigation;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v10, Lcom/google/appinventor/components/runtime/Navigation$2;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    move-object v12, v0

    move-object v13, v1

    move-object v14, v4

    move-object v15, v2

    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v11 .. v19}, Lcom/google/appinventor/components/runtime/Navigation$2;-><init>(Lcom/google/appinventor/components/runtime/Navigation;Lcom/google/appinventor/components/runtime/util/YailDictionary;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;DD)V

    invoke-virtual {v9, v10}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1385
    .line 1395
    :goto_1
    move-object v9, v3

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1396
    goto/16 :goto_0

    .line 1387
    :cond_1
    move-object v9, v0

    :try_start_6
    iget-object v9, v9, Lcom/google/appinventor/components/runtime/Navigation;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v10, v0

    const-string/jumbo v11, "RequestDirections"

    const/16 v12, 0xfa4

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 1395
    :catchall_1
    move-exception v9

    move-object v0, v9

    move-object v9, v3

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1396
    move-object v9, v0

    throw v9
.end method


# virtual methods
.method public ApiKey(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "API Key for Open Route Service."
    .end annotation

    .prologue
    .line 151
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Navigation;->sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public EndLatitude()D
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The latitude of the end location."
    .end annotation

    .prologue
    .line 221
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Navigation;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public EndLatitude(D)V
    .locals 15
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "latitude"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 210
    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide v4, v2

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLatitude(D)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 211
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Navigation;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Lorg/osmdroid/util/GeoPoint;

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    .line 216
    :goto_0
    return-void

    .line 213
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v4

    move-object v5, v1

    const-string/jumbo v6, "EndLatitude"

    const/16 v7, 0xd55

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x0

    move-wide v11, v2

    .line 214
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    .line 213
    invoke-interface {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 216
    goto :goto_0
.end method

.method public EndLocation(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 16
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the end location."
    .end annotation

    .prologue
    .line 270
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v6, v1

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v6

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    .line 271
    move-object v1, v7

    invoke-virtual {v6}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    move-wide v2, v6

    .line 272
    move-object v6, v1

    invoke-virtual {v6}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    move-wide v4, v6

    .line 273
    move-wide v6, v2

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLatitude(D)Z

    move-result v6

    if-nez v6, :cond_0

    .line 274
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v6

    move-object v7, v0

    const-string/jumbo v8, "SetEndLocation"

    const/16 v9, 0xd55

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    move-wide v13, v2

    .line 275
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v11, v12

    .line 274
    invoke-interface {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 282
    :goto_0
    return-void

    .line 276
    :cond_0
    move-wide v6, v4

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLongitude(D)Z

    move-result v6

    if-nez v6, :cond_1

    .line 277
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v6

    move-object v7, v0

    const-string/jumbo v8, "SetEndLocation"

    const/16 v9, 0xd56

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    move-wide v13, v4

    .line 278
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v11, v12

    .line 277
    invoke-interface {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 280
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Navigation;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Lorg/osmdroid/util/GeoPoint;

    move-wide v7, v2

    move-wide v9, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/osmdroid/util/GeoPoint;->setCoords(DD)V

    .line 282
    goto :goto_0
.end method

.method public EndLongitude()D
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The longitude of the end location."
    .end annotation

    .prologue
    .line 239
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Navigation;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public EndLongitude(D)V
    .locals 15
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "longitude"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 228
    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide v4, v2

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLongitude(D)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 229
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Navigation;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Lorg/osmdroid/util/GeoPoint;

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    .line 234
    :goto_0
    return-void

    .line 231
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v4

    move-object v5, v1

    const-string/jumbo v6, "EndLongitude"

    const/16 v7, 0xd56

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x0

    move-wide v11, v2

    .line 232
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    .line 231
    invoke-interface {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 234
    goto :goto_0
.end method

.method public GotDirections(Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;DD)V
    .locals 15
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when the Openrouteservice returns the directions."
    .end annotation

    .prologue
    .line 329
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    const-string/jumbo v7, "Navigation"

    const-string/jumbo v8, "GotDirections"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 330
    move-object v7, v0

    const-string/jumbo v8, "GotDirections"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    move-object v12, v1

    aput-object v12, v10, v11

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x1

    move-object v12, v2

    aput-object v12, v10, v11

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x2

    move-wide v12, v3

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v10, v11

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x3

    move-wide v12, v5

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v7

    .line 331
    return-void
.end method

.method public Language()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 297
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Navigation;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public Language(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "en"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The language to use for textual directions."
    .end annotation

    .prologue
    .line 292
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Navigation;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public RequestDirections()V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Request directions from the routing service."
    .end annotation

    .prologue
    .line 110
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Navigation;->sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 111
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Navigation;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    const-string/jumbo v6, "Authorization"

    const/16 v7, 0xfa1

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 112
    .line 132
    :goto_0
    return-void

    .line 114
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Navigation;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lorg/osmdroid/util/GeoPoint;

    move-object v1, v4

    .line 115
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Navigation;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Lorg/osmdroid/util/GeoPoint;

    move-object v2, v4

    .line 116
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Navigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Navigation$a;

    move-object v3, v4

    .line 117
    new-instance v4, Lcom/google/appinventor/components/runtime/Navigation$1;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Navigation$1;-><init>(Lcom/google/appinventor/components/runtime/Navigation;Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;Lcom/google/appinventor/components/runtime/Navigation$a;)V

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 132
    goto :goto_0
.end method

.method public ResponseContent()Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Content of the last response as a dictionary."
    .end annotation

    .prologue
    .line 308
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Navigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-object v0, v1

    return-object v0
.end method

.method public ServiceURL(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 139
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Navigation;->IQizCoownq3QMuqjiN3SEtpvqAzYOMGAuQhX0ytYpmBBjgggyq4HRoSxolTbNj90:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public StartLatitude()D
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The latitude of the start location."
    .end annotation

    .prologue
    .line 169
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Navigation;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public StartLatitude(D)V
    .locals 15
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "latitude"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 158
    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide v4, v2

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLatitude(D)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 159
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Navigation;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lorg/osmdroid/util/GeoPoint;

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    .line 164
    :goto_0
    return-void

    .line 161
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v4

    move-object v5, v1

    const-string/jumbo v6, "StartLatitude"

    const/16 v7, 0xd55

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x0

    move-wide v11, v2

    .line 162
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    .line 161
    invoke-interface {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 164
    goto :goto_0
.end method

.method public StartLocation(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 16
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the start location."
    .end annotation

    .prologue
    .line 192
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v6, v1

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v6

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    .line 193
    move-object v1, v7

    invoke-virtual {v6}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    move-wide v2, v6

    .line 194
    move-object v6, v1

    invoke-virtual {v6}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    move-wide v4, v6

    .line 195
    move-wide v6, v2

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLatitude(D)Z

    move-result v6

    if-nez v6, :cond_0

    .line 196
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v6

    move-object v7, v0

    const-string/jumbo v8, "SetStartLocation"

    const/16 v9, 0xd55

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    move-wide v13, v2

    .line 197
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v11, v12

    .line 196
    invoke-interface {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 204
    :goto_0
    return-void

    .line 198
    :cond_0
    move-wide v6, v4

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLongitude(D)Z

    move-result v6

    if-nez v6, :cond_1

    .line 199
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v6

    move-object v7, v0

    const-string/jumbo v8, "SetStartLocation"

    const/16 v9, 0xd56

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    move-wide v13, v4

    .line 200
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v11, v12

    .line 199
    invoke-interface {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 202
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Navigation;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lorg/osmdroid/util/GeoPoint;

    move-wide v7, v2

    move-wide v9, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/osmdroid/util/GeoPoint;->setCoords(DD)V

    .line 204
    goto :goto_0
.end method

.method public StartLongitude()D
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The longitude of the start location."
    .end annotation

    .prologue
    .line 187
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Navigation;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public StartLongitude(D)V
    .locals 15
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "longitude"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 176
    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide v4, v2

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLongitude(D)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 177
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Navigation;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lorg/osmdroid/util/GeoPoint;

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    .line 182
    :goto_0
    return-void

    .line 179
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v4

    move-object v5, v1

    const-string/jumbo v6, "StartLongitude"

    const/16 v7, 0xd56

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x0

    move-wide v11, v2

    .line 180
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    .line 179
    invoke-interface {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 182
    goto :goto_0
.end method

.method public TransportationMethod()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 244
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Navigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Navigation$a;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Navigation$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Navigation$a;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public TransportationMethod(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "foot-walking"
        editorType = "navigation_method"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The transportation method used for determining the route."
    .end annotation

    .prologue
    .line 261
    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Lcom/google/appinventor/components/runtime/Navigation$a;->values()[Lcom/google/appinventor/components/runtime/Navigation$a;

    move-result-object v6

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    move-object v2, v7

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 262
    move-object v6, v1

    move-object v7, v5

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/Navigation$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Navigation$a;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 263
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lcom/google/appinventor/components/runtime/Navigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Navigation$a;

    .line 261
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 266
    :cond_1
    return-void
.end method
