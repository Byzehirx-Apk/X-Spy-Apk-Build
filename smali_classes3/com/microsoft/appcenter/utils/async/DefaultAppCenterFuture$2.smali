.class Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture$2;
.super Ljava/lang/Object;
.source "DefaultAppCenterFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->complete(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture$2;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture$2;"
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture$2;->this$0:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture$2;->val$value:Ljava/lang/Object;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture$2;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture$2;"
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture$2;->this$0:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    invoke-static {v3}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->access$100(Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/appcenter/utils/async/AppCenterConsumer;

    move-object v2, v3

    .line 94
    .local v2, "function":Lcom/microsoft/appcenter/utils/async/AppCenterConsumer;, "Lcom/microsoft/appcenter/utils/async/AppCenterConsumer<TT;>;"
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture$2;->val$value:Ljava/lang/Object;

    invoke-interface {v3, v4}, Lcom/microsoft/appcenter/utils/async/AppCenterConsumer;->accept(Ljava/lang/Object;)V

    .line 95
    goto :goto_0

    .line 96
    .end local v2    # "function":Lcom/microsoft/appcenter/utils/async/AppCenterConsumer;, "Lcom/microsoft/appcenter/utils/async/AppCenterConsumer<TT;>;"
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture$2;->this$0:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->access$102(Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    .line 97
    return-void
.end method
