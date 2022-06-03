.class public Lcom/google/appinventor/components/runtime/util/JsonUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BINFILE_DIR:Ljava/lang/String; = "/AppInventorBinaries"

.field private static LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string/jumbo v0, "JsonUtil"

    sput-object v0, Lcom/google/appinventor/components/runtime/util/JsonUtil;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static GetJsonAsBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    .line 506
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    move v2, v3

    .line 508
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 509
    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move v2, v3

    .line 512
    .line 513
    :goto_0
    move v3, v2

    move v0, v3

    return v0

    .line 510
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 511
    sget-object v3, Lcom/google/appinventor/components/runtime/util/JsonUtil;->LOG_TAG:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public static GetJsonAsDouble(Ljava/lang/String;Ljava/lang/String;)D
    .locals 8

    .prologue
    .line 548
    move-object v0, p0

    move-object v1, p1

    const-wide/16 v4, 0x0

    move-wide v2, v4

    .line 550
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 551
    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    move-wide v2, v4

    .line 554
    .line 555
    :goto_0
    move-wide v4, v2

    move-wide v0, v4

    return-wide v0

    .line 552
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 553
    sget-object v4, Lcom/google/appinventor/components/runtime/util/JsonUtil;->LOG_TAG:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method public static GetJsonAsInt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .prologue
    .line 520
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    move v2, v3

    .line 522
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 523
    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move v2, v3

    .line 526
    .line 527
    :goto_0
    move v3, v2

    move v0, v3

    return v0

    .line 524
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 525
    sget-object v3, Lcom/google/appinventor/components/runtime/util/JsonUtil;->LOG_TAG:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public static GetJsonAsLong(Ljava/lang/String;Ljava/lang/String;)J
    .locals 8

    .prologue
    .line 534
    move-object v0, p0

    move-object v1, p1

    const-wide/16 v4, 0x0

    move-wide v2, v4

    .line 536
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 537
    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    move-wide v2, v4

    .line 540
    .line 541
    :goto_0
    move-wide v4, v2

    move-wide v0, v4

    return-wide v0

    .line 538
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 539
    sget-object v4, Lcom/google/appinventor/components/runtime/util/JsonUtil;->LOG_TAG:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method public static GetJsonAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 488
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->GetJsonAsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static GetJsonAsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 494
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 495
    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v2, v3

    .line 498
    .line 499
    :goto_0
    move-object v3, v2

    move-object v0, v3

    return-object v0

    .line 496
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 497
    sget-object v3, Lcom/google/appinventor/components/runtime/util/JsonUtil;->LOG_TAG:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public static GetJsonFromArrayAsString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    .prologue
    .line 562
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 564
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 565
    move v5, v2

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 566
    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v3, v4

    .line 569
    .line 570
    :goto_0
    move-object v4, v3

    move-object v0, v4

    return-object v0

    .line 567
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 568
    sget-object v4, Lcom/google/appinventor/components/runtime/util/JsonUtil;->LOG_TAG:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method public static convertJsonItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 181
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->convertJsonItem(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static convertJsonItem(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 204
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    if-nez v2, :cond_0

    .line 205
    const-string/jumbo v2, "null"

    move-object v0, v2

    .line 238
    :goto_0
    return-object v0

    .line 208
    :cond_0
    move-object v2, v0

    instance-of v2, v2, Lorg/json/JSONObject;

    if-eqz v2, :cond_2

    .line 209
    move v2, v1

    if-eqz v2, :cond_1

    .line 210
    move-object v2, v0

    check-cast v2, Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getDictionaryFromJsonObject(Lorg/json/JSONObject;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 212
    :cond_1
    move-object v2, v0

    check-cast v2, Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getListFromJsonObject(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 216
    :cond_2
    move-object v2, v0

    instance-of v2, v2, Lorg/json/JSONArray;

    if-eqz v2, :cond_4

    .line 217
    move-object v2, v0

    check-cast v2, Lorg/json/JSONArray;

    move v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getListFromJsonArray(Lorg/json/JSONArray;Z)Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    .line 218
    move v2, v1

    if-eqz v2, :cond_3

    .line 219
    move-object v2, v0

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 221
    :cond_3
    move-object v2, v0

    move-object v0, v2

    goto :goto_0

    .line 225
    :cond_4
    move-object v2, v0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object v2, v0

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_6

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "false"

    .line 226
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 227
    :cond_5
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v2

    goto :goto_0

    .line 230
    :cond_6
    move-object v2, v0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move-object v2, v0

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_8

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 231
    :cond_7
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v0, v2

    goto :goto_0

    .line 234
    :cond_8
    move-object v2, v0

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_9

    .line 235
    move-object v2, v0

    move-object v0, v2

    goto :goto_0

    .line 238
    :cond_9
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public static getDictionaryFromJsonObject(Lorg/json/JSONObject;)Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 141
    move-object v0, p0

    new-instance v4, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    move-object v1, v4

    .line 144
    new-instance v4, Ljava/util/TreeSet;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    move-object v2, v4

    .line 145
    move-object v4, v0

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, v4

    .line 146
    :goto_0
    move-object v4, v3

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 147
    move-object v4, v2

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    .line 151
    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

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

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    .line 152
    move-object v4, v1

    move-object v5, v3

    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->convertJsonItem(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 153
    goto :goto_1

    .line 155
    :cond_1
    move-object v4, v1

    move-object v0, v4

    return-object v0
.end method

.method public static getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 242
    move-object v0, p0

    move-object v6, v0

    if-eqz v6, :cond_0

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 243
    :cond_0
    const-string/jumbo v6, "null"

    move-object v0, v6

    .line 296
    :goto_0
    return-object v0

    .line 245
    :cond_1
    move-object v6, v0

    instance-of v6, v6, Lgnu/lists/FString;

    if-eqz v6, :cond_2

    .line 246
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 248
    :cond_2
    move-object v6, v0

    instance-of v6, v6, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v6, :cond_3

    .line 249
    move-object v6, v0

    check-cast v6, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/util/YailList;->toJSONString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 258
    :cond_3
    move-object v6, v0

    instance-of v6, v6, Lgnu/math/IntFraction;

    if-eqz v6, :cond_4

    .line 259
    move-object v6, v0

    check-cast v6, Lgnu/math/IntFraction;

    invoke-virtual {v6}, Lgnu/math/IntFraction;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v6}, Lorg/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 261
    :cond_4
    move-object v6, v0

    instance-of v6, v6, Ljava/lang/Number;

    if-eqz v6, :cond_5

    .line 262
    move-object v6, v0

    check-cast v6, Ljava/lang/Number;

    invoke-static {v6}, Lorg/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 264
    :cond_5
    move-object v6, v0

    instance-of v6, v6, Ljava/lang/Boolean;

    if-eqz v6, :cond_6

    .line 265
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 267
    :cond_6
    move-object v6, v0

    instance-of v6, v6, Ljava/util/List;

    if-eqz v6, :cond_7

    .line 268
    move-object v6, v0

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    .line 270
    :cond_7
    move-object v6, v0

    instance-of v6, v6, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    if-eqz v6, :cond_9

    .line 271
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v6

    .line 272
    move-object v6, v0

    check-cast v6, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-object v2, v6

    .line 273
    const-string/jumbo v6, ""

    move-object v0, v6

    .line 274
    move-object v6, v1

    const/16 v7, 0x7b

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 275
    move-object v6, v2

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    :goto_1
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    move-object v4, v6

    .line 276
    move-object v6, v1

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 277
    move-object v6, v1

    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 278
    move-object v6, v1

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 279
    move-object v6, v1

    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 280
    const-string/jumbo v6, ","

    move-object v0, v6

    .line 281
    goto :goto_1

    .line 282
    :cond_8
    move-object v6, v1

    const/16 v7, 0x7d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 283
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto/16 :goto_0

    .line 285
    :cond_9
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 286
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    .line 287
    move-object v1, v7

    const-string/jumbo v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 288
    const-string/jumbo v6, ""

    move-object v2, v6

    .line 289
    move-object v6, v0

    check-cast v6, [Ljava/lang/Object;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    move-object v0, v7

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_2
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_a

    move-object v6, v0

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 290
    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v5

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 291
    const-string/jumbo v6, ","

    move-object v2, v6

    .line 289
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 293
    :cond_a
    move-object v6, v1

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 294
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto/16 :goto_0

    .line 296
    :cond_b
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto/16 :goto_0
.end method

.method public static getJsonRepresentationIfValueFileName(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 401
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    :try_start_0
    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 402
    new-instance v2, Lorg/json/JSONArray;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 403
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getStringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    move-object v1, v2

    .line 410
    :goto_0
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 411
    move-object v2, v1

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 412
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v4, v1

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->writeFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 413
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "Filename Written: "

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 414
    move-object v2, v1

    const-string/jumbo v3, "file:/"

    const-string/jumbo v4, "file:///"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 415
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 424
    :goto_1
    return-object v0

    .line 404
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljava/util/List;

    if-eqz v2, :cond_1

    .line 405
    move-object v2, v1

    check-cast v2, Ljava/util/List;

    move-object v1, v2

    goto :goto_0

    .line 407
    :cond_1
    new-instance v2, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "getJsonRepresentationIfValueFileName called on unknown type"

    move-object v5, v1

    .line 408
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 423
    sget-object v2, Lcom/google/appinventor/components/runtime/util/JsonUtil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "JSONException"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 424
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_1

    .line 417
    :cond_2
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_1

    .line 420
    :cond_3
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_1
.end method

.method public static getJsonRepresentationIfValueFileName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 372
    move-object v0, p0

    sget-object v1, Lcom/google/appinventor/components/runtime/util/JsonUtil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Calling deprecated function getJsonRepresentationIfValueFileName"

    new-instance v3, Ljava/lang/IllegalAccessException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/IllegalAccessException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    .line 374
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    move-object v2, v0

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentationIfValueFileName(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getListFromJsonArray(Lorg/json/JSONArray;Z)Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getListFromJsonArray(Lorg/json/JSONArray;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    move v1, p1

    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v4

    .line 87
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move-object v5, v0

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 88
    move-object v4, v2

    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    move v6, v1

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->convertJsonItem(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 87
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 90
    :cond_0
    move-object v4, v2

    move-object v0, v4

    return-object v0
.end method

.method public static getListFromJsonObject(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 108
    move-object v0, p0

    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v5

    .line 109
    move-object v5, v0

    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    .line 111
    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v5

    .line 112
    :goto_0
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 113
    move-object v5, v3

    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0

    .line 115
    :cond_0
    move-object v5, v3

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 117
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_1
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v3, v5

    .line 118
    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    .line 119
    move-object v4, v6

    move-object v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 120
    move-object v5, v4

    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->convertJsonItem(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 121
    move-object v5, v1

    move-object v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 122
    goto :goto_1

    .line 124
    :cond_1
    move-object v5, v1

    move-object v0, v5

    return-object v0
.end method

.method public static getObjectFromJson(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 313
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 328
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v0

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    :cond_0
    const-string/jumbo v2, ""

    move-object v0, v2

    .line 349
    :goto_0
    return-object v0

    .line 335
    :cond_1
    new-instance v2, Lorg/json/JSONTokener;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 337
    move-object v0, v3

    if-eqz v2, :cond_2

    move-object v2, v0

    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 338
    :cond_2
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 339
    :cond_3
    move-object v2, v0

    instance-of v2, v2, Ljava/lang/String;

    if-nez v2, :cond_4

    move-object v2, v0

    instance-of v2, v2, Ljava/lang/Number;

    if-nez v2, :cond_4

    move-object v2, v0

    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    .line 342
    :cond_4
    move-object v2, v0

    move-object v0, v2

    goto :goto_0

    .line 343
    :cond_5
    move-object v2, v0

    instance-of v2, v2, Lorg/json/JSONArray;

    if-eqz v2, :cond_6

    .line 344
    move-object v2, v0

    check-cast v2, Lorg/json/JSONArray;

    move v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getListFromJsonArray(Lorg/json/JSONArray;Z)Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 345
    :cond_6
    move-object v2, v0

    instance-of v2, v2, Lorg/json/JSONObject;

    if-eqz v2, :cond_8

    .line 346
    move v2, v1

    if-eqz v2, :cond_7

    .line 347
    move-object v2, v0

    check-cast v2, Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getDictionaryFromJsonObject(Lorg/json/JSONObject;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 349
    :cond_7
    move-object v2, v0

    check-cast v2, Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getListFromJsonObject(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 352
    :cond_8
    new-instance v2, Lorg/json/JSONException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Invalid JSON string."

    invoke-direct {v3, v4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getStringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    .line 63
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move-object v5, v0

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 64
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 65
    move-object v4, v1

    move-object v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 63
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_0
    move-object v4, v1

    move-object v0, v4

    return-object v0
.end method

.method private static trimDirectory(ILjava/io/File;)V
    .locals 7

    .prologue
    .line 467
    move v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 469
    move-object v1, v4

    new-instance v4, Lcom/google/appinventor/components/runtime/util/JsonUtil$1;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lcom/google/appinventor/components/runtime/util/JsonUtil$1;-><init>()V

    invoke-static {v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 475
    move-object v3, v1

    array-length v3, v3

    move v4, v0

    sub-int/2addr v3, v4

    move v0, v3

    .line 476
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move v4, v0

    if-ge v3, v4, :cond_0

    .line 477
    move-object v3, v1

    move v4, v2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    .line 476
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 479
    :cond_0
    return-void
.end method

.method private static writeFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 441
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v4, 0x0

    move-object v3, v4

    .line 443
    move-object v4, v2

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 444
    new-instance v4, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "File Extension must be three or four characters"

    const-string/jumbo v7, "Write Error"

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 457
    :try_start_1
    new-instance v4, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Write"

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 459
    :catchall_0
    move-exception v4

    move-object v0, v4

    sget-object v4, Lcom/google/appinventor/components/runtime/util/JsonUtil;->LOG_TAG:Ljava/lang/String;

    move-object v5, v3

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 460
    move-object v4, v0

    throw v4

    .line 446
    :cond_0
    move-object v4, v1

    const/4 v5, 0x0

    :try_start_2
    invoke-static {v4, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    move-object v1, v4

    .line 447
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/AppInventorBinaries"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 448
    new-instance v4, Ljava/io/File;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    .line 449
    move-object v0, v5

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v4

    .line 450
    const-string/jumbo v4, "BinFile"

    const-string/jumbo v5, "."

    move-object v6, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v0

    invoke-static {v4, v5, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    move-object v2, v4

    .line 451
    new-instance v4, Ljava/io/FileOutputStream;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v2

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    .line 452
    move-object v3, v5

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 453
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 454
    const/16 v4, 0x14

    move-object v5, v0

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->trimDirectory(ILjava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 455
    move-object v4, v1

    move-object v0, v4

    .line 459
    sget-object v4, Lcom/google/appinventor/components/runtime/util/JsonUtil;->LOG_TAG:Ljava/lang/String;

    move-object v5, v3

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 455
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method
