.class public Lcom/microsoft/appcenter/ingestion/models/CustomPropertiesLog;
.super Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
.source "CustomPropertiesLog.java"


# static fields
.field private static final PROPERTIES:Ljava/lang/String; = "properties"

.field private static final PROPERTY_NAME:Ljava/lang/String; = "name"

.field private static final PROPERTY_TYPE:Ljava/lang/String; = "type"

.field private static final PROPERTY_TYPE_BOOLEAN:Ljava/lang/String; = "boolean"

.field private static final PROPERTY_TYPE_CLEAR:Ljava/lang/String; = "clear"

.field private static final PROPERTY_TYPE_DATETIME:Ljava/lang/String; = "dateTime"

.field private static final PROPERTY_TYPE_NUMBER:Ljava/lang/String; = "number"

.field private static final PROPERTY_TYPE_STRING:Ljava/lang/String; = "string"

.field private static final PROPERTY_VALUE:Ljava/lang/String; = "value"

.field public static final TYPE:Ljava/lang/String; = "customProperties"


# instance fields
.field private properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/CustomPropertiesLog;
    move-object v1, v0

    invoke-direct {v1}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;-><init>()V

    return-void
.end method

.method private static readProperties(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
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
    .line 54
    move-object v0, p0

    .local v0, "object":Lorg/json/JSONObject;
    move-object v7, v0

    const-string/jumbo v8, "properties"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    move-object v1, v7

    .line 55
    .local v1, "jArray":Lorg/json/JSONArray;
    new-instance v7, Ljava/util/HashMap;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object v2, v7

    .line 56
    .local v2, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v7, 0x0

    move v3, v7

    .local v3, "i":I
    :goto_0
    move v7, v3

    move-object v8, v1

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 57
    move-object v7, v1

    move v8, v3

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    move-object v4, v7

    .line 58
    .local v4, "jProperty":Lorg/json/JSONObject;
    move-object v7, v4

    const-string/jumbo v8, "name"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 59
    .local v5, "key":Ljava/lang/String;
    move-object v7, v4

    invoke-static {v7}, Lcom/microsoft/appcenter/ingestion/models/CustomPropertiesLog;->readPropertyValue(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 60
    .local v6, "value":Ljava/lang/Object;
    move-object v7, v2

    move-object v8, v5

    move-object v9, v6

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 56
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    .end local v4    # "jProperty":Lorg/json/JSONObject;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_0
    move-object v7, v2

    move-object v0, v7

    .end local v0    # "object":Lorg/json/JSONObject;
    return-object v0
.end method

.method private static readPropertyValue(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "object":Lorg/json/JSONObject;
    move-object v3, v0

    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 69
    .local v1, "type":Ljava/lang/String;
    move-object v3, v1

    const-string/jumbo v4, "clear"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    const/4 v3, 0x0

    move-object v2, v3

    .line 85
    :cond_0
    :goto_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "object":Lorg/json/JSONObject;
    return-object v0

    .line 71
    .restart local v0    # "object":Lorg/json/JSONObject;
    :cond_1
    move-object v3, v1

    const-string/jumbo v4, "boolean"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 72
    move-object v3, v0

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v2, v3

    .local v2, "value":Ljava/lang/Boolean;
    goto :goto_0

    .line 73
    .end local v2    # "value":Ljava/lang/Boolean;
    :cond_2
    move-object v3, v1

    const-string/jumbo v4, "number"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 74
    move-object v3, v0

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 75
    .local v2, "value":Ljava/lang/Object;
    move-object v3, v2

    instance-of v3, v3, Ljava/lang/Number;

    if-nez v3, :cond_0

    .line 76
    new-instance v3, Lorg/json/JSONException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Invalid value type"

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 78
    .end local v2    # "value":Ljava/lang/Object;
    :cond_3
    move-object v3, v1

    const-string/jumbo v4, "dateTime"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 79
    move-object v3, v0

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/appcenter/ingestion/models/json/JSONDateUtils;->toDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    move-object v2, v3

    .local v2, "value":Ljava/util/Date;
    goto :goto_0

    .line 80
    .end local v2    # "value":Ljava/util/Date;
    :cond_4
    move-object v3, v1

    const-string/jumbo v4, "string"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 81
    move-object v3, v0

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .local v2, "value":Ljava/lang/String;
    goto :goto_0

    .line 83
    .end local v2    # "value":Ljava/lang/String;
    :cond_5
    new-instance v3, Lorg/json/JSONException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Invalid value type"

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static writeProperties(Lorg/json/JSONStringer;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONStringer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "writer":Lorg/json/JSONStringer;
    move-object v1, p1

    .local v1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v4, v1

    if-eqz v4, :cond_1

    .line 90
    move-object v4, v0

    const-string/jumbo v5, "properties"

    invoke-virtual {v4, v5}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    move-result-object v4

    .line 91
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v3, v4

    .line 92
    .local v3, "property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v4, v0

    invoke-virtual {v4}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v4

    .line 93
    move-object v4, v0

    const-string/jumbo v5, "name"

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    move-object v4, v0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/microsoft/appcenter/ingestion/models/CustomPropertiesLog;->writePropertyValue(Lorg/json/JSONStringer;Ljava/lang/Object;)V

    .line 95
    move-object v4, v0

    invoke-virtual {v4}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v4

    .line 96
    goto :goto_0

    .line 97
    .end local v3    # "property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    move-result-object v4

    .line 101
    return-void

    .line 99
    :cond_1
    new-instance v4, Lorg/json/JSONException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "Properties cannot be null"

    invoke-direct {v5, v6}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static writePropertyValue(Lorg/json/JSONStringer;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "writer":Lorg/json/JSONStringer;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 105
    move-object v2, v0

    const-string/jumbo v3, "type"

    const-string/jumbo v4, "clear"

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    :goto_0
    return-void

    .line 106
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 107
    move-object v2, v0

    const-string/jumbo v3, "type"

    const-string/jumbo v4, "boolean"

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    move-object v2, v0

    const-string/jumbo v3, "value"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 109
    :cond_1
    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 110
    move-object v2, v0

    const-string/jumbo v3, "type"

    const-string/jumbo v4, "number"

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    move-object v2, v0

    const-string/jumbo v3, "value"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 112
    :cond_2
    move-object v2, v1

    instance-of v2, v2, Ljava/util/Date;

    if-eqz v2, :cond_3

    .line 113
    move-object v2, v0

    const-string/jumbo v3, "type"

    const-string/jumbo v4, "dateTime"

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    move-object v2, v0

    const-string/jumbo v3, "value"

    move-object v4, v1

    check-cast v4, Ljava/util/Date;

    invoke-static {v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONDateUtils;->toString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 115
    :cond_3
    move-object v2, v1

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 116
    move-object v2, v0

    const-string/jumbo v3, "type"

    const-string/jumbo v4, "string"

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    move-object v2, v0

    const-string/jumbo v3, "value"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 119
    :cond_4
    new-instance v2, Lorg/json/JSONException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Invalid value type"

    invoke-direct {v3, v4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/CustomPropertiesLog;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 162
    const/4 v3, 0x1

    move v0, v3

    .line 171
    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/CustomPropertiesLog;
    :goto_0
    return v0

    .line 164
    .restart local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/CustomPropertiesLog;
    :cond_0
    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 165
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 167
    :cond_2
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 168
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 170
    :cond_3
    move-object v3, v1

    check-cast v3, Lcom/microsoft/appcenter/ingestion/models/CustomPropertiesLog;

    move-object v2, v3

    .line 171
    .local v2, "that":Lcom/microsoft/appcenter/ingestion/models/CustomPropertiesLog;
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/CustomPropertiesLog;->properties:Ljava/util/Map;

    if-eqz v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/CustomPropertiesLog;->properties:Ljava/util/Map;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/CustomPropertiesLog;->properties:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_4
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/CustomPropertiesLog;->properties:Ljava/util/Map;

    if-nez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getProperties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/CustomPropertiesLog;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/CustomPropertiesLog;->properties:Ljava/util/Map;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/CustomPropertiesLog;
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/CustomPropertiesLog;
    const-string/jumbo v1, "customProperties"

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/CustomPropertiesLog;
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/CustomPropertiesLog;
    move-object v2, v0

    invoke-super {v2}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->hashCode()I

    move-result v2

    move v1, v2

    .line 177
    .local v1, "result":I
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/CustomPropertiesLog;->properties:Ljava/util/Map;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/CustomPropertiesLog;->properties:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    move v1, v2

    .line 178
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/CustomPropertiesLog;
    return v0

    .line 177
    .restart local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/CustomPropertiesLog;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public read(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/CustomPropertiesLog;
    move-object v1, p1

    .local v1, "object":Lorg/json/JSONObject;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->read(Lorg/json/JSONObject;)V

    .line 149
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lcom/microsoft/appcenter/ingestion/models/CustomPropertiesLog;->readProperties(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/CustomPropertiesLog;->setProperties(Ljava/util/Map;)V

    .line 150
    return-void
.end method

.method public setProperties(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/CustomPropertiesLog;
    move-object v1, p1

    .local v1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/CustomPropertiesLog;->properties:Ljava/util/Map;

    .line 144
    return-void
.end method

.method public write(Lorg/json/JSONStringer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/CustomPropertiesLog;
    move-object v1, p1

    .local v1, "writer":Lorg/json/JSONStringer;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->write(Lorg/json/JSONStringer;)V

    .line 155
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/microsoft/appcenter/ingestion/models/CustomPropertiesLog;->getProperties()Ljava/util/Map;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/CustomPropertiesLog;->writeProperties(Lorg/json/JSONStringer;Ljava/util/Map;)V

    .line 156
    return-void
.end method
