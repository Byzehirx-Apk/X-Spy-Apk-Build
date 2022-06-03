.class Lcom/microsoft/appcenter/analytics/Analytics$7;
.super Ljava/lang/Object;
.source "Analytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/analytics/Analytics;->trackPageAsync(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/analytics/Analytics;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$propertiesCopy:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/analytics/Analytics;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6

    .prologue
    .line 771
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics$7;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/microsoft/appcenter/analytics/Analytics$7;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/microsoft/appcenter/analytics/Analytics$7;->val$name:Ljava/lang/String;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/microsoft/appcenter/analytics/Analytics$7;->val$propertiesCopy:Ljava/util/Map;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 777
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics$7;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/Analytics$7;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    invoke-static {v1}, Lcom/microsoft/appcenter/analytics/Analytics;->access$600(Lcom/microsoft/appcenter/analytics/Analytics;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 778
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/Analytics$7;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/analytics/Analytics$7;->val$name:Ljava/lang/String;

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/Analytics$7;->val$propertiesCopy:Ljava/util/Map;

    invoke-static {v1, v2, v3}, Lcom/microsoft/appcenter/analytics/Analytics;->access$700(Lcom/microsoft/appcenter/analytics/Analytics;Ljava/lang/String;Ljava/util/Map;)V

    .line 782
    :goto_0
    return-void

    .line 780
    :cond_0
    const-string/jumbo v1, "AppCenterAnalytics"

    const-string/jumbo v2, "Cannot track page if not started from app."

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
