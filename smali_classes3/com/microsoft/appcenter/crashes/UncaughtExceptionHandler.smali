.class Lcom/microsoft/appcenter/crashes/UncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "UncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private mDefaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mIgnoreDefaultExceptionHandler:Z


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/UncaughtExceptionHandler;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 14
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/microsoft/appcenter/crashes/UncaughtExceptionHandler;->mIgnoreDefaultExceptionHandler:Z

    return-void
.end method


# virtual methods
.method getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/UncaughtExceptionHandler;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/UncaughtExceptionHandler;->mDefaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/UncaughtExceptionHandler;
    return-object v0
.end method

.method register()V
    .locals 3

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/UncaughtExceptionHandler;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/microsoft/appcenter/crashes/UncaughtExceptionHandler;->mIgnoreDefaultExceptionHandler:Z

    if-nez v1, :cond_0

    .line 43
    move-object v1, v0

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    iput-object v2, v1, Lcom/microsoft/appcenter/crashes/UncaughtExceptionHandler;->mDefaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 47
    :goto_0
    move-object v1, v0

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 48
    return-void

    .line 45
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/microsoft/appcenter/crashes/UncaughtExceptionHandler;->mDefaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    goto :goto_0
.end method

.method setIgnoreDefaultExceptionHandler(Z)V
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/UncaughtExceptionHandler;
    move v1, p1

    .local v1, "ignoreDefaultExceptionHandler":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/microsoft/appcenter/crashes/UncaughtExceptionHandler;->mIgnoreDefaultExceptionHandler:Z

    .line 31
    move v2, v1

    if-eqz v2, :cond_0

    .line 32
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/UncaughtExceptionHandler;->mDefaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 34
    :cond_0
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/UncaughtExceptionHandler;
    move-object v1, p1

    .local v1, "thread":Ljava/lang/Thread;
    move-object v2, p2

    .local v2, "exception":Ljava/lang/Throwable;
    invoke-static {}, Lcom/microsoft/appcenter/crashes/Crashes;->getInstance()Lcom/microsoft/appcenter/crashes/Crashes;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/microsoft/appcenter/crashes/Crashes;->saveUncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 21
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/UncaughtExceptionHandler;->mDefaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v3, :cond_0

    .line 22
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/UncaughtExceptionHandler;->mDefaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 26
    :goto_0
    return-void

    .line 24
    :cond_0
    const/16 v3, 0xa

    invoke-static {v3}, Lcom/microsoft/appcenter/utils/ShutdownHelper;->shutdown(I)V

    goto :goto_0
.end method

.method unregister()V
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/UncaughtExceptionHandler;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/UncaughtExceptionHandler;->mDefaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 52
    return-void
.end method
