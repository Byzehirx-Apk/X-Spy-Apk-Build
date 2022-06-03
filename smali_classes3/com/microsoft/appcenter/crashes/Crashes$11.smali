.class Lcom/microsoft/appcenter/crashes/Crashes$11;
.super Ljava/lang/Object;
.source "Crashes.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/crashes/Crashes;->sendCrashReportsOrAwaitUserConfirmation()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/crashes/Crashes;

.field final synthetic val$alwaysSend:Z


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/crashes/Crashes;Z)V
    .locals 5

    .prologue
    .line 878
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes$11;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/crashes/Crashes;
    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/microsoft/appcenter/crashes/Crashes$11;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lcom/microsoft/appcenter/crashes/Crashes$11;->val$alwaysSend:Z

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 884
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes$11;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/Crashes$11;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    invoke-static {v1}, Lcom/microsoft/appcenter/crashes/Crashes;->access$1000(Lcom/microsoft/appcenter/crashes/Crashes;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 887
    move-object v1, v0

    iget-boolean v1, v1, Lcom/microsoft/appcenter/crashes/Crashes$11;->val$alwaysSend:Z

    if-eqz v1, :cond_0

    .line 888
    const-string/jumbo v1, "AppCenterCrashes"

    const-string/jumbo v2, "The flag for user confirmation is set to ALWAYS_SEND, will send logs."

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/Crashes$11;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/crashes/Crashes;->access$1100(Lcom/microsoft/appcenter/crashes/Crashes;I)V

    .line 890
    .line 907
    :goto_0
    return-void

    .line 894
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/Crashes$11;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    invoke-static {v1}, Lcom/microsoft/appcenter/crashes/Crashes;->access$1200(Lcom/microsoft/appcenter/crashes/Crashes;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 895
    const-string/jumbo v1, "AppCenterCrashes"

    const-string/jumbo v2, "Automatic processing disabled, will wait for explicit user confirmation."

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    goto :goto_0

    .line 900
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/Crashes$11;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    invoke-static {v1}, Lcom/microsoft/appcenter/crashes/Crashes;->access$700(Lcom/microsoft/appcenter/crashes/Crashes;)Lcom/microsoft/appcenter/crashes/CrashesListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/microsoft/appcenter/crashes/CrashesListener;->shouldAwaitUserConfirmation()Z

    move-result v1

    if-nez v1, :cond_3

    .line 901
    const-string/jumbo v1, "AppCenterCrashes"

    const-string/jumbo v2, "CrashesListener.shouldAwaitUserConfirmation returned false, will send logs."

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/Crashes$11;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/crashes/Crashes;->access$1100(Lcom/microsoft/appcenter/crashes/Crashes;I)V

    .line 907
    :cond_2
    :goto_1
    goto :goto_0

    .line 904
    :cond_3
    const-string/jumbo v1, "AppCenterCrashes"

    const-string/jumbo v2, "CrashesListener.shouldAwaitUserConfirmation returned true, wait sending logs."

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
