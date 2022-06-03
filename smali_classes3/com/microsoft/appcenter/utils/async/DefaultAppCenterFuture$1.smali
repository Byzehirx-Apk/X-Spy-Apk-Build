.class Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture$1;
.super Ljava/lang/Object;
.source "DefaultAppCenterFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->thenAccept(Lcom/microsoft/appcenter/utils/async/AppCenterConsumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

.field final synthetic val$function:Lcom/microsoft/appcenter/utils/async/AppCenterConsumer;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;Lcom/microsoft/appcenter/utils/async/AppCenterConsumer;)V
    .locals 5

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture$1;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture$1;"
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture$1;->this$0:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture$1;->val$function:Lcom/microsoft/appcenter/utils/async/AppCenterConsumer;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture$1;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture$1;"
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture$1;->val$function:Lcom/microsoft/appcenter/utils/async/AppCenterConsumer;

    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture$1;->this$0:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    invoke-static {v2}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->access$000(Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/microsoft/appcenter/utils/async/AppCenterConsumer;->accept(Ljava/lang/Object;)V

    .line 67
    return-void
.end method
