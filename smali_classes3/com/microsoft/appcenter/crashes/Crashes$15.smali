.class Lcom/microsoft/appcenter/crashes/Crashes$15;
.super Ljava/lang/Object;
.source "Crashes.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/crashes/Crashes;->sendErrorAttachments(Ljava/lang/String;Ljava/lang/Iterable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/crashes/Crashes;

.field final synthetic val$attachments:Ljava/lang/Iterable;

.field final synthetic val$errorReportId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/crashes/Crashes;Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 6

    .prologue
    .line 1242
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes$15;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/microsoft/appcenter/crashes/Crashes$15;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/microsoft/appcenter/crashes/Crashes$15;->val$errorReportId:Ljava/lang/String;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/microsoft/appcenter/crashes/Crashes$15;->val$attachments:Ljava/lang/Iterable;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1250
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes$15;
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/Crashes$15;->val$errorReportId:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v1, v3

    .line 1254
    .line 1257
    .local v1, "errorId":Ljava/util/UUID;
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/Crashes$15;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/crashes/Crashes$15;->val$attachments:Ljava/lang/Iterable;

    invoke-static {v3, v4, v5}, Lcom/microsoft/appcenter/crashes/Crashes;->access$900(Lcom/microsoft/appcenter/crashes/Crashes;Ljava/util/UUID;Ljava/lang/Iterable;)V

    .line 1258
    .end local v1    # "errorId":Ljava/util/UUID;
    :goto_0
    return-void

    .line 1251
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1252
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "AppCenterCrashes"

    const-string/jumbo v4, "Error report identifier has an invalid format for sending attachments."

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    goto :goto_0
.end method
