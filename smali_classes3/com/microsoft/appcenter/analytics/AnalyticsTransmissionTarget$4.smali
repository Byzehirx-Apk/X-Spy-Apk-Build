.class Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$4;
.super Ljava/lang/Object;
.source "AnalyticsTransmissionTarget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->setEnabledAsync(Z)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

.field final synthetic val$enabled:Z

.field final synthetic val$future:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;ZLcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)V
    .locals 6

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$4;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$4;->this$0:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    move-object v4, v0

    move v5, v2

    iput-boolean v5, v4, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$4;->val$enabled:Z

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$4;->val$future:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$4;
    move-object v6, v0

    iget-object v6, v6, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$4;->this$0:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    invoke-static {v6}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->access$200(Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 342
    new-instance v6, Ljava/util/LinkedList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    move-object v1, v6

    .line 343
    .local v1, "descendantTargets":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;>;"
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$4;->this$0:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 344
    :goto_0
    move-object v6, v1

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 345
    move-object v6, v1

    invoke-interface {v6}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v6

    move-object v2, v6

    .line 346
    .local v2, "descendantIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;>;"
    :goto_1
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 347
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    move-object v3, v6

    .line 348
    .local v3, "descendantTarget":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/ListIterator;->remove()V

    .line 349
    move-object v6, v3

    invoke-static {v6}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->access$300(Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v0

    iget-boolean v7, v7, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$4;->val$enabled:Z

    invoke-static {v6, v7}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->putBoolean(Ljava/lang/String;Z)V

    .line 350
    move-object v6, v3

    invoke-static {v6}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->access$400(Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_2
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    move-object v5, v6

    .line 351
    .local v5, "childTarget":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    move-object v6, v2

    move-object v7, v5

    invoke-interface {v6, v7}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 352
    goto :goto_2

    .line 353
    .end local v5    # "childTarget":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    :cond_0
    goto :goto_1

    .line 354
    .end local v3    # "descendantTarget":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    :cond_1
    goto :goto_0

    .line 355
    .line 358
    .end local v1    # "descendantTargets":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;>;"
    .end local v2    # "descendantIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;>;"
    :cond_2
    :goto_3
    move-object v6, v0

    iget-object v6, v6, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$4;->val$future:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->complete(Ljava/lang/Object;)V

    .line 359
    return-void

    .line 356
    :cond_3
    const-string/jumbo v6, "AppCenterAnalytics"

    const-string/jumbo v7, "One of the parent transmission target is disabled, cannot change state."

    invoke-static {v6, v7}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method
