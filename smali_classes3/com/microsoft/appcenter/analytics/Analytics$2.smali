.class Lcom/microsoft/appcenter/analytics/Analytics$2;
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


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/analytics/Analytics;Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 607
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics$2;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/microsoft/appcenter/analytics/Analytics$2;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/microsoft/appcenter/analytics/Analytics$2;->val$activity:Landroid/app/Activity;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 611
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics$2;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/Analytics$2;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    new-instance v2, Ljava/lang/ref/WeakReference;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/analytics/Analytics$2;->val$activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/analytics/Analytics;->access$202(Lcom/microsoft/appcenter/analytics/Analytics;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    .line 612
    return-void
.end method
