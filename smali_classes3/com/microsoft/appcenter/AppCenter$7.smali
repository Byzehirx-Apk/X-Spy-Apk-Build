.class Lcom/microsoft/appcenter/AppCenter$7;
.super Ljava/lang/Object;
.source "AppCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/AppCenter;->handlerAppCenterOperation(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/AppCenter;

.field final synthetic val$disabledRunnable:Ljava/lang/Runnable;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/AppCenter;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 6

    .prologue
    .line 752
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter$7;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/AppCenter;
    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/microsoft/appcenter/AppCenter$7;->this$0:Lcom/microsoft/appcenter/AppCenter;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/microsoft/appcenter/AppCenter$7;->val$runnable:Ljava/lang/Runnable;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/microsoft/appcenter/AppCenter$7;->val$disabledRunnable:Ljava/lang/Runnable;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 756
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter$7;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/AppCenter$7;->this$0:Lcom/microsoft/appcenter/AppCenter;

    invoke-virtual {v1}, Lcom/microsoft/appcenter/AppCenter;->isInstanceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 757
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/AppCenter$7;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 765
    :goto_0
    return-void

    .line 759
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/AppCenter$7;->val$disabledRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 760
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/AppCenter$7;->val$disabledRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 762
    :cond_1
    const-string/jumbo v1, "AppCenter"

    const-string/jumbo v2, "App Center SDK is disabled."

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
