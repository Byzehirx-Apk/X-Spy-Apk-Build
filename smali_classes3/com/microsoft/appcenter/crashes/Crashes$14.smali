.class Lcom/microsoft/appcenter/crashes/Crashes$14;
.super Ljava/lang/Object;
.source "Crashes.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/crashes/Crashes;->sendCrashReportsOrAwaitUserConfirmation(Ljava/util/Collection;)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/crashes/Crashes;

.field final synthetic val$filteredReportIds:Ljava/util/Collection;

.field final synthetic val$future:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/crashes/Crashes;Ljava/util/Collection;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)V
    .locals 6

    .prologue
    .line 1210
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes$14;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/microsoft/appcenter/crashes/Crashes$14;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/microsoft/appcenter/crashes/Crashes$14;->val$filteredReportIds:Ljava/util/Collection;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/microsoft/appcenter/crashes/Crashes$14;->val$future:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1216
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes$14;
    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/crashes/Crashes$14;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    invoke-static {v5}, Lcom/microsoft/appcenter/crashes/Crashes;->access$1000(Lcom/microsoft/appcenter/crashes/Crashes;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v5

    .line 1217
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/util/UUID;Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;>;>;"
    :goto_0
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1218
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    move-object v2, v5

    .line 1219
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;>;"
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/UUID;

    move-object v3, v5

    .line 1220
    .local v3, "id":Ljava/util/UUID;
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;

    invoke-static {v5}, Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;->access$1300(Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;)Lcom/microsoft/appcenter/crashes/model/ErrorReport;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/appcenter/crashes/model/ErrorReport;->getId()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 1221
    .local v4, "idString":Ljava/lang/String;
    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/crashes/Crashes$14;->val$filteredReportIds:Ljava/util/Collection;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/crashes/Crashes$14;->val$filteredReportIds:Ljava/util/Collection;

    move-object v6, v4

    invoke-interface {v5, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1222
    const-string/jumbo v5, "AppCenterCrashes"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "CrashesListener.shouldProcess returned true, continue processing log: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    :goto_1
    goto :goto_0

    .line 1224
    :cond_0
    const-string/jumbo v5, "AppCenterCrashes"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "CrashesListener.shouldProcess returned false, clean up and ignore log: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/crashes/Crashes$14;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    move-object v6, v3

    invoke-static {v5, v6}, Lcom/microsoft/appcenter/crashes/Crashes;->access$1500(Lcom/microsoft/appcenter/crashes/Crashes;Ljava/util/UUID;)V

    .line 1226
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1231
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;>;"
    .end local v3    # "id":Ljava/util/UUID;
    .end local v4    # "idString":Ljava/lang/String;
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/crashes/Crashes$14;->val$future:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    move-object v6, v0

    iget-object v6, v6, Lcom/microsoft/appcenter/crashes/Crashes$14;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    invoke-static {v6}, Lcom/microsoft/appcenter/crashes/Crashes;->access$1800(Lcom/microsoft/appcenter/crashes/Crashes;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->complete(Ljava/lang/Object;)V

    .line 1232
    return-void
.end method
