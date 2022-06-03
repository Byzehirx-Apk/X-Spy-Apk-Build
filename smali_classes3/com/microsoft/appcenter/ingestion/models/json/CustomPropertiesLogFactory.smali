.class public Lcom/microsoft/appcenter/ingestion/models/json/CustomPropertiesLogFactory;
.super Lcom/microsoft/appcenter/ingestion/models/json/AbstractLogFactory;
.source "CustomPropertiesLogFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/json/CustomPropertiesLogFactory;
    move-object v1, v0

    invoke-direct {v1}, Lcom/microsoft/appcenter/ingestion/models/json/AbstractLogFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/microsoft/appcenter/ingestion/models/Log;
    .locals 4

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/json/CustomPropertiesLogFactory;
    new-instance v1, Lcom/microsoft/appcenter/ingestion/models/CustomPropertiesLog;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/microsoft/appcenter/ingestion/models/CustomPropertiesLog;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/json/CustomPropertiesLogFactory;
    return-object v0
.end method
