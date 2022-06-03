.class public Lcom/microsoft/appcenter/analytics/ingestion/models/json/EventLogFactory;
.super Lcom/microsoft/appcenter/ingestion/models/json/AbstractLogFactory;
.source "EventLogFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/ingestion/models/json/EventLogFactory;
    move-object v1, v0

    invoke-direct {v1}, Lcom/microsoft/appcenter/ingestion/models/json/AbstractLogFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;
    .locals 4

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/ingestion/models/json/EventLogFactory;
    new-instance v1, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/ingestion/models/json/EventLogFactory;
    return-object v0
.end method

.method public bridge synthetic create()Lcom/microsoft/appcenter/ingestion/models/Log;
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/ingestion/models/json/EventLogFactory;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/microsoft/appcenter/analytics/ingestion/models/json/EventLogFactory;->create()Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/ingestion/models/json/EventLogFactory;
    return-object v0
.end method

.method public toCommonSchemaLogs(Lcom/microsoft/appcenter/ingestion/models/Log;)Ljava/util/Collection;
    .locals 11
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
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/ingestion/models/json/EventLogFactory;
    move-object v1, p1

    .local v1, "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    new-instance v7, Ljava/util/LinkedList;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    move-object v2, v7

    .line 29
    .local v2, "commonSchemaLogs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;>;"
    move-object v7, v1

    invoke-interface {v7}, Lcom/microsoft/appcenter/ingestion/models/Log;->getTransmissionTargetTokens()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v3, v7

    :goto_0
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v4, v7

    .line 32
    .local v4, "transmissionTarget":Ljava/lang/String;
    new-instance v7, Lcom/microsoft/appcenter/analytics/ingestion/models/one/CommonSchemaEventLog;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Lcom/microsoft/appcenter/analytics/ingestion/models/one/CommonSchemaEventLog;-><init>()V

    move-object v5, v7

    .line 35
    .local v5, "commonSchemaEventLog":Lcom/microsoft/appcenter/analytics/ingestion/models/one/CommonSchemaEventLog;
    move-object v7, v1

    check-cast v7, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;

    move-object v6, v7

    .line 36
    .local v6, "eventLog":Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;
    move-object v7, v5

    move-object v8, v6

    invoke-virtual {v8}, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/microsoft/appcenter/ingestion/models/one/PartAUtils;->setName(Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;Ljava/lang/String;)V

    .line 39
    move-object v7, v1

    move-object v8, v5

    move-object v9, v4

    invoke-static {v7, v8, v9}, Lcom/microsoft/appcenter/ingestion/models/one/PartAUtils;->addPartAFromLog(Lcom/microsoft/appcenter/ingestion/models/Log;Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;Ljava/lang/String;)V

    .line 42
    move-object v7, v6

    invoke-virtual {v7}, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;->getTypedProperties()Ljava/util/List;

    move-result-object v7

    move-object v8, v5

    invoke-static {v7, v8}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaDataUtils;->addCommonSchemaData(Ljava/util/List;Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;)V

    .line 43
    move-object v7, v2

    move-object v8, v5

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 46
    move-object v7, v5

    move-object v8, v1

    invoke-interface {v8}, Lcom/microsoft/appcenter/ingestion/models/Log;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/microsoft/appcenter/analytics/ingestion/models/one/CommonSchemaEventLog;->setTag(Ljava/lang/Object;)V

    .line 47
    goto :goto_0

    .line 48
    .end local v4    # "transmissionTarget":Ljava/lang/String;
    .end local v5    # "commonSchemaEventLog":Lcom/microsoft/appcenter/analytics/ingestion/models/one/CommonSchemaEventLog;
    .end local v6    # "eventLog":Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;
    :cond_0
    move-object v7, v2

    move-object v0, v7

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/ingestion/models/json/EventLogFactory;
    return-object v0
.end method
