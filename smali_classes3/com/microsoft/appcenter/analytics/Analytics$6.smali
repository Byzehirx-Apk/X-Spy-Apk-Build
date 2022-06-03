.class Lcom/microsoft/appcenter/analytics/Analytics$6;
.super Ljava/lang/Object;
.source "Analytics.java"

# interfaces
.implements Lcom/microsoft/appcenter/channel/Channel$GroupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/analytics/Analytics;->getChannelListener()Lcom/microsoft/appcenter/channel/Channel$GroupListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/analytics/Analytics;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/analytics/Analytics;)V
    .locals 4

    .prologue
    .line 668
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics$6;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/analytics/Analytics$6;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeSending(Lcom/microsoft/appcenter/ingestion/models/Log;)V
    .locals 4

    .prologue
    .line 672
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics$6;
    move-object v1, p1

    .local v1, "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/analytics/Analytics$6;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    invoke-static {v2}, Lcom/microsoft/appcenter/analytics/Analytics;->access$500(Lcom/microsoft/appcenter/analytics/Analytics;)Lcom/microsoft/appcenter/analytics/channel/AnalyticsListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 673
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/analytics/Analytics$6;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    invoke-static {v2}, Lcom/microsoft/appcenter/analytics/Analytics;->access$500(Lcom/microsoft/appcenter/analytics/Analytics;)Lcom/microsoft/appcenter/analytics/channel/AnalyticsListener;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/microsoft/appcenter/analytics/channel/AnalyticsListener;->onBeforeSending(Lcom/microsoft/appcenter/ingestion/models/Log;)V

    .line 675
    :cond_0
    return-void
.end method

.method public onFailure(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/Exception;)V
    .locals 6

    .prologue
    .line 686
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics$6;
    move-object v1, p1

    .local v1, "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    move-object v2, p2

    .local v2, "e":Ljava/lang/Exception;
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/Analytics$6;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    invoke-static {v3}, Lcom/microsoft/appcenter/analytics/Analytics;->access$500(Lcom/microsoft/appcenter/analytics/Analytics;)Lcom/microsoft/appcenter/analytics/channel/AnalyticsListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 687
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/Analytics$6;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    invoke-static {v3}, Lcom/microsoft/appcenter/analytics/Analytics;->access$500(Lcom/microsoft/appcenter/analytics/Analytics;)Lcom/microsoft/appcenter/analytics/channel/AnalyticsListener;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lcom/microsoft/appcenter/analytics/channel/AnalyticsListener;->onSendingFailed(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/Exception;)V

    .line 689
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/microsoft/appcenter/ingestion/models/Log;)V
    .locals 4

    .prologue
    .line 679
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics$6;
    move-object v1, p1

    .local v1, "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/analytics/Analytics$6;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    invoke-static {v2}, Lcom/microsoft/appcenter/analytics/Analytics;->access$500(Lcom/microsoft/appcenter/analytics/Analytics;)Lcom/microsoft/appcenter/analytics/channel/AnalyticsListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 680
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/analytics/Analytics$6;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    invoke-static {v2}, Lcom/microsoft/appcenter/analytics/Analytics;->access$500(Lcom/microsoft/appcenter/analytics/Analytics;)Lcom/microsoft/appcenter/analytics/channel/AnalyticsListener;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/microsoft/appcenter/analytics/channel/AnalyticsListener;->onSendingSucceeded(Lcom/microsoft/appcenter/ingestion/models/Log;)V

    .line 682
    :cond_0
    return-void
.end method
