.class Lcom/microsoft/appcenter/crashes/Crashes$4;
.super Ljava/lang/Object;
.source "Crashes.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/crashes/Crashes;->getInstanceLastSessionCrashReport()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/crashes/Crashes;

.field final synthetic val$future:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/crashes/Crashes;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)V
    .locals 5

    .prologue
    .line 404
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes$4;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/microsoft/appcenter/crashes/Crashes$4;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/microsoft/appcenter/crashes/Crashes$4;->val$future:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 408
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes$4;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/Crashes$4;->val$future:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/crashes/Crashes$4;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    invoke-static {v2}, Lcom/microsoft/appcenter/crashes/Crashes;->access$200(Lcom/microsoft/appcenter/crashes/Crashes;)Lcom/microsoft/appcenter/crashes/model/ErrorReport;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->complete(Ljava/lang/Object;)V

    .line 409
    return-void
.end method
