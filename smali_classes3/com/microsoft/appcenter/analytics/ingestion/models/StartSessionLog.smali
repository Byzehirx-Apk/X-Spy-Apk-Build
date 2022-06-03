.class public Lcom/microsoft/appcenter/analytics/ingestion/models/StartSessionLog;
.super Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
.source "StartSessionLog.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "startSession"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/ingestion/models/StartSessionLog;
    move-object v1, v0

    invoke-direct {v1}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/ingestion/models/StartSessionLog;
    const-string/jumbo v1, "startSession"

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/ingestion/models/StartSessionLog;
    return-object v0
.end method
