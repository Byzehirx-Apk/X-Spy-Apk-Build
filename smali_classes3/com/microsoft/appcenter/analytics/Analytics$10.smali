.class Lcom/microsoft/appcenter/analytics/Analytics$10;
.super Ljava/lang/Object;
.source "Analytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/analytics/Analytics;->resumeInstanceAsync()V
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
    .line 878
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics$10;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/analytics/Analytics$10;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 882
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics$10;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/Analytics$10;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    invoke-static {v1}, Lcom/microsoft/appcenter/analytics/Analytics;->access$1100(Lcom/microsoft/appcenter/analytics/Analytics;)Lcom/microsoft/appcenter/channel/Channel;

    move-result-object v1

    const-string/jumbo v2, "group_analytics"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/microsoft/appcenter/channel/Channel;->resumeGroup(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/Analytics$10;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    invoke-static {v1}, Lcom/microsoft/appcenter/analytics/Analytics;->access$1200(Lcom/microsoft/appcenter/analytics/Analytics;)Lcom/microsoft/appcenter/channel/Channel;

    move-result-object v1

    const-string/jumbo v2, "group_analytics_critical"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/microsoft/appcenter/channel/Channel;->resumeGroup(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    return-void
.end method
