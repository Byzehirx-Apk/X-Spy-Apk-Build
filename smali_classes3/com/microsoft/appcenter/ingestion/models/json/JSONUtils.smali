.class public Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;
.super Ljava/lang/Object;
.source "JSONUtils.java"


# direct methods
.method constructor <init>()V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static readArray(Lorg/json/JSONObject;Ljava/lang/String;Lcom/microsoft/appcenter/ingestion/models/json/ModelFactory;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/microsoft/appcenter/ingestion/models/Model;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lcom/microsoft/appcenter/ingestion/models/json/ModelFactory",
            "<TM;>;)",
            "Ljava/util/List",
            "<TM;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "object":Lorg/json/JSONObject;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "factory":Lcom/microsoft/appcenter/ingestion/models/json/ModelFactory;, "Lcom/microsoft/appcenter/ingestion/models/json/ModelFactory<TM;>;"
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    move-object v3, v8

    .line 66
    .local v3, "jArray":Lorg/json/JSONArray;
    move-object v8, v3

    if-nez v8, :cond_0

    .line 67
    const/4 v8, 0x0

    move-object v0, v8

    .line 76
    .end local v0    # "object":Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .line 69
    .restart local v0    # "object":Lorg/json/JSONObject;
    :cond_0
    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v9

    invoke-interface {v8, v9}, Lcom/microsoft/appcenter/ingestion/models/json/ModelFactory;->createList(I)Ljava/util/List;

    move-result-object v8

    move-object v4, v8

    .line 70
    .local v4, "array":Ljava/util/List;, "Ljava/util/List<TM;>;"
    const/4 v8, 0x0

    move v5, v8

    .local v5, "i":I
    :goto_1
    move v8, v5

    move-object v9, v3

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 71
    move-object v8, v3

    move v9, v5

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    move-object v6, v8

    .line 72
    .local v6, "jModel":Lorg/json/JSONObject;
    move-object v8, v2

    invoke-interface {v8}, Lcom/microsoft/appcenter/ingestion/models/json/ModelFactory;->create()Lcom/microsoft/appcenter/ingestion/models/Model;

    move-result-object v8

    move-object v7, v8

    .line 73
    .local v7, "model":Lcom/microsoft/appcenter/ingestion/models/Model;, "TM;"
    move-object v8, v7

    move-object v9, v6

    invoke-interface {v8, v9}, Lcom/microsoft/appcenter/ingestion/models/Model;->read(Lorg/json/JSONObject;)V

    .line 74
    move-object v8, v4

    move-object v9, v7

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 70
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 76
    .end local v6    # "jModel":Lorg/json/JSONObject;
    .end local v7    # "model":Lcom/microsoft/appcenter/ingestion/models/Model;, "TM;"
    :cond_1
    move-object v8, v4

    move-object v0, v8

    goto :goto_0
.end method

.method public static readBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "object":Lorg/json/JSONObject;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    .line 47
    .end local v0    # "object":Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .restart local v0    # "object":Lorg/json/JSONObject;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public static readInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "object":Lorg/json/JSONObject;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    .line 33
    .end local v0    # "object":Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .restart local v0    # "object":Lorg/json/JSONObject;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public static readLong(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "object":Lorg/json/JSONObject;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v0, v2

    .line 40
    .end local v0    # "object":Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .restart local v0    # "object":Lorg/json/JSONObject;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public static readMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
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
    .line 51
    move-object v0, p0

    .local v0, "object":Lorg/json/JSONObject;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    move-object v2, v6

    .line 52
    .local v2, "jProperties":Lorg/json/JSONObject;
    move-object v6, v2

    if-nez v6, :cond_0

    .line 53
    const/4 v6, 0x0

    move-object v0, v6

    .line 61
    .end local v0    # "object":Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .line 55
    .restart local v0    # "object":Lorg/json/JSONObject;
    :cond_0
    new-instance v6, Ljava/util/HashMap;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v2

    invoke-virtual {v8}, Lorg/json/JSONObject;->length()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    move-object v3, v6

    .line 56
    .local v3, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v6, v2

    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    .line 57
    .local v4, "subKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 58
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v5, v6

    .line 59
    .local v5, "subKey":Ljava/lang/String;
    move-object v6, v3

    move-object v7, v5

    move-object v8, v2

    move-object v9, v5

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 60
    goto :goto_1

    .line 61
    .end local v5    # "subKey":Ljava/lang/String;
    :cond_1
    move-object v6, v3

    move-object v0, v6

    goto :goto_0
.end method

.method public static readStringArray(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
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
    .line 80
    move-object v0, p0

    .local v0, "object":Lorg/json/JSONObject;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move-object v2, v5

    .line 81
    .local v2, "jArray":Lorg/json/JSONArray;
    move-object v5, v2

    if-nez v5, :cond_0

    .line 82
    const/4 v5, 0x0

    move-object v0, v5

    .line 88
    .end local v0    # "object":Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .line 84
    .restart local v0    # "object":Lorg/json/JSONObject;
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v5

    .line 85
    .local v3, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_1
    move v5, v4

    move-object v6, v2

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 86
    move-object v5, v3

    move-object v6, v2

    move v7, v4

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 85
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 88
    :cond_1
    move-object v5, v3

    move-object v0, v5

    goto :goto_0
.end method

.method public static write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "writer":Lorg/json/JSONStringer;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 93
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v3

    .line 95
    :cond_0
    return-void
.end method

.method public static writeArray(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONStringer;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lcom/microsoft/appcenter/ingestion/models/Model;",
            ">;)V"
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

    .local v0, "writer":Lorg/json/JSONStringer;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/util/List;, "Ljava/util/List<+Lcom/microsoft/appcenter/ingestion/models/Model;>;"
    move-object v5, v2

    if-eqz v5, :cond_1

    .line 109
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    move-result-object v5

    .line 110
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/microsoft/appcenter/ingestion/models/Model;

    move-object v4, v5

    .line 111
    .local v4, "model":Lcom/microsoft/appcenter/ingestion/models/Model;
    move-object v5, v0

    invoke-virtual {v5}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v5

    .line 112
    move-object v5, v4

    move-object v6, v0

    invoke-interface {v5, v6}, Lcom/microsoft/appcenter/ingestion/models/Model;->write(Lorg/json/JSONStringer;)V

    .line 113
    move-object v5, v0

    invoke-virtual {v5}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v5

    .line 114
    goto :goto_0

    .line 115
    .end local v4    # "model":Lcom/microsoft/appcenter/ingestion/models/Model;
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    move-result-object v5

    .line 117
    :cond_1
    return-void
.end method

.method public static writeMap(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONStringer;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "writer":Lorg/json/JSONStringer;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v5, v2

    if-eqz v5, :cond_1

    .line 99
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v5

    .line 100
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    move-object v4, v5

    .line 101
    .local v4, "property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v5, v0

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v5

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v5

    .line 102
    goto :goto_0

    .line 103
    .end local v4    # "property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v5

    .line 105
    :cond_1
    return-void
.end method

.method public static writeStringArray(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONStringer;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "writer":Lorg/json/JSONStringer;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v5, v2

    if-eqz v5, :cond_1

    .line 121
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    move-result-object v5

    .line 122
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v4, v5

    .line 123
    .local v4, "value":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v5

    .line 124
    goto :goto_0

    .line 125
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    move-result-object v5

    .line 127
    :cond_1
    return-void
.end method
