.class Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$2;
.super Ljava/lang/Object;
.source "AnalyticsTransmissionTarget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->getTransmissionTarget(Ljava/lang/String;)Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

.field final synthetic val$finalChildTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;)V
    .locals 5

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$2;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$2;->this$0:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$2;->val$finalChildTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$2;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$2;->val$finalChildTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$2;->this$0:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    iget-object v2, v2, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->mContext:Landroid/content/Context;

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$2;->this$0:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    invoke-static {v3}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->access$100(Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;)Lcom/microsoft/appcenter/channel/Channel;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->initInBackground(Landroid/content/Context;Lcom/microsoft/appcenter/channel/Channel;)V

    .line 296
    return-void
.end method
