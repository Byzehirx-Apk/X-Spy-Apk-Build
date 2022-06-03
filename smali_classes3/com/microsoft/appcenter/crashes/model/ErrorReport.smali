.class public Lcom/microsoft/appcenter/crashes/model/ErrorReport;
.super Ljava/lang/Object;
.source "ErrorReport.java"


# instance fields
.field private appErrorTime:Ljava/util/Date;

.field private appStartTime:Ljava/util/Date;

.field private device:Lcom/microsoft/appcenter/ingestion/models/Device;

.field private id:Ljava/lang/String;

.field private stackTrace:Ljava/lang/String;

.field private threadName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppErrorTime()Ljava/util/Date;
    .locals 2

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/model/ErrorReport;->appErrorTime:Ljava/util/Date;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    return-object v0
.end method

.method public getAppStartTime()Ljava/util/Date;
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/model/ErrorReport;->appStartTime:Ljava/util/Date;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    return-object v0
.end method

.method public getDevice()Lcom/microsoft/appcenter/ingestion/models/Device;
    .locals 2

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/model/ErrorReport;->device:Lcom/microsoft/appcenter/ingestion/models/Device;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/model/ErrorReport;->id:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    return-object v0
.end method

.method public getStackTrace()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/model/ErrorReport;->stackTrace:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    return-object v0
.end method

.method public getThreadName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/model/ErrorReport;->threadName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    return-object v0
.end method

.method public setAppErrorTime(Ljava/util/Date;)V
    .locals 4

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    move-object v1, p1

    .local v1, "appErrorTime":Ljava/util/Date;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/model/ErrorReport;->appErrorTime:Ljava/util/Date;

    .line 146
    return-void
.end method

.method public setAppStartTime(Ljava/util/Date;)V
    .locals 4

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    move-object v1, p1

    .local v1, "appStartTime":Ljava/util/Date;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/model/ErrorReport;->appStartTime:Ljava/util/Date;

    .line 128
    return-void
.end method

.method public setDevice(Lcom/microsoft/appcenter/ingestion/models/Device;)V
    .locals 4

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    move-object v1, p1

    .local v1, "device":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/model/ErrorReport;->device:Lcom/microsoft/appcenter/ingestion/models/Device;

    .line 164
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    move-object v1, p1

    .local v1, "id":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/model/ErrorReport;->id:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setStackTrace(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    move-object v1, p1

    .local v1, "stackTrace":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/model/ErrorReport;->stackTrace:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setThreadName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    move-object v1, p1

    .local v1, "threadName":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/model/ErrorReport;->threadName:Ljava/lang/String;

    .line 81
    return-void
.end method
