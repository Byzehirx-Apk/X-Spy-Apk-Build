.class public Lcom/microsoft/appcenter/crashes/WrapperSdkExceptionManager;
.super Ljava/lang/Object;
.source "WrapperSdkExceptionManager.java"


# static fields
.field private static final DATA_FILE_EXTENSION:Ljava/lang/String; = ".dat"

.field static final sWrapperExceptionDataContainer:Ljava/util/Map;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Ljava/util/HashMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/microsoft/appcenter/crashes/WrapperSdkExceptionManager;->sWrapperExceptionDataContainer:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/WrapperSdkExceptionManager;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static buildHandledErrorReport(Landroid/content/Context;Ljava/lang/String;)Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    .locals 11

    .prologue
    .line 181
    move-object v1, p0

    .local v1, "context":Landroid/content/Context;
    move-object v2, p1

    .local v2, "errorReportId":Ljava/lang/String;
    new-instance v5, Lcom/microsoft/appcenter/crashes/model/ErrorReport;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Lcom/microsoft/appcenter/crashes/model/ErrorReport;-><init>()V

    move-object v3, v5

    .line 182
    .local v3, "report":Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/crashes/model/ErrorReport;->setId(Ljava/lang/String;)V

    .line 183
    move-object v5, v3

    new-instance v6, Ljava/util/Date;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/crashes/model/ErrorReport;->setAppErrorTime(Ljava/util/Date;)V

    .line 184
    move-object v5, v3

    new-instance v6, Ljava/util/Date;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-static {}, Lcom/microsoft/appcenter/crashes/Crashes;->getInstance()Lcom/microsoft/appcenter/crashes/Crashes;

    move-result-object v8

    invoke-virtual {v8}, Lcom/microsoft/appcenter/crashes/Crashes;->getInitializeTimestamp()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/crashes/model/ErrorReport;->setAppStartTime(Ljava/util/Date;)V

    .line 186
    move-object v5, v3

    :try_start_0
    invoke-static {}, Lcom/microsoft/appcenter/crashes/Crashes;->getInstance()Lcom/microsoft/appcenter/crashes/Crashes;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/microsoft/appcenter/crashes/Crashes;->getDeviceInfo(Landroid/content/Context;)Lcom/microsoft/appcenter/ingestion/models/Device;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/crashes/model/ErrorReport;->setDevice(Lcom/microsoft/appcenter/ingestion/models/Device;)V
    :try_end_0
    .catch Lcom/microsoft/appcenter/utils/DeviceInfoHelper$DeviceInfoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .line 192
    :goto_0
    move-object v5, v3

    move-object v1, v5

    .end local v1    # "context":Landroid/content/Context;
    return-object v1

    .line 187
    .restart local v1    # "context":Landroid/content/Context;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 190
    .local v4, "e":Lcom/microsoft/appcenter/utils/DeviceInfoHelper$DeviceInfoException;
    const-string/jumbo v5, "AppCenterCrashes"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Handled error report cannot get device info, errorReportId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static deleteWrapperExceptionData(Ljava/util/UUID;)V
    .locals 5

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "errorId":Ljava/util/UUID;
    move-object v3, v0

    if-nez v3, :cond_0

    .line 79
    const-string/jumbo v3, "AppCenterCrashes"

    const-string/jumbo v4, "Failed to delete wrapper exception data: null errorId"

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 90
    :goto_0
    return-void

    .line 82
    :cond_0
    move-object v3, v0

    invoke-static {v3}, Lcom/microsoft/appcenter/crashes/WrapperSdkExceptionManager;->getFile(Ljava/util/UUID;)Ljava/io/File;

    move-result-object v3

    move-object v1, v3

    .line 83
    .local v1, "dataFile":Ljava/io/File;
    move-object v3, v1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 84
    move-object v3, v0

    invoke-static {v3}, Lcom/microsoft/appcenter/crashes/WrapperSdkExceptionManager;->loadWrapperExceptionData(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 85
    .local v2, "loadResult":Ljava/lang/String;
    move-object v3, v2

    if-nez v3, :cond_1

    .line 86
    const-string/jumbo v3, "AppCenterCrashes"

    const-string/jumbo v4, "Failed to load wrapper exception data."

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_1
    move-object v3, v1

    invoke-static {v3}, Lcom/microsoft/appcenter/utils/storage/FileManager;->delete(Ljava/io/File;)Z

    move-result v3

    .line 90
    .end local v2    # "loadResult":Ljava/lang/String;
    :cond_2
    goto :goto_0
.end method

.method private static getFile(Ljava/util/UUID;)Ljava/io/File;
    .locals 8
    .param p0    # Ljava/util/UUID;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "errorId":Ljava/util/UUID;
    invoke-static {}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getErrorStorageDirectory()Ljava/io/File;

    move-result-object v3

    move-object v1, v3

    .line 126
    .local v1, "errorStorageDirectory":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".dat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 127
    .local v2, "filename":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v3

    .end local v0    # "errorId":Ljava/util/UUID;
    return-object v0
.end method

.method public static getUnprocessedErrorReports()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/appcenter/utils/async/AppCenterFuture",
            "<",
            "Ljava/util/Collection",
            "<",
            "Lcom/microsoft/appcenter/crashes/model/ErrorReport;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 158
    invoke-static {}, Lcom/microsoft/appcenter/crashes/Crashes;->getInstance()Lcom/microsoft/appcenter/crashes/Crashes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/appcenter/crashes/Crashes;->getUnprocessedErrorReports()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object v0

    return-object v0
.end method

.method public static loadWrapperExceptionData(Ljava/util/UUID;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "errorId":Ljava/util/UUID;
    move-object v3, v0

    if-nez v3, :cond_0

    .line 100
    const-string/jumbo v3, "AppCenterCrashes"

    const-string/jumbo v4, "Failed to load wrapper exception data: null errorId"

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/4 v3, 0x0

    move-object v0, v3

    .line 115
    .end local v0    # "errorId":Ljava/util/UUID;
    .local v1, "data":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 103
    .end local v1    # "data":Ljava/lang/String;
    .restart local v0    # "errorId":Ljava/util/UUID;
    :cond_0
    sget-object v3, Lcom/microsoft/appcenter/crashes/WrapperSdkExceptionManager;->sWrapperExceptionDataContainer:Ljava/util/Map;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v1, v3

    .line 104
    .restart local v1    # "data":Ljava/lang/String;
    move-object v3, v1

    if-eqz v3, :cond_1

    .line 105
    move-object v3, v1

    move-object v0, v3

    goto :goto_0

    .line 107
    :cond_1
    move-object v3, v0

    invoke-static {v3}, Lcom/microsoft/appcenter/crashes/WrapperSdkExceptionManager;->getFile(Ljava/util/UUID;)Ljava/io/File;

    move-result-object v3

    move-object v2, v3

    .line 108
    .local v2, "dataFile":Ljava/io/File;
    move-object v3, v2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 109
    move-object v3, v2

    invoke-static {v3}, Lcom/microsoft/appcenter/utils/storage/FileManager;->read(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 110
    move-object v3, v1

    if-eqz v3, :cond_2

    .line 111
    sget-object v3, Lcom/microsoft/appcenter/crashes/WrapperSdkExceptionManager;->sWrapperExceptionDataContainer:Ljava/util/Map;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 113
    :cond_2
    move-object v3, v1

    move-object v0, v3

    goto :goto_0

    .line 115
    :cond_3
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public static saveWrapperException(Ljava/lang/Thread;Ljava/lang/Throwable;Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;Ljava/lang/String;)Ljava/util/UUID;
    .locals 11

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "thread":Ljava/lang/Thread;
    move-object v1, p1

    .local v1, "throwable":Ljava/lang/Throwable;
    move-object v2, p2

    .local v2, "modelException":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    move-object v3, p3

    .local v3, "rawSerializedException":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/microsoft/appcenter/crashes/Crashes;->getInstance()Lcom/microsoft/appcenter/crashes/Crashes;

    move-result-object v6

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v6, v7, v8, v9}, Lcom/microsoft/appcenter/crashes/Crashes;->saveUncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;)Ljava/util/UUID;

    move-result-object v6

    move-object v4, v6

    .line 59
    .local v4, "errorId":Ljava/util/UUID;
    move-object v6, v4

    if-eqz v6, :cond_0

    move-object v6, v3

    if-eqz v6, :cond_0

    .line 60
    sget-object v6, Lcom/microsoft/appcenter/crashes/WrapperSdkExceptionManager;->sWrapperExceptionDataContainer:Ljava/util/Map;

    move-object v7, v4

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v3

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 61
    move-object v6, v4

    invoke-static {v6}, Lcom/microsoft/appcenter/crashes/WrapperSdkExceptionManager;->getFile(Ljava/util/UUID;)Ljava/io/File;

    move-result-object v6

    move-object v5, v6

    .line 62
    .local v5, "dataFile":Ljava/io/File;
    move-object v6, v5

    move-object v7, v3

    invoke-static {v6, v7}, Lcom/microsoft/appcenter/utils/storage/FileManager;->write(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    const-string/jumbo v6, "AppCenterCrashes"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Saved raw wrapper exception data into "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v5    # "dataFile":Ljava/io/File;
    :cond_0
    move-object v6, v4

    move-object v0, v6

    .line 68
    .end local v0    # "thread":Ljava/lang/Thread;
    .end local v4    # "errorId":Ljava/util/UUID;
    :goto_0
    return-object v0

    .line 66
    .restart local v0    # "thread":Ljava/lang/Thread;
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 67
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "AppCenterCrashes"

    const-string/jumbo v7, "Failed to save wrapper exception data to file"

    move-object v8, v4

    invoke-static {v6, v7, v8}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method

.method public static sendCrashReportsOrAwaitUserConfirmation(Ljava/util/Collection;)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/microsoft/appcenter/utils/async/AppCenterFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "filteredReportIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {}, Lcom/microsoft/appcenter/crashes/Crashes;->getInstance()Lcom/microsoft/appcenter/crashes/Crashes;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/microsoft/appcenter/crashes/Crashes;->sendCrashReportsOrAwaitUserConfirmation(Ljava/util/Collection;)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "filteredReportIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    return-object v0
.end method

.method public static sendErrorAttachments(Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "errorReportId":Ljava/lang/String;
    move-object v1, p1

    .local v1, "attachments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;>;"
    invoke-static {}, Lcom/microsoft/appcenter/crashes/Crashes;->getInstance()Lcom/microsoft/appcenter/crashes/Crashes;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/microsoft/appcenter/crashes/Crashes;->sendErrorAttachments(Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 203
    return-void
.end method

.method public static setAutomaticProcessing(Z)V
    .locals 3

    .prologue
    .line 149
    move v0, p0

    .local v0, "automaticProcessing":Z
    invoke-static {}, Lcom/microsoft/appcenter/crashes/Crashes;->getInstance()Lcom/microsoft/appcenter/crashes/Crashes;

    move-result-object v1

    move v2, v0

    invoke-virtual {v1, v2}, Lcom/microsoft/appcenter/crashes/Crashes;->setAutomaticProcessing(Z)V

    .line 150
    return-void
.end method

.method public static trackException(Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;Ljava/util/Map;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "modelException":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    move-object v1, p1

    .local v1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v2, p2

    .local v2, "attachments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;>;"
    invoke-static {}, Lcom/microsoft/appcenter/crashes/Crashes;->getInstance()Lcom/microsoft/appcenter/crashes/Crashes;

    move-result-object v3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lcom/microsoft/appcenter/crashes/Crashes;->queueException(Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;Ljava/util/Map;Ljava/lang/Iterable;)Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "modelException":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    return-object v0
.end method
