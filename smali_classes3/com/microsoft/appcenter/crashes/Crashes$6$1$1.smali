.class Lcom/microsoft/appcenter/crashes/Crashes$6$1$1;
.super Ljava/lang/Object;
.source "Crashes.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/crashes/Crashes$6$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/microsoft/appcenter/crashes/Crashes$6$1;

.field final synthetic val$report:Lcom/microsoft/appcenter/crashes/model/ErrorReport;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/crashes/Crashes$6$1;Lcom/microsoft/appcenter/crashes/model/ErrorReport;)V
    .locals 5

    .prologue
    .line 525
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes$6$1$1;
    move-object v1, p1

    .local v1, "this$2":Lcom/microsoft/appcenter/crashes/Crashes$6$1;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/microsoft/appcenter/crashes/Crashes$6$1$1;->this$2:Lcom/microsoft/appcenter/crashes/Crashes$6$1;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/microsoft/appcenter/crashes/Crashes$6$1$1;->val$report:Lcom/microsoft/appcenter/crashes/model/ErrorReport;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 529
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes$6$1$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/Crashes$6$1$1;->this$2:Lcom/microsoft/appcenter/crashes/Crashes$6$1;

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/Crashes$6$1;->val$callbackProcessor:Lcom/microsoft/appcenter/crashes/Crashes$CallbackProcessor;

    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/crashes/Crashes$6$1$1;->val$report:Lcom/microsoft/appcenter/crashes/model/ErrorReport;

    invoke-interface {v1, v2}, Lcom/microsoft/appcenter/crashes/Crashes$CallbackProcessor;->onCallBack(Lcom/microsoft/appcenter/crashes/model/ErrorReport;)V

    .line 530
    return-void
.end method
