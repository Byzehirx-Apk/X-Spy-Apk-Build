.class Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;
.super Ljava/lang/Object;
.source "Crashes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/crashes/Crashes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ErrorLogReport"
.end annotation


# instance fields
.field private final log:Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;

.field private final report:Lcom/microsoft/appcenter/crashes/model/ErrorReport;


# direct methods
.method private constructor <init>(Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;Lcom/microsoft/appcenter/crashes/model/ErrorReport;)V
    .locals 5

    .prologue
    .line 1316
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;
    move-object v1, p1

    .local v1, "log":Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    move-object v2, p2

    .local v2, "report":Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1317
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;->log:Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;

    .line 1318
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;->report:Lcom/microsoft/appcenter/crashes/model/ErrorReport;

    .line 1319
    return-void
.end method

.method synthetic constructor <init>(Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;Lcom/microsoft/appcenter/crashes/model/ErrorReport;Lcom/microsoft/appcenter/crashes/Crashes$1;)V
    .locals 7

    .prologue
    .line 1310
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;
    move-object v1, p1

    .local v1, "x0":Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    move-object v2, p2

    .local v2, "x1":Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    move-object v3, p3

    .local v3, "x2":Lcom/microsoft/appcenter/crashes/Crashes$1;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;-><init>(Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;Lcom/microsoft/appcenter/crashes/model/ErrorReport;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;)Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    .locals 2

    .prologue
    .line 1310
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;->report:Lcom/microsoft/appcenter/crashes/model/ErrorReport;

    move-object v0, v1

    .end local v0    # "x0":Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;
    return-object v0
.end method

.method static synthetic access$1600(Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;)Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    .locals 2

    .prologue
    .line 1310
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;->log:Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;

    move-object v0, v1

    .end local v0    # "x0":Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;
    return-object v0
.end method
