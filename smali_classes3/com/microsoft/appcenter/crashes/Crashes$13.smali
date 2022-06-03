.class Lcom/microsoft/appcenter/crashes/Crashes$13;
.super Ljava/lang/Object;
.source "Crashes.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/crashes/Crashes;->getUnprocessedErrorReports()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/crashes/Crashes;

.field final synthetic val$future:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/crashes/Crashes;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)V
    .locals 5

    .prologue
    .line 1191
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes$13;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/microsoft/appcenter/crashes/Crashes$13;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/microsoft/appcenter/crashes/Crashes$13;->val$future:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1195
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes$13;
    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lcom/microsoft/appcenter/crashes/Crashes$13;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    invoke-static {v6}, Lcom/microsoft/appcenter/crashes/Crashes;->access$1000(Lcom/microsoft/appcenter/crashes/Crashes;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v4

    .line 1196
    .local v1, "reports":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/microsoft/appcenter/crashes/model/ErrorReport;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/Crashes$13;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    invoke-static {v4}, Lcom/microsoft/appcenter/crashes/Crashes;->access$1000(Lcom/microsoft/appcenter/crashes/Crashes;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;

    move-object v3, v4

    .line 1197
    .local v3, "entry":Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;
    move-object v4, v1

    move-object v5, v3

    invoke-static {v5}, Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;->access$1300(Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;)Lcom/microsoft/appcenter/crashes/model/ErrorReport;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 1198
    goto :goto_0

    .line 1199
    .end local v3    # "entry":Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/Crashes$13;->val$future:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->complete(Ljava/lang/Object;)V

    .line 1200
    return-void
.end method
