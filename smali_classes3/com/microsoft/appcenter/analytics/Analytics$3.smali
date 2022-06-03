.class Lcom/microsoft/appcenter/analytics/Analytics$3;
.super Ljava/lang/Object;
.source "Analytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/analytics/Analytics;->onActivityResumed(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/analytics/Analytics;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$updateCurrentActivityRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/analytics/Analytics;Ljava/lang/Runnable;Landroid/app/Activity;)V
    .locals 6

    .prologue
    .line 614
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics$3;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/microsoft/appcenter/analytics/Analytics$3;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/microsoft/appcenter/analytics/Analytics$3;->val$updateCurrentActivityRunnable:Ljava/lang/Runnable;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/microsoft/appcenter/analytics/Analytics$3;->val$activity:Landroid/app/Activity;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 618
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics$3;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/Analytics$3;->val$updateCurrentActivityRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 619
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/Analytics$3;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/analytics/Analytics$3;->val$activity:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/analytics/Analytics;->access$300(Lcom/microsoft/appcenter/analytics/Analytics;Landroid/app/Activity;)V

    .line 620
    return-void
.end method
