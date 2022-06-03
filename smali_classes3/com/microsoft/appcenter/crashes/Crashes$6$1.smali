.class Lcom/microsoft/appcenter/crashes/Crashes$6$1;
.super Ljava/lang/Object;
.source "Crashes.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/crashes/Crashes$6;->processCallback(Lcom/microsoft/appcenter/ingestion/models/Log;Lcom/microsoft/appcenter/crashes/Crashes$CallbackProcessor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/microsoft/appcenter/crashes/Crashes$6;

.field final synthetic val$callbackProcessor:Lcom/microsoft/appcenter/crashes/Crashes$CallbackProcessor;

.field final synthetic val$log:Lcom/microsoft/appcenter/ingestion/models/Log;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/crashes/Crashes$6;Lcom/microsoft/appcenter/ingestion/models/Log;Lcom/microsoft/appcenter/crashes/Crashes$CallbackProcessor;)V
    .locals 6

    .prologue
    .line 509
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes$6$1;
    move-object v1, p1

    .local v1, "this$1":Lcom/microsoft/appcenter/crashes/Crashes$6;
    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/microsoft/appcenter/crashes/Crashes$6$1;->this$1:Lcom/microsoft/appcenter/crashes/Crashes$6;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/microsoft/appcenter/crashes/Crashes$6$1;->val$log:Lcom/microsoft/appcenter/ingestion/models/Log;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/microsoft/appcenter/crashes/Crashes$6$1;->val$callbackProcessor:Lcom/microsoft/appcenter/crashes/Crashes$CallbackProcessor;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 513
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes$6$1;
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/Crashes$6$1;->val$log:Lcom/microsoft/appcenter/ingestion/models/Log;

    instance-of v4, v4, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;

    if-eqz v4, :cond_3

    .line 514
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/Crashes$6$1;->val$log:Lcom/microsoft/appcenter/ingestion/models/Log;

    check-cast v4, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;

    move-object v1, v4

    .line 515
    .local v1, "errorLog":Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/Crashes$6$1;->this$1:Lcom/microsoft/appcenter/crashes/Crashes$6;

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/Crashes$6;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/microsoft/appcenter/crashes/Crashes;->buildErrorReport(Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;)Lcom/microsoft/appcenter/crashes/model/ErrorReport;

    move-result-object v4

    move-object v2, v4

    .line 516
    .local v2, "report":Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    move-object v4, v1

    invoke-virtual {v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->getId()Ljava/util/UUID;

    move-result-object v4

    move-object v3, v4

    .line 517
    .local v3, "id":Ljava/util/UUID;
    move-object v4, v2

    if-eqz v4, :cond_2

    .line 520
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/Crashes$6$1;->val$callbackProcessor:Lcom/microsoft/appcenter/crashes/Crashes$CallbackProcessor;

    invoke-interface {v4}, Lcom/microsoft/appcenter/crashes/Crashes$CallbackProcessor;->shouldDeleteThrowable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 521
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/Crashes$6$1;->this$1:Lcom/microsoft/appcenter/crashes/Crashes$6;

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/Crashes$6;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    move-object v5, v3

    invoke-static {v4, v5}, Lcom/microsoft/appcenter/crashes/Crashes;->access$500(Lcom/microsoft/appcenter/crashes/Crashes;Ljava/util/UUID;)V

    .line 525
    :cond_0
    new-instance v4, Lcom/microsoft/appcenter/crashes/Crashes$6$1$1;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/microsoft/appcenter/crashes/Crashes$6$1$1;-><init>(Lcom/microsoft/appcenter/crashes/Crashes$6$1;Lcom/microsoft/appcenter/crashes/model/ErrorReport;)V

    invoke-static {v4}, Lcom/microsoft/appcenter/utils/HandlerUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 535
    .line 538
    .end local v1    # "errorLog":Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    .end local v2    # "report":Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    .end local v3    # "id":Ljava/util/UUID;
    :cond_1
    :goto_0
    return-void

    .line 533
    .restart local v1    # "errorLog":Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    .restart local v2    # "report":Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    .restart local v3    # "id":Ljava/util/UUID;
    :cond_2
    const-string/jumbo v4, "AppCenterCrashes"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cannot find crash report for the error log: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 535
    .end local v1    # "errorLog":Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    .end local v2    # "report":Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    .end local v3    # "id":Ljava/util/UUID;
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/Crashes$6$1;->val$log:Lcom/microsoft/appcenter/ingestion/models/Log;

    instance-of v4, v4, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;

    if-nez v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/Crashes$6$1;->val$log:Lcom/microsoft/appcenter/ingestion/models/Log;

    instance-of v4, v4, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;

    if-nez v4, :cond_1

    .line 536
    const-string/jumbo v4, "AppCenterCrashes"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "A different type of log comes to crashes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/microsoft/appcenter/crashes/Crashes$6$1;->val$log:Lcom/microsoft/appcenter/ingestion/models/Log;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
