.class public interface abstract Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;
.super Ljava/lang/Object;
.source "LogSerializer.java"


# virtual methods
.method public abstract addLogFactory(Ljava/lang/String;Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract deserializeContainer(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/ingestion/models/LogContainer;
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
.end method

.method public abstract deserializeLog(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/ingestion/models/Log;
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
.end method

.method public abstract serializeContainer(Lcom/microsoft/appcenter/ingestion/models/LogContainer;)Ljava/lang/String;
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
.end method

.method public abstract serializeLog(Lcom/microsoft/appcenter/ingestion/models/Log;)Ljava/lang/String;
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
.end method

.method public abstract toCommonSchemaLog(Lcom/microsoft/appcenter/ingestion/models/Log;)Ljava/util/Collection;
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
.end method
