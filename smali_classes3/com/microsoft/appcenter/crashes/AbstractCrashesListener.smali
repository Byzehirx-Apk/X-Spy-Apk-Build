.class public abstract Lcom/microsoft/appcenter/crashes/AbstractCrashesListener;
.super Ljava/lang/Object;
.source "AbstractCrashesListener.java"

# interfaces
.implements Lcom/microsoft/appcenter/crashes/CrashesListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/AbstractCrashesListener;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorAttachments(Lcom/microsoft/appcenter/crashes/model/ErrorReport;)Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/appcenter/crashes/model/ErrorReport;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/AbstractCrashesListener;
    move-object v1, p1

    .local v1, "report":Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/AbstractCrashesListener;
    return-object v0
.end method

.method public onBeforeSending(Lcom/microsoft/appcenter/crashes/model/ErrorReport;)V
    .locals 0
    .param p1, "report"    # Lcom/microsoft/appcenter/crashes/model/ErrorReport;

    .prologue
    .line 34
    return-void
.end method

.method public onSendingFailed(Lcom/microsoft/appcenter/crashes/model/ErrorReport;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "report"    # Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 39
    return-void
.end method

.method public onSendingSucceeded(Lcom/microsoft/appcenter/crashes/model/ErrorReport;)V
    .locals 0
    .param p1, "report"    # Lcom/microsoft/appcenter/crashes/model/ErrorReport;

    .prologue
    .line 44
    return-void
.end method

.method public shouldAwaitUserConfirmation()Z
    .locals 2

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/AbstractCrashesListener;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/AbstractCrashesListener;
    return v0
.end method

.method public shouldProcess(Lcom/microsoft/appcenter/crashes/model/ErrorReport;)Z
    .locals 3

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/AbstractCrashesListener;
    move-object v1, p1

    .local v1, "report":Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/AbstractCrashesListener;
    return v0
.end method
