.class Lcom/microsoft/appcenter/AbstractAppCenterService$7$1;
.super Ljava/lang/Object;
.source "AbstractAppCenterService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/AbstractAppCenterService$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/microsoft/appcenter/AbstractAppCenterService$7;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/AbstractAppCenterService$7;)V
    .locals 4

    .prologue
    .line 381
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AbstractAppCenterService$7$1;
    move-object v1, p1

    .local v1, "this$1":Lcom/microsoft/appcenter/AbstractAppCenterService$7;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/AbstractAppCenterService$7$1;->this$1:Lcom/microsoft/appcenter/AbstractAppCenterService$7;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 385
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AbstractAppCenterService$7$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/AbstractAppCenterService$7$1;->this$1:Lcom/microsoft/appcenter/AbstractAppCenterService$7;

    iget-object v1, v1, Lcom/microsoft/appcenter/AbstractAppCenterService$7;->this$0:Lcom/microsoft/appcenter/AbstractAppCenterService;

    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/AbstractAppCenterService$7$1;->this$1:Lcom/microsoft/appcenter/AbstractAppCenterService$7;

    iget-object v2, v2, Lcom/microsoft/appcenter/AbstractAppCenterService$7;->val$runnable:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/AbstractAppCenterService;->access$000(Lcom/microsoft/appcenter/AbstractAppCenterService;Ljava/lang/Runnable;)V

    .line 386
    return-void
.end method
