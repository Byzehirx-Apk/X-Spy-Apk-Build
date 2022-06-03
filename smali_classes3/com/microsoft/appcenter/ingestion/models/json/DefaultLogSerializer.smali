.class public Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;
.super Ljava/lang/Object;
.source "DefaultLogSerializer.java"

# interfaces
.implements Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;


# static fields
.field private static final LOGS:Ljava/lang/String; = "logs"


# instance fields
.field private final mLogFactories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 31
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;->mLogFactories:Ljava/util/Map;

    return-void
.end method

.method private readLog(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/microsoft/appcenter/ingestion/models/Log;
    .locals 10
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;
    move-object v1, p1

    .local v1, "object":Lorg/json/JSONObject;
    move-object v2, p2

    .local v2, "type":Ljava/lang/String;
    move-object v5, v2

    if-nez v5, :cond_0

    .line 44
    move-object v5, v1

    const-string/jumbo v6, "type"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 46
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;->mLogFactories:Ljava/util/Map;

    move-object v6, v2

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;

    move-object v3, v5

    .line 47
    .local v3, "logFactory":Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;
    move-object v5, v3

    if-nez v5, :cond_1

    .line 48
    new-instance v5, Lorg/json/JSONException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown log type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 50
    :cond_1
    move-object v5, v3

    invoke-interface {v5}, Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;->create()Lcom/microsoft/appcenter/ingestion/models/Log;

    move-result-object v5

    move-object v4, v5

    .line 51
    .local v4, "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    move-object v5, v4

    move-object v6, v1

    invoke-interface {v5, v6}, Lcom/microsoft/appcenter/ingestion/models/Log;->read(Lorg/json/JSONObject;)V

    .line 52
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;
    return-object v0
.end method

.method private writeLog(Lorg/json/JSONStringer;Lcom/microsoft/appcenter/ingestion/models/Log;)Lorg/json/JSONStringer;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;
    move-object v1, p1

    .local v1, "writer":Lorg/json/JSONStringer;
    move-object v2, p2

    .local v2, "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    move-object v3, v1

    invoke-virtual {v3}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v3

    .line 36
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/Log;->write(Lorg/json/JSONStringer;)V

    .line 37
    move-object v3, v1

    invoke-virtual {v3}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v3

    .line 38
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;
    return-object v0
.end method


# virtual methods
.method public addLogFactory(Ljava/lang/String;Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;
    move-object v1, p1

    .local v1, "logType":Ljava/lang/String;
    move-object v2, p2

    .local v2, "logFactory":Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;->mLogFactories:Ljava/util/Map;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 109
    return-void
.end method

.method public deserializeContainer(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/ingestion/models/LogContainer;
    .locals 14
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;
    move-object v1, p1

    .local v1, "json":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "type":Ljava/lang/String;
    new-instance v10, Lorg/json/JSONObject;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v1

    invoke-direct {v11, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v3, v10

    .line 94
    .local v3, "jContainer":Lorg/json/JSONObject;
    new-instance v10, Lcom/microsoft/appcenter/ingestion/models/LogContainer;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Lcom/microsoft/appcenter/ingestion/models/LogContainer;-><init>()V

    move-object v4, v10

    .line 95
    .local v4, "container":Lcom/microsoft/appcenter/ingestion/models/LogContainer;
    move-object v10, v3

    const-string/jumbo v11, "logs"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    move-object v5, v10

    .line 96
    .local v5, "jLogs":Lorg/json/JSONArray;
    new-instance v10, Ljava/util/ArrayList;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v10

    .line 97
    .local v6, "logs":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/appcenter/ingestion/models/Log;>;"
    const/4 v10, 0x0

    move v7, v10

    .local v7, "i":I
    :goto_0
    move v10, v7

    move-object v11, v5

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_0

    .line 98
    move-object v10, v5

    move v11, v7

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    move-object v8, v10

    .line 99
    .local v8, "jLog":Lorg/json/JSONObject;
    move-object v10, v0

    move-object v11, v8

    move-object v12, v2

    invoke-direct {v10, v11, v12}, Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;->readLog(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/microsoft/appcenter/ingestion/models/Log;

    move-result-object v10

    move-object v9, v10

    .line 100
    .local v9, "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    move-object v10, v6

    move-object v11, v9

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 97
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 102
    .end local v8    # "jLog":Lorg/json/JSONObject;
    .end local v9    # "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    :cond_0
    move-object v10, v4

    move-object v11, v6

    invoke-virtual {v10, v11}, Lcom/microsoft/appcenter/ingestion/models/LogContainer;->setLogs(Ljava/util/List;)V

    .line 103
    move-object v10, v4

    move-object v0, v10

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;
    return-object v0
.end method

.method public deserializeLog(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/ingestion/models/Log;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;
    move-object v1, p1

    .local v1, "json":Ljava/lang/String;
    move-object v2, p2

    .local v2, "type":Ljava/lang/String;
    move-object v3, v0

    new-instance v4, Lorg/json/JSONObject;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;->readLog(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/microsoft/appcenter/ingestion/models/Log;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;
    return-object v0
.end method

.method public serializeContainer(Lcom/microsoft/appcenter/ingestion/models/LogContainer;)Ljava/lang/String;
    .locals 9
    .param p1    # Lcom/microsoft/appcenter/ingestion/models/LogContainer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;
    move-object v1, p1

    .local v1, "logContainer":Lcom/microsoft/appcenter/ingestion/models/LogContainer;
    new-instance v5, Lorg/json/JSONStringer;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lorg/json/JSONStringer;-><init>()V

    move-object v2, v5

    .line 80
    .local v2, "writer":Lorg/json/JSONStringer;
    move-object v5, v2

    invoke-virtual {v5}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v5

    .line 81
    move-object v5, v2

    const-string/jumbo v6, "logs"

    invoke-virtual {v5, v6}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    move-result-object v5

    .line 82
    move-object v5, v1

    invoke-virtual {v5}, Lcom/microsoft/appcenter/ingestion/models/LogContainer;->getLogs()Ljava/util/List;

    move-result-object v5

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

    check-cast v5, Lcom/microsoft/appcenter/ingestion/models/Log;

    move-object v4, v5

    .line 83
    .local v4, "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    move-object v5, v0

    move-object v6, v2

    move-object v7, v4

    invoke-direct {v5, v6, v7}, Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;->writeLog(Lorg/json/JSONStringer;Lcom/microsoft/appcenter/ingestion/models/Log;)Lorg/json/JSONStringer;

    move-result-object v5

    .line 84
    goto :goto_0

    .line 85
    .end local v4    # "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    :cond_0
    move-object v5, v2

    invoke-virtual {v5}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    move-result-object v5

    .line 86
    move-object v5, v2

    invoke-virtual {v5}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v5

    .line 87
    move-object v5, v2

    invoke-virtual {v5}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;
    return-object v0
.end method

.method public serializeLog(Lcom/microsoft/appcenter/ingestion/models/Log;)Ljava/lang/String;
    .locals 6
    .param p1    # Lcom/microsoft/appcenter/ingestion/models/Log;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;
    move-object v1, p1

    .local v1, "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    move-object v2, v0

    new-instance v3, Lorg/json/JSONStringer;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/json/JSONStringer;-><init>()V

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;->writeLog(Lorg/json/JSONStringer;Lcom/microsoft/appcenter/ingestion/models/Log;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;
    return-object v0
.end method

.method public toCommonSchemaLog(Lcom/microsoft/appcenter/ingestion/models/Log;)Ljava/util/Collection;
    .locals 4
    .param p1    # Lcom/microsoft/appcenter/ingestion/models/Log;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/appcenter/ingestion/models/Log;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;
    move-object v1, p1

    .local v1, "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;->mLogFactories:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v3}, Lcom/microsoft/appcenter/ingestion/models/Log;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;->toCommonSchemaLogs(Lcom/microsoft/appcenter/ingestion/models/Log;)Ljava/util/Collection;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;
    return-object v0
.end method
