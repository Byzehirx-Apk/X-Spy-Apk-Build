.class public Lcom/microsoft/appcenter/crashes/ingestion/models/json/ErrorAttachmentLogFactory;
.super Lcom/microsoft/appcenter/ingestion/models/json/AbstractLogFactory;
.source "ErrorAttachmentLogFactory.java"


# static fields
.field private static final sInstance:Lcom/microsoft/appcenter/crashes/ingestion/models/json/ErrorAttachmentLogFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    new-instance v0, Lcom/microsoft/appcenter/crashes/ingestion/models/json/ErrorAttachmentLogFactory;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/microsoft/appcenter/crashes/ingestion/models/json/ErrorAttachmentLogFactory;-><init>()V

    sput-object v0, Lcom/microsoft/appcenter/crashes/ingestion/models/json/ErrorAttachmentLogFactory;->sInstance:Lcom/microsoft/appcenter/crashes/ingestion/models/json/ErrorAttachmentLogFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/json/ErrorAttachmentLogFactory;
    move-object v1, v0

    invoke-direct {v1}, Lcom/microsoft/appcenter/ingestion/models/json/AbstractLogFactory;-><init>()V

    .line 16
    return-void
.end method

.method public static getInstance()Lcom/microsoft/appcenter/crashes/ingestion/models/json/ErrorAttachmentLogFactory;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/microsoft/appcenter/crashes/ingestion/models/json/ErrorAttachmentLogFactory;->sInstance:Lcom/microsoft/appcenter/crashes/ingestion/models/json/ErrorAttachmentLogFactory;

    return-object v0
.end method


# virtual methods
.method public create()Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;
    .locals 4

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/json/ErrorAttachmentLogFactory;
    new-instance v1, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/json/ErrorAttachmentLogFactory;
    return-object v0
.end method

.method public bridge synthetic create()Lcom/microsoft/appcenter/ingestion/models/Log;
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/json/ErrorAttachmentLogFactory;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/microsoft/appcenter/crashes/ingestion/models/json/ErrorAttachmentLogFactory;->create()Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/json/ErrorAttachmentLogFactory;
    return-object v0
.end method
