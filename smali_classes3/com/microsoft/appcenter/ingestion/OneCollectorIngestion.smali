.class public Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion;
.super Ljava/lang/Object;
.source "OneCollectorIngestion.java"

# interfaces
.implements Lcom/microsoft/appcenter/ingestion/Ingestion;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion$IngestionCallTemplate;
    }
.end annotation


# static fields
.field static final API_KEY:Ljava/lang/String; = "apikey"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final CLIENT_VERSION_FORMAT:Ljava/lang/String; = "ACS-Android-Java-no-%s-no"

.field static final CLIENT_VERSION_KEY:Ljava/lang/String; = "Client-Version"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final CONTENT_TYPE_VALUE:Ljava/lang/String; = "application/x-json-stream; charset=utf-8"

.field private static final DEFAULT_LOG_URL:Ljava/lang/String; = "https://mobile.events.data.microsoft.com/OneCollector/1.0"

.field static final STRICT:Ljava/lang/String; = "Strict"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final TICKETS:Ljava/lang/String; = "Tickets"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final UPLOAD_TIME_KEY:Ljava/lang/String; = "Upload-Time"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mHttpClient:Lcom/microsoft/appcenter/http/HttpClient;

.field private final mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

.field private mLogUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/appcenter/http/HttpClient;Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;)V
    .locals 5
    .param p1    # Lcom/microsoft/appcenter/http/HttpClient;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion;
    move-object v1, p1

    .local v1, "httpClient":Lcom/microsoft/appcenter/http/HttpClient;
    move-object v2, p2

    .local v2, "logSerializer":Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 109
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    .line 110
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion;->mHttpClient:Lcom/microsoft/appcenter/http/HttpClient;

    .line 111
    move-object v3, v0

    const-string/jumbo v4, "https://mobile.events.data.microsoft.com/OneCollector/1.0"

    iput-object v4, v3, Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion;->mLogUrl:Ljava/lang/String;

    .line 112
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion;->mHttpClient:Lcom/microsoft/appcenter/http/HttpClient;

    invoke-interface {v1}, Lcom/microsoft/appcenter/http/HttpClient;->close()V

    .line 197
    return-void
.end method

.method public reopen()V
    .locals 2

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion;->mHttpClient:Lcom/microsoft/appcenter/http/HttpClient;

    invoke-interface {v1}, Lcom/microsoft/appcenter/http/HttpClient;->reopen()V

    .line 192
    return-void
.end method

.method public sendAsync(Ljava/lang/String;Ljava/util/UUID;Lcom/microsoft/appcenter/ingestion/models/LogContainer;Lcom/microsoft/appcenter/http/ServiceCallback;)Lcom/microsoft/appcenter/http/ServiceCall;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 118
    move-object/from16 v2, p0

    .local v2, "this":Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion;
    move-object/from16 v3, p1

    .local v3, "appSecret":Ljava/lang/String;
    move-object/from16 v4, p2

    .local v4, "installId":Ljava/util/UUID;
    move-object/from16 v5, p3

    .local v5, "logContainer":Lcom/microsoft/appcenter/ingestion/models/LogContainer;
    move-object/from16 v6, p4

    .local v6, "serviceCallback":Lcom/microsoft/appcenter/http/ServiceCallback;
    new-instance v18, Ljava/util/HashMap;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v7, v18

    .line 119
    .local v7, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v18, Ljava/util/LinkedHashSet;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    invoke-direct/range {v19 .. v19}, Ljava/util/LinkedHashSet;-><init>()V

    move-object/from16 v8, v18

    .line 120
    .local v8, "apiKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Lcom/microsoft/appcenter/ingestion/models/LogContainer;->getLogs()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v9, v18

    :goto_0
    move-object/from16 v18, v9

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v18, v9

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/microsoft/appcenter/ingestion/models/Log;

    move-object/from16 v10, v18

    .line 121
    .local v10, "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    move-object/from16 v18, v8

    move-object/from16 v19, v10

    invoke-interface/range {v19 .. v19}, Lcom/microsoft/appcenter/ingestion/models/Log;->getTransmissionTargetTokens()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v18

    .line 122
    goto :goto_0

    .line 125
    .end local v10    # "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    :cond_0
    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v9, v18

    .line 126
    .local v9, "apiKey":Ljava/lang/StringBuilder;
    move-object/from16 v18, v8

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v10, v18

    :goto_1
    move-object/from16 v18, v10

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v18, v10

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v11, v18

    .line 127
    .local v11, "targetToken":Ljava/lang/String;
    move-object/from16 v18, v9

    move-object/from16 v19, v11

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 128
    goto :goto_1

    .line 129
    .end local v11    # "targetToken":Ljava/lang/String;
    :cond_1
    move-object/from16 v18, v8

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_2

    .line 130
    move-object/from16 v18, v9

    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 132
    :cond_2
    move-object/from16 v18, v7

    const-string/jumbo v19, "apikey"

    move-object/from16 v20, v9

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 135
    new-instance v18, Lorg/json/JSONObject;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    invoke-direct/range {v19 .. v19}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v10, v18

    .line 136
    .local v10, "tickets":Lorg/json/JSONObject;
    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Lcom/microsoft/appcenter/ingestion/models/LogContainer;->getLogs()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v11, v18

    :goto_2
    move-object/from16 v18, v11

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    move-object/from16 v18, v11

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/microsoft/appcenter/ingestion/models/Log;

    move-object/from16 v12, v18

    .line 137
    .local v12, "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    move-object/from16 v18, v12

    check-cast v18, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;

    invoke-virtual/range {v18 .. v18}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getExt()Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getProtocol()Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->getTicketKeys()Ljava/util/List;

    move-result-object v18

    move-object/from16 v13, v18

    .line 138
    .local v13, "ticketKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v18, v13

    if-eqz v18, :cond_4

    .line 139
    move-object/from16 v18, v13

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v14, v18

    :goto_3
    move-object/from16 v18, v14

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v18, v14

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v15, v18

    .line 140
    .local v15, "ticketKey":Ljava/lang/String;
    move-object/from16 v18, v15

    invoke-static/range {v18 .. v18}, Lcom/microsoft/appcenter/utils/TicketCache;->getTicket(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v16, v18

    .line 141
    .local v16, "token":Ljava/lang/String;
    move-object/from16 v18, v16

    if-eqz v18, :cond_3

    .line 143
    move-object/from16 v18, v10

    move-object/from16 v19, v15

    move-object/from16 v20, v16

    :try_start_0
    invoke-virtual/range {v18 .. v20}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 147
    .line 149
    :cond_3
    goto :goto_3

    .line 144
    :catch_0
    move-exception v18

    move-object/from16 v17, v18

    .line 145
    .local v17, "e":Lorg/json/JSONException;
    const-string/jumbo v18, "AppCenter"

    const-string/jumbo v19, "Cannot serialize tickets, sending log anonymously"

    move-object/from16 v20, v17

    invoke-static/range {v18 .. v20}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    .line 151
    .end local v15    # "ticketKey":Ljava/lang/String;
    .end local v16    # "token":Ljava/lang/String;
    .end local v17    # "e":Lorg/json/JSONException;
    :cond_4
    goto :goto_2

    .line 154
    .end local v12    # "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    .end local v13    # "ticketKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONObject;->length()I

    move-result v18

    if-lez v18, :cond_6

    .line 155
    move-object/from16 v18, v7

    const-string/jumbo v19, "Tickets"

    move-object/from16 v20, v10

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 158
    sget-boolean v18, Lcom/microsoft/appcenter/Constants;->APPLICATION_DEBUGGABLE:Z

    if-eqz v18, :cond_6

    .line 159
    move-object/from16 v18, v7

    const-string/jumbo v19, "Strict"

    sget-object v20, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 164
    :cond_6
    move-object/from16 v18, v7

    const-string/jumbo v19, "Content-Type"

    const-string/jumbo v20, "application/x-json-stream; charset=utf-8"

    invoke-interface/range {v18 .. v20}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 167
    const-string/jumbo v18, "3.3.0"

    move-object/from16 v11, v18

    .line 168
    .local v11, "sdkVersion":Ljava/lang/String;
    move-object/from16 v18, v7

    const-string/jumbo v19, "Client-Version"

    const-string/jumbo v20, "ACS-Android-Java-no-%s-no"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    const/16 v23, 0x0

    move-object/from16 v24, v11

    aput-object v24, v22, v23

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 171
    move-object/from16 v18, v7

    const-string/jumbo v19, "Upload-Time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 174
    new-instance v18, Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion$IngestionCallTemplate;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    move-object/from16 v20, v0

    move-object/from16 v21, v5

    invoke-direct/range {v19 .. v21}, Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion$IngestionCallTemplate;-><init>(Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;Lcom/microsoft/appcenter/ingestion/models/LogContainer;)V

    move-object/from16 v12, v18

    .line 175
    .local v12, "callTemplate":Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion;->mHttpClient:Lcom/microsoft/appcenter/http/HttpClient;

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion;->mLogUrl:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "POST"

    move-object/from16 v21, v7

    move-object/from16 v22, v12

    move-object/from16 v23, v6

    invoke-interface/range {v18 .. v23}, Lcom/microsoft/appcenter/http/HttpClient;->callAsync(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;Lcom/microsoft/appcenter/http/ServiceCallback;)Lcom/microsoft/appcenter/http/ServiceCall;

    move-result-object v18

    move-object/from16 v2, v18

    .end local v2    # "this":Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion;
    return-object v2
.end method

.method public setLogUrl(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion;
    move-object v1, p1

    .local v1, "logUrl":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion;->mLogUrl:Ljava/lang/String;

    .line 187
    return-void
.end method
