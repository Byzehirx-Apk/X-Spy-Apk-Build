.class Lcom/microsoft/appcenter/analytics/Analytics$5;
.super Ljava/lang/Object;
.source "Analytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/analytics/Analytics;->onActivityPaused(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/analytics/Analytics;

.field final synthetic val$updateCurrentActivityRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/analytics/Analytics;Ljava/lang/Runnable;)V
    .locals 5

    .prologue
    .line 654
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics$5;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/microsoft/appcenter/analytics/Analytics$5;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/microsoft/appcenter/analytics/Analytics$5;->val$updateCurrentActivityRunnable:Ljava/lang/Runnable;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 658
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics$5;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/Analytics$5;->val$updateCurrentActivityRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 659
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/Analytics$5;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    invoke-static {v1}, Lcom/microsoft/appcenter/analytics/Analytics;->access$400(Lcom/microsoft/appcenter/analytics/Analytics;)Lcom/microsoft/appcenter/analytics/channel/SessionTracker;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 660
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/Analytics$5;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    invoke-static {v1}, Lcom/microsoft/appcenter/analytics/Analytics;->access$400(Lcom/microsoft/appcenter/analytics/Analytics;)Lcom/microsoft/appcenter/analytics/channel/SessionTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/appcenter/analytics/channel/SessionTracker;->onActivityPaused()V

    .line 662
    :cond_0
    return-void
.end method
