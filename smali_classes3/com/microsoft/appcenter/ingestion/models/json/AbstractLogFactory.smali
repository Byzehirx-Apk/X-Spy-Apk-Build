.class public abstract Lcom/microsoft/appcenter/ingestion/models/json/AbstractLogFactory;
.super Ljava/lang/Object;
.source "AbstractLogFactory.java"

# interfaces
.implements Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/json/AbstractLogFactory;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toCommonSchemaLogs(Lcom/microsoft/appcenter/ingestion/models/Log;)Ljava/util/Collection;
    .locals 3
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
    .line 18
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/json/AbstractLogFactory;
    move-object v1, p1

    .local v1, "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/json/AbstractLogFactory;
    return-object v0
.end method
