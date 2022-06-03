.class Lcom/microsoft/appcenter/UncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "UncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final SHUTDOWN_TIMEOUT:I = 0x1388


# instance fields
.field private final mChannel:Lcom/microsoft/appcenter/channel/Channel;

.field private mDefaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/microsoft/appcenter/channel/Channel;)V
    .locals 5

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/UncaughtExceptionHandler;
    move-object v1, p1

    .local v1, "handler":Landroid/os/Handler;
    move-object v2, p2

    .local v2, "channel":Lcom/microsoft/appcenter/channel/Channel;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 50
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/microsoft/appcenter/UncaughtExceptionHandler;->mHandler:Landroid/os/Handler;

    .line 51
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/microsoft/appcenter/UncaughtExceptionHandler;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/appcenter/UncaughtExceptionHandler;)Lcom/microsoft/appcenter/channel/Channel;
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/UncaughtExceptionHandler;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/UncaughtExceptionHandler;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v0, v1

    .end local v0    # "x0":Lcom/microsoft/appcenter/UncaughtExceptionHandler;
    return-object v0
.end method


# virtual methods
.method getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/UncaughtExceptionHandler;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/UncaughtExceptionHandler;->mDefaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/UncaughtExceptionHandler;
    return-object v0
.end method

.method register()V
    .locals 3

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/UncaughtExceptionHandler;
    move-object v1, v0

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    iput-object v2, v1, Lcom/microsoft/appcenter/UncaughtExceptionHandler;->mDefaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 94
    move-object v1, v0

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 95
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 11

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/UncaughtExceptionHandler;
    move-object v1, p1

    .local v1, "thread":Ljava/lang/Thread;
    move-object v2, p2

    .local v2, "exception":Ljava/lang/Throwable;
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/appcenter/AppCenter;->isInstanceEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 59
    new-instance v5, Ljava/util/concurrent/Semaphore;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    move-object v3, v5

    .line 60
    .local v3, "semaphore":Ljava/util/concurrent/Semaphore;
    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/UncaughtExceptionHandler;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/microsoft/appcenter/UncaughtExceptionHandler$1;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    move-object v9, v3

    invoke-direct {v7, v8, v9}, Lcom/microsoft/appcenter/UncaughtExceptionHandler$1;-><init>(Lcom/microsoft/appcenter/UncaughtExceptionHandler;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v5

    .line 70
    move-object v5, v3

    const-wide/16 v6, 0x1388

    :try_start_0
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 71
    const-string/jumbo v5, "AppCenter"

    const-string/jumbo v6, "Timeout waiting for looper tasks to complete."

    invoke-static {v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 77
    .end local v3    # "semaphore":Ljava/util/concurrent/Semaphore;
    :cond_0
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/UncaughtExceptionHandler;->mDefaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v5, :cond_1

    .line 78
    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/UncaughtExceptionHandler;->mDefaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    move-object v6, v1

    move-object v7, v2

    invoke-interface {v5, v6, v7}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 82
    :goto_1
    return-void

    .line 73
    .restart local v3    # "semaphore":Ljava/util/concurrent/Semaphore;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 74
    .local v4, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v5, "AppCenter"

    const-string/jumbo v6, "Interrupted while waiting looper to flush."

    move-object v7, v4

    invoke-static {v5, v6, v7}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 80
    .end local v3    # "semaphore":Ljava/util/concurrent/Semaphore;
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :cond_1
    const/16 v5, 0xa

    invoke-static {v5}, Lcom/microsoft/appcenter/utils/ShutdownHelper;->shutdown(I)V

    goto :goto_1
.end method

.method unregister()V
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/UncaughtExceptionHandler;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/UncaughtExceptionHandler;->mDefaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 102
    return-void
.end method
