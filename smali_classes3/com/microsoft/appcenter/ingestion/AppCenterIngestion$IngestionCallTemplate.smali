.class Lcom/microsoft/appcenter/ingestion/AppCenterIngestion$IngestionCallTemplate;
.super Lcom/microsoft/appcenter/http/AbstractAppCallTemplate;
.source "AppCenterIngestion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/ingestion/AppCenterIngestion;
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
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/AppCenterIngestion$IngestionCallTemplate;
    move-object v1, p1

    .local v1, "logSerializer":Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;
    move-object v2, p2

    .local v2, "logContainer":Lcom/microsoft/appcenter/ingestion/models/LogContainer;
    move-object v3, v0

    invoke-direct {v3}, Lcom/microsoft/appcenter/http/AbstractAppCallTemplate;-><init>()V

    .line 115
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/microsoft/appcenter/ingestion/AppCenterIngestion$IngestionCallTemplate;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    .line 116
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/microsoft/appcenter/ingestion/AppCenterIngestion$IngestionCallTemplate;->mLogContainer:Lcom/microsoft/appcenter/ingestion/models/LogContainer;

    .line 117
    return-void
.end method


# virtual methods
.method public buildRequestBody()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/AppCenterIngestion$IngestionCallTemplate;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/AppCenterIngestion$IngestionCallTemplate;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/ingestion/AppCenterIngestion$IngestionCallTemplate;->mLogContainer:Lcom/microsoft/appcenter/ingestion/models/LogContainer;

    invoke-interface {v1, v2}, Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;->serializeContainer(Lcom/microsoft/appcenter/ingestion/models/LogContainer;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/AppCenterIngestion$IngestionCallTemplate;
    return-object v0
.end method
