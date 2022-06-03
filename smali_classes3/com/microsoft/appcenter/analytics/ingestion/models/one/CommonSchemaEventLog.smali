.class public Lcom/microsoft/appcenter/analytics/ingestion/models/one/CommonSchemaEventLog;
.super Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
.source "CommonSchemaEventLog.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "commonSchemaEvent"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/ingestion/models/one/CommonSchemaEventLog;
    move-object v1, v0

    invoke-direct {v1}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/ingestion/models/one/CommonSchemaEventLog;
    const-string/jumbo v1, "commonSchemaEvent"

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/ingestion/models/one/CommonSchemaEventLog;
    return-object v0
.end method
