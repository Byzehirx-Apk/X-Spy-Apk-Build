.class Lcom/microsoft/appcenter/analytics/Analytics$8;
.super Ljava/lang/Object;
.source "Analytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/analytics/Analytics;->trackEventAsync(Ljava/lang/String;Ljava/util/List;Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/analytics/Analytics;

.field final synthetic val$flags:I

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$properties:Ljava/util/List;

.field final synthetic val$transmissionTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/analytics/Analytics;Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
    .locals 9

    .prologue
    .line 807
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics$8;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/microsoft/appcenter/analytics/Analytics$8;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lcom/microsoft/appcenter/analytics/Analytics$8;->val$transmissionTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Lcom/microsoft/appcenter/analytics/Analytics$8;->val$userId:Ljava/lang/String;

    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Lcom/microsoft/appcenter/analytics/Analytics$8;->val$name:Ljava/lang/String;

    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lcom/microsoft/appcenter/analytics/Analytics$8;->val$properties:Ljava/util/List;

    move-object v7, v0

    move v8, v6

    iput v8, v7, Lcom/microsoft/appcenter/analytics/Analytics$8;->val$flags:I

    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 811
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics$8;
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/analytics/Analytics$8;->val$transmissionTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    if-nez v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/analytics/Analytics$8;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    iget-object v4, v4, Lcom/microsoft/appcenter/analytics/Analytics;->mDefaultTransmissionTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    :goto_0
    move-object v1, v4

    .line 812
    .local v1, "aTransmissionTarget":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    new-instance v4, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;-><init>()V

    move-object v2, v4

    .line 813
    .local v2, "eventLog":Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;
    move-object v4, v1

    if-eqz v4, :cond_3

    .line 814
    move-object v4, v1

    invoke-virtual {v4}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 815
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v5}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->getTransmissionTargetToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;->addTransmissionTarget(Ljava/lang/String;)V

    .line 816
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;->setTag(Ljava/lang/Object;)V

    .line 817
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/analytics/Analytics$8;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    iget-object v5, v5, Lcom/microsoft/appcenter/analytics/Analytics;->mDefaultTransmissionTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    if-ne v4, v5, :cond_0

    .line 818
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/analytics/Analytics$8;->val$userId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;->setUserId(Ljava/lang/String;)V

    .line 828
    :cond_0
    move-object v4, v2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;->setId(Ljava/util/UUID;)V

    .line 829
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/analytics/Analytics$8;->val$name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;->setName(Ljava/lang/String;)V

    .line 830
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/analytics/Analytics$8;->val$properties:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;->setTypedProperties(Ljava/util/List;)V

    .line 833
    move-object v4, v0

    iget v4, v4, Lcom/microsoft/appcenter/analytics/Analytics$8;->val$flags:I

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/microsoft/appcenter/Flags;->getPersistenceFlag(IZ)I

    move-result v4

    move v3, v4

    .line 834
    .local v3, "filteredFlags":I
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/analytics/Analytics$8;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    invoke-static {v4}, Lcom/microsoft/appcenter/analytics/Analytics;->access$800(Lcom/microsoft/appcenter/analytics/Analytics;)Lcom/microsoft/appcenter/channel/Channel;

    move-result-object v4

    move-object v5, v2

    move v6, v3

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    const-string/jumbo v6, "group_analytics_critical"

    :goto_1
    move v7, v3

    invoke-interface {v4, v5, v6, v7}, Lcom/microsoft/appcenter/channel/Channel;->enqueue(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;I)V

    .line 835
    .end local v3    # "filteredFlags":I
    :goto_2
    return-void

    .line 811
    .end local v1    # "aTransmissionTarget":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    .end local v2    # "eventLog":Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/analytics/Analytics$8;->val$transmissionTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    goto :goto_0

    .line 821
    .restart local v1    # "aTransmissionTarget":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    .restart local v2    # "eventLog":Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;
    :cond_2
    const-string/jumbo v4, "AppCenterAnalytics"

    const-string/jumbo v5, "This transmission target is disabled."

    invoke-static {v4, v5}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    goto :goto_2

    .line 824
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/analytics/Analytics$8;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    invoke-static {v4}, Lcom/microsoft/appcenter/analytics/Analytics;->access$600(Lcom/microsoft/appcenter/analytics/Analytics;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 825
    const-string/jumbo v4, "AppCenterAnalytics"

    const-string/jumbo v5, "Cannot track event using Analytics.trackEvent if not started from app, please start from the application or use Analytics.getTransmissionTarget."

    invoke-static {v4, v5}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    goto :goto_2

    .line 834
    .restart local v3    # "filteredFlags":I
    :cond_4
    const-string/jumbo v6, "group_analytics"

    goto :goto_1
.end method
