.class public Lcom/microsoft/appcenter/crashes/ingestion/models/json/ManagedErrorLogFactory;
.super Lcom/microsoft/appcenter/ingestion/models/json/AbstractLogFactory;
.source "ManagedErrorLogFactory.java"


# static fields
.field private static final sInstance:Lcom/microsoft/appcenter/crashes/ingestion/models/json/ManagedErrorLogFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    new-instance v0, Lcom/microsoft/appcenter/crashes/ingestion/models/json/ManagedErrorLogFactory;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/microsoft/appcenter/crashes/ingestion/models/json/ManagedErrorLogFactory;-><init>()V

    sput-object v0, Lcom/microsoft/appcenter/crashes/ingestion/models/json/ManagedErrorLogFactory;->sInstance:Lcom/microsoft/appcenter/crashes/ingestion/models/json/ManagedErrorLogFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/json/ManagedErrorLogFactory;
    move-object v1, v0

    invoke-direct {v1}, Lcom/microsoft/appcenter/ingestion/models/json/AbstractLogFactory;-><init>()V

    .line 16
    return-void
.end method

.method public static getInstance()Lcom/microsoft/appcenter/crashes/ingestion/models/json/ManagedErrorLogFactory;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/microsoft/appcenter/crashes/ingestion/models/json/ManagedErrorLogFactory;->sInstance:Lcom/microsoft/appcenter/crashes/ingestion/models/json/ManagedErrorLogFactory;

    return-object v0
.end method


# virtual methods
.method public create()Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    .locals 4

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/json/ManagedErrorLogFactory;
    new-instance v1, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/json/ManagedErrorLogFactory;
    return-object v0
.end method

.method public bridge synthetic create()Lcom/microsoft/appcenter/ingestion/models/Log;
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/json/ManagedErrorLogFactory;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/microsoft/appcenter/crashes/ingestion/models/json/ManagedErrorLogFactory;->create()Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/json/ManagedErrorLogFactory;
    return-object v0
.end method
