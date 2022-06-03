.class Lcom/microsoft/appcenter/analytics/Analytics$1;
.super Ljava/lang/Object;
.source "Analytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/analytics/Analytics;->createAnalyticsTransmissionTarget(Ljava/lang/String;)Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/analytics/Analytics;

.field final synthetic val$transmissionTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/analytics/Analytics;Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;)V
    .locals 5

    .prologue
    .line 570
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/microsoft/appcenter/analytics/Analytics$1;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/microsoft/appcenter/analytics/Analytics$1;->val$transmissionTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 574
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/Analytics$1;->val$transmissionTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/analytics/Analytics$1;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    invoke-static {v2}, Lcom/microsoft/appcenter/analytics/Analytics;->access$000(Lcom/microsoft/appcenter/analytics/Analytics;)Landroid/content/Context;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/Analytics$1;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    invoke-static {v3}, Lcom/microsoft/appcenter/analytics/Analytics;->access$100(Lcom/microsoft/appcenter/analytics/Analytics;)Lcom/microsoft/appcenter/channel/Channel;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->initInBackground(Landroid/content/Context;Lcom/microsoft/appcenter/channel/Channel;)V

    .line 575
    return-void
.end method
