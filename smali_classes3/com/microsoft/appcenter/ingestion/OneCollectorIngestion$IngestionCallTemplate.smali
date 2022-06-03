.class Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion$IngestionCallTemplate;
.super Ljava/lang/Object;
.source "OneCollectorIngestion.java"

# interfaces
.implements Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IngestionCallTemplate"
.end annotation


# instance fields
.field private final mLogContainer:Lcom/microsoft/appcenter/ingestion/models/LogContainer;

.field private final mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;Lcom/microsoft/appcenter/ingestion/models/LogContainer;)V
    .locals 5

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion$IngestionCallTemplate;
    move-object v1, p1

    .local v1, "logSerializer":Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;
    move-object v2, p2

    .local v2, "logContainer":Lcom/microsoft/appcenter/ingestion/models/LogContainer;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 218
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion$IngestionCallTemplate;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    .line 219
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion$IngestionCallTemplate;->mLogContainer:Lcom/microsoft/appcenter/ingestion/models/LogContainer;

    .line 220
    return-void
.end method


# virtual methods
.method public buildRequestBody()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion$IngestionCallTemplate;
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v4

    .line 227
    .local v1, "jsonStream":Ljava/lang/StringBuilder;
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion$IngestionCallTemplate;->mLogContainer:Lcom/microsoft/appcenter/ingestion/models/LogContainer;

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/LogContainer;->getLogs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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

    check-cast v4, Lcom/microsoft/appcenter/ingestion/models/Log;

    move-object v3, v4

    .line 228
    .local v3, "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion$IngestionCallTemplate;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    move-object v6, v3

    invoke-interface {v5, v6}, Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;->serializeLog(Lcom/microsoft/appcenter/ingestion/models/Log;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 231
    move-object v4, v1

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 232
    goto :goto_0

    .line 233
    .end local v3    # "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion$IngestionCallTemplate;
    return-object v0
.end method

.method public onBeforeCalling(Ljava/net/URL;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion$IngestionCallTemplate;
    move-object v1, p1

    .local v1, "url":Ljava/net/URL;
    move-object v2, p2

    .local v2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/microsoft/appcenter/utils/AppCenterLog;->getLogLevel()I

    move-result v6

    const/4 v7, 0x2

    if-gt v6, v7, :cond_2

    .line 241
    const-string/jumbo v6, "AppCenter"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Calling "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/microsoft/appcenter/utils/AppCenterLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    new-instance v6, Ljava/util/HashMap;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v2

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v3, v6

    .line 245
    .local v3, "logHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v6, v3

    const-string/jumbo v7, "apikey"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v4, v6

    .line 246
    .local v4, "apiKeys":Ljava/lang/String;
    move-object v6, v4

    if-eqz v6, :cond_0

    .line 247
    move-object v6, v3

    const-string/jumbo v7, "apikey"

    move-object v8, v4

    invoke-static {v8}, Lcom/microsoft/appcenter/http/HttpUtils;->hideApiKeys(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 249
    :cond_0
    move-object v6, v3

    const-string/jumbo v7, "Tickets"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v5, v6

    .line 250
    .local v5, "tickets":Ljava/lang/String;
    move-object v6, v5

    if-eqz v6, :cond_1

    .line 251
    move-object v6, v3

    const-string/jumbo v7, "Tickets"

    move-object v8, v5

    invoke-static {v8}, Lcom/microsoft/appcenter/http/HttpUtils;->hideTickets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 253
    :cond_1
    const-string/jumbo v6, "AppCenter"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Headers: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/microsoft/appcenter/utils/AppCenterLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .end local v3    # "logHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "apiKeys":Ljava/lang/String;
    .end local v5    # "tickets":Ljava/lang/String;
    :cond_2
    return-void
.end method
