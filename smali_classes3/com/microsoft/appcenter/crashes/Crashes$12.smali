.class Lcom/microsoft/appcenter/crashes/Crashes$12;
.super Ljava/lang/Object;
.source "Crashes.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/crashes/Crashes;->handleUserConfirmation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/crashes/Crashes;

.field final synthetic val$userConfirmation:I


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/crashes/Crashes;I)V
    .locals 5

    .prologue
    .line 971
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes$12;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/crashes/Crashes;
    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/microsoft/appcenter/crashes/Crashes$12;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/microsoft/appcenter/crashes/Crashes$12;->val$userConfirmation:I

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 977
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes$12;
    move-object v9, v0

    iget v9, v9, Lcom/microsoft/appcenter/crashes/Crashes$12;->val$userConfirmation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 980
    move-object v9, v0

    iget-object v9, v9, Lcom/microsoft/appcenter/crashes/Crashes$12;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    invoke-static {v9}, Lcom/microsoft/appcenter/crashes/Crashes;->access$1000(Lcom/microsoft/appcenter/crashes/Crashes;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v1, v9

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/UUID;>;"
    :goto_0
    move-object v9, v1

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 981
    move-object v9, v1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/UUID;

    move-object v2, v9

    .line 982
    .local v2, "id":Ljava/util/UUID;
    move-object v9, v1

    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 983
    move-object v9, v0

    iget-object v9, v9, Lcom/microsoft/appcenter/crashes/Crashes$12;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    move-object v10, v2

    invoke-static {v9, v10}, Lcom/microsoft/appcenter/crashes/Crashes;->access$1500(Lcom/microsoft/appcenter/crashes/Crashes;Ljava/util/UUID;)V

    .line 984
    goto :goto_0

    .line 985
    .end local v2    # "id":Ljava/util/UUID;
    :cond_0
    invoke-static {}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->cleanPendingMinidumps()V

    .line 1057
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/UUID;>;"
    :cond_1
    return-void

    .line 992
    :cond_2
    move-object v9, v0

    iget v9, v9, Lcom/microsoft/appcenter/crashes/Crashes$12;->val$userConfirmation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 993
    const-string/jumbo v9, "com.microsoft.appcenter.crashes.always.send"

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->putBoolean(Ljava/lang/String;Z)V

    .line 997
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Lcom/microsoft/appcenter/crashes/Crashes$12;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    invoke-static {v9}, Lcom/microsoft/appcenter/crashes/Crashes;->access$1000(Lcom/microsoft/appcenter/crashes/Crashes;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v1, v9

    .line 998
    .local v1, "unprocessedIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/util/UUID;Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;>;>;"
    :goto_1
    move-object v9, v1

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1001
    const/4 v9, 0x0

    move-object v2, v9

    .line 1002
    .local v2, "dumpFile":Ljava/io/File;
    const/4 v9, 0x0

    move-object v3, v9

    .line 1003
    .local v3, "dumpAttachment":Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;
    move-object v9, v1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    move-object v4, v9

    .line 1004
    .local v4, "unprocessedEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;>;"
    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;

    move-object v5, v9

    .line 1005
    .local v5, "errorLogReport":Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;
    move-object v9, v5

    invoke-static {v9}, Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;->access$1300(Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;)Lcom/microsoft/appcenter/crashes/model/ErrorReport;

    move-result-object v9

    invoke-virtual {v9}, Lcom/microsoft/appcenter/crashes/model/ErrorReport;->getDevice()Lcom/microsoft/appcenter/ingestion/models/Device;

    move-result-object v9

    if-eqz v9, :cond_5

    const-string/jumbo v9, "appcenter.ndk"

    move-object v10, v5

    invoke-static {v10}, Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;->access$1300(Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;)Lcom/microsoft/appcenter/crashes/model/ErrorReport;

    move-result-object v10

    invoke-virtual {v10}, Lcom/microsoft/appcenter/crashes/model/ErrorReport;->getDevice()Lcom/microsoft/appcenter/ingestion/models/Device;

    move-result-object v10

    invoke-virtual {v10}, Lcom/microsoft/appcenter/ingestion/models/Device;->getWrapperSdkName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1008
    move-object v9, v5

    invoke-static {v9}, Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;->access$1600(Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;)Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;

    move-result-object v9

    invoke-virtual {v9}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->getException()Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    move-result-object v9

    move-object v6, v9

    .line 1009
    .local v6, "exception":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    move-object v9, v6

    invoke-virtual {v9}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->getMinidumpFilePath()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 1012
    .local v7, "minidumpFilePath":Ljava/lang/String;
    move-object v9, v6

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->setMinidumpFilePath(Ljava/lang/String;)V

    .line 1018
    move-object v9, v7

    if-nez v9, :cond_4

    .line 1019
    move-object v9, v6

    invoke-virtual {v9}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->getStackTrace()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 1022
    move-object v9, v6

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->setStackTrace(Ljava/lang/String;)V

    .line 1026
    :cond_4
    move-object v9, v7

    if-eqz v9, :cond_8

    .line 1027
    new-instance v9, Ljava/io/File;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v7

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v9

    .line 1028
    move-object v9, v2

    invoke-static {v9}, Lcom/microsoft/appcenter/utils/storage/FileManager;->readBytes(Ljava/io/File;)[B

    move-result-object v9

    move-object v8, v9

    .line 1029
    .local v8, "logfileContents":[B
    move-object v9, v8

    const-string/jumbo v10, "minidump.dmp"

    const-string/jumbo v11, "application/octet-stream"

    invoke-static {v9, v10, v11}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->attachmentWithBinary([BLjava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;

    move-result-object v9

    move-object v3, v9

    .line 1036
    .end local v6    # "exception":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    .end local v7    # "minidumpFilePath":Ljava/lang/String;
    .end local v8    # "logfileContents":[B
    :cond_5
    :goto_2
    move-object v9, v0

    iget-object v9, v9, Lcom/microsoft/appcenter/crashes/Crashes$12;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    invoke-static {v9}, Lcom/microsoft/appcenter/crashes/Crashes;->access$1700(Lcom/microsoft/appcenter/crashes/Crashes;)Lcom/microsoft/appcenter/channel/Channel;

    move-result-object v9

    move-object v10, v5

    invoke-static {v10}, Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;->access$1600(Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;)Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;

    move-result-object v10

    const-string/jumbo v11, "groupErrors"

    const/4 v12, 0x2

    invoke-interface {v9, v10, v11, v12}, Lcom/microsoft/appcenter/channel/Channel;->enqueue(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;I)V

    .line 1039
    move-object v9, v3

    if-eqz v9, :cond_6

    .line 1040
    move-object v9, v0

    iget-object v9, v9, Lcom/microsoft/appcenter/crashes/Crashes$12;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    move-object v10, v5

    invoke-static {v10}, Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;->access$1600(Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;)Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;

    move-result-object v10

    invoke-virtual {v10}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->getId()Ljava/util/UUID;

    move-result-object v10

    move-object v11, v3

    invoke-static {v11}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/microsoft/appcenter/crashes/Crashes;->access$900(Lcom/microsoft/appcenter/crashes/Crashes;Ljava/util/UUID;Ljava/lang/Iterable;)V

    .line 1043
    move-object v9, v2

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v9

    .line 1047
    :cond_6
    move-object v9, v0

    iget-object v9, v9, Lcom/microsoft/appcenter/crashes/Crashes$12;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    invoke-static {v9}, Lcom/microsoft/appcenter/crashes/Crashes;->access$1200(Lcom/microsoft/appcenter/crashes/Crashes;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1048
    move-object v9, v0

    iget-object v9, v9, Lcom/microsoft/appcenter/crashes/Crashes$12;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    invoke-static {v9}, Lcom/microsoft/appcenter/crashes/Crashes;->access$700(Lcom/microsoft/appcenter/crashes/Crashes;)Lcom/microsoft/appcenter/crashes/CrashesListener;

    move-result-object v9

    move-object v10, v5

    invoke-static {v10}, Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;->access$1300(Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;)Lcom/microsoft/appcenter/crashes/model/ErrorReport;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/microsoft/appcenter/crashes/CrashesListener;->getErrorAttachments(Lcom/microsoft/appcenter/crashes/model/ErrorReport;)Ljava/lang/Iterable;

    move-result-object v9

    move-object v6, v9

    .line 1049
    .local v6, "attachments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;>;"
    move-object v9, v0

    iget-object v9, v9, Lcom/microsoft/appcenter/crashes/Crashes$12;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    move-object v10, v5

    invoke-static {v10}, Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;->access$1600(Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;)Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;

    move-result-object v10

    invoke-virtual {v10}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->getId()Ljava/util/UUID;

    move-result-object v10

    move-object v11, v6

    invoke-static {v9, v10, v11}, Lcom/microsoft/appcenter/crashes/Crashes;->access$900(Lcom/microsoft/appcenter/crashes/Crashes;Ljava/util/UUID;Ljava/lang/Iterable;)V

    .line 1053
    .end local v6    # "attachments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;>;"
    :cond_7
    move-object v9, v1

    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 1054
    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/UUID;

    invoke-static {v9}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->removeStoredErrorLogFile(Ljava/util/UUID;)V

    .line 1055
    goto/16 :goto_1

    .line 1031
    .local v6, "exception":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    .restart local v7    # "minidumpFilePath":Ljava/lang/String;
    :cond_8
    const-string/jumbo v9, "AppCenterCrashes"

    const-string/jumbo v10, "NativeException found without minidump."

    invoke-static {v9, v10}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
