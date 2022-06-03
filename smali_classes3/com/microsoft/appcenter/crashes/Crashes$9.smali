.class Lcom/microsoft/appcenter/crashes/Crashes$9;
.super Ljava/lang/Object;
.source "Crashes.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/crashes/Crashes;->queueException(Lcom/microsoft/appcenter/crashes/Crashes$ExceptionModelBuilder;Ljava/util/Map;Ljava/lang/Iterable;)Ljava/util/UUID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/crashes/Crashes;

.field final synthetic val$attachments:Ljava/lang/Iterable;

.field final synthetic val$errorId:Ljava/util/UUID;

.field final synthetic val$exceptionModelBuilder:Lcom/microsoft/appcenter/crashes/Crashes$ExceptionModelBuilder;

.field final synthetic val$userId:Ljava/lang/String;

.field final synthetic val$validatedProperties:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/crashes/Crashes;Ljava/util/UUID;Ljava/lang/String;Lcom/microsoft/appcenter/crashes/Crashes$ExceptionModelBuilder;Ljava/util/Map;Ljava/lang/Iterable;)V
    .locals 9

    .prologue
    .line 649
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes$9;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/microsoft/appcenter/crashes/Crashes$9;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lcom/microsoft/appcenter/crashes/Crashes$9;->val$errorId:Ljava/util/UUID;

    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Lcom/microsoft/appcenter/crashes/Crashes$9;->val$userId:Ljava/lang/String;

    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Lcom/microsoft/appcenter/crashes/Crashes$9;->val$exceptionModelBuilder:Lcom/microsoft/appcenter/crashes/Crashes$ExceptionModelBuilder;

    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lcom/microsoft/appcenter/crashes/Crashes$9;->val$validatedProperties:Ljava/util/Map;

    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Lcom/microsoft/appcenter/crashes/Crashes$9;->val$attachments:Ljava/lang/Iterable;

    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 655
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes$9;
    new-instance v2, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;-><init>()V

    move-object v1, v2

    .line 656
    .local v1, "errorLog":Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/Crashes$9;->val$errorId:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->setId(Ljava/util/UUID;)V

    .line 657
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/Crashes$9;->val$userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->setUserId(Ljava/lang/String;)V

    .line 658
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/Crashes$9;->val$exceptionModelBuilder:Lcom/microsoft/appcenter/crashes/Crashes$ExceptionModelBuilder;

    invoke-interface {v3}, Lcom/microsoft/appcenter/crashes/Crashes$ExceptionModelBuilder;->buildExceptionModel()Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->setException(Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;)V

    .line 659
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/Crashes$9;->val$validatedProperties:Ljava/util/Map;

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->setProperties(Ljava/util/Map;)V

    .line 660
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/crashes/Crashes$9;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    invoke-static {v2}, Lcom/microsoft/appcenter/crashes/Crashes;->access$800(Lcom/microsoft/appcenter/crashes/Crashes;)Lcom/microsoft/appcenter/channel/Channel;

    move-result-object v2

    move-object v3, v1

    const-string/jumbo v4, "groupErrors"

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Lcom/microsoft/appcenter/channel/Channel;->enqueue(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;I)V

    .line 663
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/crashes/Crashes$9;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/Crashes$9;->val$errorId:Ljava/util/UUID;

    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/Crashes$9;->val$attachments:Ljava/lang/Iterable;

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/crashes/Crashes;->access$900(Lcom/microsoft/appcenter/crashes/Crashes;Ljava/util/UUID;Ljava/lang/Iterable;)V

    .line 664
    return-void
.end method
