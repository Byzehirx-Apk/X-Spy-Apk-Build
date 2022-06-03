.class Lcom/microsoft/appcenter/analytics/Analytics$4;
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


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/analytics/Analytics;)V
    .locals 4

    .prologue
    .line 647
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics$4;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/analytics/Analytics$4;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 651
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics$4;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/Analytics$4;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/analytics/Analytics;->access$202(Lcom/microsoft/appcenter/analytics/Analytics;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    .line 652
    return-void
.end method
