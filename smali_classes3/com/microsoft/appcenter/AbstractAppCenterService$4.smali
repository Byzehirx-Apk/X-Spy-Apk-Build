.class Lcom/microsoft/appcenter/AbstractAppCenterService$4;
.super Ljava/lang/Object;
.source "AbstractAppCenterService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/AbstractAppCenterService;->post(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/AbstractAppCenterService;

.field final synthetic val$runnable:Ljava/lang/Runnable;

.field final synthetic val$serviceDisabledRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/AbstractAppCenterService;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 6

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AbstractAppCenterService$4;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/AbstractAppCenterService;
    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/microsoft/appcenter/AbstractAppCenterService$4;->this$0:Lcom/microsoft/appcenter/AbstractAppCenterService;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/microsoft/appcenter/AbstractAppCenterService$4;->val$runnable:Ljava/lang/Runnable;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/microsoft/appcenter/AbstractAppCenterService$4;->val$serviceDisabledRunnable:Ljava/lang/Runnable;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AbstractAppCenterService$4;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/AbstractAppCenterService$4;->this$0:Lcom/microsoft/appcenter/AbstractAppCenterService;

    invoke-virtual {v1}, Lcom/microsoft/appcenter/AbstractAppCenterService;->isInstanceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/AbstractAppCenterService$4;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 322
    :goto_0
    return-void

    .line 317
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/AbstractAppCenterService$4;->val$serviceDisabledRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 318
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/AbstractAppCenterService$4;->val$serviceDisabledRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 320
    :cond_1
    const-string/jumbo v1, "AppCenter"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/AbstractAppCenterService$4;->this$0:Lcom/microsoft/appcenter/AbstractAppCenterService;

    invoke-virtual {v3}, Lcom/microsoft/appcenter/AbstractAppCenterService;->getServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " service disabled, discarding calls."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
