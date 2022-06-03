.class public Lcom/microsoft/appcenter/ingestion/AppCenterIngestion;
.super Ljava/lang/Object;
.source "AppCenterIngestion.java"

# interfaces
.implements Lcom/microsoft/appcenter/ingestion/Ingestion;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/appcenter/ingestion/AppCenterIngestion$IngestionCallTemplate;
    }
.end annotation


# static fields
.field static final API_PATH:Ljava/lang/String; = "/logs?api-version=1.0.0"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_LOG_URL:Ljava/lang/String; = "https://in.appcenter.ms"

.field static final INSTALL_ID:Ljava/lang/String; = "Install-ID"
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
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/AppCenterIngestion;
    move-object v1, p1

    .local v1, "httpClient":Lcom/microsoft/appcenter/http/HttpClient;
    move-object v2, p2

    .local v2, "logSerializer":Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 70
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/microsoft/appcenter/ingestion/AppCenterIngestion;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    .line 71
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/microsoft/appcenter/ingestion/AppCenterIngestion;->mHttpClient:Lcom/microsoft/appcenter/http/HttpClient;

    .line 72
    move-object v3, v0

    const-string/jumbo v4, "https://in.appcenter.ms"

    iput-object v4, v3, Lcom/microsoft/appcenter/ingestion/AppCenterIngestion;->mLogUrl:Ljava/lang/String;

    .line 73
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
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/AppCenterIngestion;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/AppCenterIngestion;->mHttpClient:Lcom/microsoft/appcenter/http/HttpClient;

    invoke-interface {v1}, Lcom/microsoft/appcenter/http/HttpClient;->close()V

    .line 98
    return-void
.end method

.method public reopen()V
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/AppCenterIngestion;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/AppCenterIngestion;->mHttpClient:Lcom/microsoft/appcenter/http/HttpClient;

    invoke-interface {v1}, Lcom/microsoft/appcenter/http/HttpClient;->reopen()V

    .line 103
    return-void
.end method

.method public sendAsync(Ljava/lang/String;Ljava/util/UUID;Lcom/microsoft/appcenter/ingestion/models/LogContainer;Lcom/microsoft/appcenter/http/ServiceCallback;)Lcom/microsoft/appcenter/http/ServiceCall;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/AppCenterIngestion;
    move-object v1, p1

    .local v1, "appSecret":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "installId":Ljava/util/UUID;
    move-object/from16 v3, p3

    .local v3, "logContainer":Lcom/microsoft/appcenter/ingestion/models/LogContainer;
    move-object/from16 v4, p4

    .local v4, "serviceCallback":Lcom/microsoft/appcenter/http/ServiceCallback;
    new-instance v7, Ljava/util/HashMap;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object v5, v7

    .line 89
    .local v5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v7, v5

    const-string/jumbo v8, "Install-ID"

    move-object v9, v2

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 90
    move-object v7, v5

    const-string/jumbo v8, "App-Secret"

    move-object v9, v1

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 91
    new-instance v7, Lcom/microsoft/appcenter/ingestion/AppCenterIngestion$IngestionCallTemplate;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    iget-object v9, v9, Lcom/microsoft/appcenter/ingestion/AppCenterIngestion;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    move-object v10, v3

    invoke-direct {v8, v9, v10}, Lcom/microsoft/appcenter/ingestion/AppCenterIngestion$IngestionCallTemplate;-><init>(Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;Lcom/microsoft/appcenter/ingestion/models/LogContainer;)V

    move-object v6, v7

    .line 92
    .local v6, "callTemplate":Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;
    move-object v7, v0

    iget-object v7, v7, Lcom/microsoft/appcenter/ingestion/AppCenterIngestion;->mHttpClient:Lcom/microsoft/appcenter/http/HttpClient;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v0

    iget-object v9, v9, Lcom/microsoft/appcenter/ingestion/AppCenterIngestion;->mLogUrl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/logs?api-version=1.0.0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "POST"

    move-object v10, v5

    move-object v11, v6

    move-object v12, v4

    invoke-interface/range {v7 .. v12}, Lcom/microsoft/appcenter/http/HttpClient;->callAsync(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;Lcom/microsoft/appcenter/http/ServiceCallback;)Lcom/microsoft/appcenter/http/ServiceCall;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/AppCenterIngestion;
    return-object v0
.end method

.method public setLogUrl(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/AppCenterIngestion;
    move-object v1, p1

    .local v1, "logUrl":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/AppCenterIngestion;->mLogUrl:Ljava/lang/String;

    .line 84
    return-void
.end method
