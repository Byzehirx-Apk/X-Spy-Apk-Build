.class Lcom/microsoft/appcenter/AbstractAppCenterService$1;
.super Ljava/lang/Object;
.source "AbstractAppCenterService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/AbstractAppCenterService;->isInstanceEnabledAsync()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/AbstractAppCenterService;

.field final synthetic val$future:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/AbstractAppCenterService;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)V
    .locals 5

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AbstractAppCenterService$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/AbstractAppCenterService;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/microsoft/appcenter/AbstractAppCenterService$1;->this$0:Lcom/microsoft/appcenter/AbstractAppCenterService;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/microsoft/appcenter/AbstractAppCenterService$1;->val$future:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AbstractAppCenterService$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/AbstractAppCenterService$1;->val$future:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->complete(Ljava/lang/Object;)V

    .line 95
    return-void
.end method
