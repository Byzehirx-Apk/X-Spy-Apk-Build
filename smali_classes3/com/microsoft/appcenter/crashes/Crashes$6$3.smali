.class Lcom/microsoft/appcenter/crashes/Crashes$6$3;
.super Ljava/lang/Object;
.source "Crashes.java"

# interfaces
.implements Lcom/microsoft/appcenter/crashes/Crashes$CallbackProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/crashes/Crashes$6;->onSuccess(Lcom/microsoft/appcenter/ingestion/models/Log;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/microsoft/appcenter/crashes/Crashes$6;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/crashes/Crashes$6;)V
    .locals 4

    .prologue
    .line 560
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes$6$3;
    move-object v1, p1

    .local v1, "this$1":Lcom/microsoft/appcenter/crashes/Crashes$6;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/Crashes$6$3;->this$1:Lcom/microsoft/appcenter/crashes/Crashes$6;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Lcom/microsoft/appcenter/crashes/model/ErrorReport;)V
    .locals 4

    .prologue
    .line 569
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes$6$3;
    move-object v1, p1

    .local v1, "report":Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/crashes/Crashes$6$3;->this$1:Lcom/microsoft/appcenter/crashes/Crashes$6;

    iget-object v2, v2, Lcom/microsoft/appcenter/crashes/Crashes$6;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    invoke-static {v2}, Lcom/microsoft/appcenter/crashes/Crashes;->access$700(Lcom/microsoft/appcenter/crashes/Crashes;)Lcom/microsoft/appcenter/crashes/CrashesListener;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/microsoft/appcenter/crashes/CrashesListener;->onSendingSucceeded(Lcom/microsoft/appcenter/crashes/model/ErrorReport;)V

    .line 570
    return-void
.end method

.method public shouldDeleteThrowable()Z
    .locals 2

    .prologue
    .line 564
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes$6$3;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes$6$3;
    return v0
.end method
