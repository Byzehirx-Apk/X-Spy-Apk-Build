.class Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$5;
.super Ljava/lang/Object;
.source "AnalyticsTransmissionTarget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->pause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;)V
    .locals 4

    .prologue
    .line 369
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$5;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$5;->this$0:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 373
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$5;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$5;->this$0:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    invoke-static {v1}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->access$100(Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;)Lcom/microsoft/appcenter/channel/Channel;

    move-result-object v1

    const-string/jumbo v2, "group_analytics"

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$5;->this$0:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    invoke-static {v3}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->access$500(Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/microsoft/appcenter/channel/Channel;->pauseGroup(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$5;->this$0:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    invoke-static {v1}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->access$100(Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;)Lcom/microsoft/appcenter/channel/Channel;

    move-result-object v1

    const-string/jumbo v2, "group_analytics_critical"

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$5;->this$0:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    invoke-static {v3}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->access$500(Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/microsoft/appcenter/channel/Channel;->pauseGroup(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    return-void
.end method
