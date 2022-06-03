.class Lcom/microsoft/appcenter/AppCenter$2;
.super Ljava/lang/Object;
.source "AppCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/AppCenter;->setInstanceLogUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/AppCenter;

.field final synthetic val$logUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/AppCenter;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 538
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter$2;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/AppCenter;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/microsoft/appcenter/AppCenter$2;->this$0:Lcom/microsoft/appcenter/AppCenter;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/microsoft/appcenter/AppCenter$2;->val$logUrl:Ljava/lang/String;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 542
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter$2;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/AppCenter$2;->this$0:Lcom/microsoft/appcenter/AppCenter;

    invoke-static {v1}, Lcom/microsoft/appcenter/AppCenter;->access$100(Lcom/microsoft/appcenter/AppCenter;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 543
    const-string/jumbo v1, "AppCenter"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The log url of App Center endpoint has been changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/AppCenter$2;->val$logUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/AppCenter$2;->this$0:Lcom/microsoft/appcenter/AppCenter;

    invoke-static {v1}, Lcom/microsoft/appcenter/AppCenter;->access$000(Lcom/microsoft/appcenter/AppCenter;)Lcom/microsoft/appcenter/channel/Channel;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/AppCenter$2;->val$logUrl:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/microsoft/appcenter/channel/Channel;->setLogUrl(Ljava/lang/String;)V

    .line 549
    :goto_0
    return-void

    .line 546
    :cond_0
    const-string/jumbo v1, "AppCenter"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The log url of One Collector endpoint has been changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/AppCenter$2;->val$logUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/AppCenter$2;->this$0:Lcom/microsoft/appcenter/AppCenter;

    invoke-static {v1}, Lcom/microsoft/appcenter/AppCenter;->access$200(Lcom/microsoft/appcenter/AppCenter;)Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/AppCenter$2;->val$logUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;->setLogUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
