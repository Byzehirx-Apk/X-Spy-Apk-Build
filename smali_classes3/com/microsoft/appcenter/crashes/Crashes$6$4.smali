.class Lcom/microsoft/appcenter/crashes/Crashes$6$4;
.super Ljava/lang/Object;
.source "Crashes.java"

# interfaces
.implements Lcom/microsoft/appcenter/crashes/Crashes$CallbackProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/crashes/Crashes$6;->onFailure(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/microsoft/appcenter/crashes/Crashes$6;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/crashes/Crashes$6;Ljava/lang/Exception;)V
    .locals 5

    .prologue
    .line 576
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes$6$4;
    move-object v1, p1

    .local v1, "this$1":Lcom/microsoft/appcenter/crashes/Crashes$6;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/microsoft/appcenter/crashes/Crashes$6$4;->this$1:Lcom/microsoft/appcenter/crashes/Crashes$6;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/microsoft/appcenter/crashes/Crashes$6$4;->val$e:Ljava/lang/Exception;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Lcom/microsoft/appcenter/crashes/model/ErrorReport;)V
    .locals 5

    .prologue
    .line 585
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes$6$4;
    move-object v1, p1

    .local v1, "report":Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/crashes/Crashes$6$4;->this$1:Lcom/microsoft/appcenter/crashes/Crashes$6;

    iget-object v2, v2, Lcom/microsoft/appcenter/crashes/Crashes$6;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    invoke-static {v2}, Lcom/microsoft/appcenter/crashes/Crashes;->access$700(Lcom/microsoft/appcenter/crashes/Crashes;)Lcom/microsoft/appcenter/crashes/CrashesListener;

    move-result-object v2

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/Crashes$6$4;->val$e:Ljava/lang/Exception;

    invoke-interface {v2, v3, v4}, Lcom/microsoft/appcenter/crashes/CrashesListener;->onSendingFailed(Lcom/microsoft/appcenter/crashes/model/ErrorReport;Ljava/lang/Exception;)V

    .line 586
    return-void
.end method

.method public shouldDeleteThrowable()Z
    .locals 2

    .prologue
    .line 580
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes$6$4;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes$6$4;
    return v0
.end method
