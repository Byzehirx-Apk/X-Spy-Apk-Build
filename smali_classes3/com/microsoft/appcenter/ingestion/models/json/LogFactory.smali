.class public interface abstract Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;
.super Ljava/lang/Object;
.source "LogFactory.java"


# virtual methods
.method public abstract create()Lcom/microsoft/appcenter/ingestion/models/Log;
.end method

.method public abstract toCommonSchemaLogs(Lcom/microsoft/appcenter/ingestion/models/Log;)Ljava/util/Collection;
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
