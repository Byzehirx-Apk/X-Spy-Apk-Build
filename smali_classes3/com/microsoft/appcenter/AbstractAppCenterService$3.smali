.class Lcom/microsoft/appcenter/AbstractAppCenterService$3;
.super Ljava/lang/Object;
.source "AbstractAppCenterService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/AbstractAppCenterService;->setInstanceEnabledAsync(Z)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/AbstractAppCenterService;

.field final synthetic val$enabled:Z

.field final synthetic val$future:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/AbstractAppCenterService;ZLcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)V
    .locals 6

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AbstractAppCenterService$3;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/AbstractAppCenterService;
    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/microsoft/appcenter/AbstractAppCenterService$3;->this$0:Lcom/microsoft/appcenter/AbstractAppCenterService;

    move-object v4, v0

    move v5, v2

    iput-boolean v5, v4, Lcom/microsoft/appcenter/AbstractAppCenterService$3;->val$enabled:Z

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/microsoft/appcenter/AbstractAppCenterService$3;->val$future:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AbstractAppCenterService$3;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/AbstractAppCenterService$3;->this$0:Lcom/microsoft/appcenter/AbstractAppCenterService;

    move-object v2, v0

    iget-boolean v2, v2, Lcom/microsoft/appcenter/AbstractAppCenterService$3;->val$enabled:Z

    invoke-virtual {v1, v2}, Lcom/microsoft/appcenter/AbstractAppCenterService;->setInstanceEnabled(Z)V

    .line 126
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/AbstractAppCenterService$3;->val$future:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->complete(Ljava/lang/Object;)V

    .line 127
    return-void
.end method
