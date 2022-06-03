.class public Lcom/microsoft/appcenter/ingestion/models/properties/TypedPropertyUtils;
.super Ljava/lang/Object;
.source "TypedPropertyUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/properties/TypedPropertyUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "type":Ljava/lang/String;
    const-string/jumbo v1, "boolean"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    new-instance v1, Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;-><init>()V

    move-object v0, v1

    .line 33
    .end local v0    # "type":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 26
    .restart local v0    # "type":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "dateTime"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    new-instance v1, Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;-><init>()V

    move-object v0, v1

    goto :goto_0

    .line 28
    :cond_1
    const-string/jumbo v1, "double"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 29
    new-instance v1, Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;-><init>()V

    move-object v0, v1

    goto :goto_0

    .line 30
    :cond_2
    const-string/jumbo v1, "long"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 31
    new-instance v1, Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;-><init>()V

    move-object v0, v1

    goto :goto_0

    .line 32
    :cond_3
    const-string/jumbo v1, "string"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 33
    new-instance v1, Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;-><init>()V

    move-object v0, v1

    goto :goto_0

    .line 35
    :cond_4
    new-instance v1, Lorg/json/JSONException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static read(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "object":Lorg/json/JSONObject;
    move-object v6, v0

    const-string/jumbo v7, "typedProperties"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move-object v1, v6

    .line 40
    .local v1, "jArray":Lorg/json/JSONArray;
    move-object v6, v1

    if-eqz v6, :cond_1

    .line 41
    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v6

    .line 42
    .local v2, "array":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;>;"
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_0
    move v6, v3

    move-object v7, v1

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 43
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    move-object v4, v6

    .line 44
    .local v4, "jsonObject":Lorg/json/JSONObject;
    move-object v6, v4

    const-string/jumbo v7, "type"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/microsoft/appcenter/ingestion/models/properties/TypedPropertyUtils;->create(Ljava/lang/String;)Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;

    move-result-object v6

    move-object v5, v6

    .line 45
    .local v5, "typedProperty":Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
    move-object v6, v5

    move-object v7, v4

    invoke-virtual {v6, v7}, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;->read(Lorg/json/JSONObject;)V

    .line 46
    move-object v6, v2

    move-object v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 42
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 48
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "typedProperty":Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
    :cond_0
    move-object v6, v2

    move-object v0, v6

    .line 50
    .end local v0    # "object":Lorg/json/JSONObject;
    .end local v2    # "array":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;>;"
    .end local v3    # "i":I
    :goto_1
    return-object v0

    .restart local v0    # "object":Lorg/json/JSONObject;
    :cond_1
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method
