.class public Lcom/microsoft/appcenter/analytics/ingestion/models/PageLog;
.super Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;
.source "PageLog.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "page"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/ingestion/models/PageLog;
    move-object v1, v0

    invoke-direct {v1}, Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/ingestion/models/PageLog;
    const-string/jumbo v1, "page"

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/ingestion/models/PageLog;
    return-object v0
.end method
