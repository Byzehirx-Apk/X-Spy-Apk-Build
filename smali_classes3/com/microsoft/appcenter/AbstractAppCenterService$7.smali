.class Lcom/microsoft/appcenter/AbstractAppCenterService$7;
.super Ljava/lang/Object;
.source "AbstractAppCenterService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/AbstractAppCenterService;->postOnUiThread(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/AbstractAppCenterService;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/AbstractAppCenterService;Ljava/lang/Runnable;)V
    .locals 5

    .prologue
    .line 375
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AbstractAppCenterService$7;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/AbstractAppCenterService;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/microsoft/appcenter/AbstractAppCenterService$7;->this$0:Lcom/microsoft/appcenter/AbstractAppCenterService;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/microsoft/appcenter/AbstractAppCenterService$7;->val$runnable:Ljava/lang/Runnable;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 381
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AbstractAppCenterService$7;
    new-instance v1, Lcom/microsoft/appcenter/AbstractAppCenterService$7$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/microsoft/appcenter/AbstractAppCenterService$7$1;-><init>(Lcom/microsoft/appcenter/AbstractAppCenterService$7;)V

    invoke-static {v1}, Lcom/microsoft/appcenter/utils/HandlerUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 388
    return-void
.end method
