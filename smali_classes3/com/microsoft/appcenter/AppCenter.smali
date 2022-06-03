.class public Lcom/microsoft/appcenter/AppCenter;
.super Ljava/lang/Object;
.source "AppCenter.java"


# static fields
.field static final APP_SECRET_KEY:Ljava/lang/String; = "appsecret"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final CORE_GROUP:Ljava/lang/String; = "group_core"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final DEFAULT_MAX_STORAGE_SIZE_IN_BYTES:J = 0xa00000L
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_VALUE_DELIMITER:Ljava/lang/String; = "="
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final LOG_TAG:Ljava/lang/String; = "AppCenter"

.field static final MINIMUM_STORAGE_SIZE:J = 0x6000L
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final PAIR_DELIMITER:Ljava/lang/String; = ";"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final RUNNING_IN_APP_CENTER:Ljava/lang/String; = "RUNNING_IN_APP_CENTER"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final TRANSMISSION_TARGET_TOKEN_KEY:Ljava/lang/String; = "target"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final TRUE_ENVIRONMENT_STRING:Ljava/lang/String; = "1"

.field private static sInstance:Lcom/microsoft/appcenter/AppCenter;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private mAppCenterHandler:Lcom/microsoft/appcenter/AppCenterHandler;

.field private mAppSecret:Ljava/lang/String;

.field private mApplication:Landroid/app/Application;

.field private mApplicationLifecycleListener:Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;

.field private mChannel:Lcom/microsoft/appcenter/channel/Channel;

.field private mConfiguredFromApp:Z

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLogLevelConfigured:Z

.field private mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

.field private mLogUrl:Ljava/lang/String;

.field private mMaxStorageSizeInBytes:J

.field private mOneCollectorChannelListener:Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;

.field private mServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;"
        }
    .end annotation
.end field

.field private mServicesStartedFromLibrary:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;"
        }
    .end annotation
.end field

.field private mSetMaxStorageSizeFuture:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mStartedServicesNamesToLog:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTransmissionTargetToken:Ljava/lang/String;

.field private mUncaughtExceptionHandler:Lcom/microsoft/appcenter/UncaughtExceptionHandler;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 173
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/microsoft/appcenter/AppCenter;->mStartedServicesNamesToLog:Ljava/util/List;

    .line 213
    move-object v1, v0

    const-wide/32 v2, 0xa00000

    iput-wide v2, v1, Lcom/microsoft/appcenter/AppCenter;->mMaxStorageSizeInBytes:J

    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/appcenter/AppCenter;)Lcom/microsoft/appcenter/channel/Channel;
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v0, v1

    .end local v0    # "x0":Lcom/microsoft/appcenter/AppCenter;
    return-object v0
.end method

.method static synthetic access$100(Lcom/microsoft/appcenter/AppCenter;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "x0":Lcom/microsoft/appcenter/AppCenter;
    return-object v0
.end method

.method static synthetic access$200(Lcom/microsoft/appcenter/AppCenter;)Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/AppCenter;->mOneCollectorChannelListener:Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;

    move-object v0, v1

    .end local v0    # "x0":Lcom/microsoft/appcenter/AppCenter;
    return-object v0
.end method

.method static synthetic access$300(Lcom/microsoft/appcenter/AppCenter;Ljava/util/Map;)V
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, p1

    .local v1, "x1":Ljava/util/Map;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/microsoft/appcenter/AppCenter;->queueCustomProperties(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$400(Lcom/microsoft/appcenter/AppCenter;)V
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/microsoft/appcenter/AppCenter;->applyStorageMaxSize()V

    return-void
.end method

.method static synthetic access$500(Lcom/microsoft/appcenter/AppCenter;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 6

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/Runnable;
    move-object v2, p2

    .local v2, "x2":Ljava/lang/Runnable;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/microsoft/appcenter/AppCenter;->handlerAppCenterOperation(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$600(Lcom/microsoft/appcenter/AppCenter;Z)V
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/AppCenter;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/microsoft/appcenter/AppCenter;->finishConfiguration(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/microsoft/appcenter/AppCenter;Ljava/lang/Iterable;Ljava/lang/Iterable;Z)V
    .locals 8

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/Iterable;
    move-object v2, p2

    .local v2, "x2":Ljava/lang/Iterable;
    move v3, p3

    .local v3, "x3":Z
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/microsoft/appcenter/AppCenter;->finishStartServices(Ljava/lang/Iterable;Ljava/lang/Iterable;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/microsoft/appcenter/AppCenter;Z)V
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/AppCenter;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/microsoft/appcenter/AppCenter;->setInstanceEnabled(Z)V

    return-void
.end method

.method private applyStorageMaxSize()V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 845
    move-object v1, p0

    .local v1, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v3, v1

    iget-object v3, v3, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v4, v1

    iget-wide v4, v4, Lcom/microsoft/appcenter/AppCenter;->mMaxStorageSizeInBytes:J

    invoke-interface {v3, v4, v5}, Lcom/microsoft/appcenter/channel/Channel;->setMaxStorageSize(J)Z

    move-result v3

    move v2, v3

    .line 846
    .local v2, "resizeResult":Z
    move-object v3, v1

    iget-object v3, v3, Lcom/microsoft/appcenter/AppCenter;->mSetMaxStorageSizeFuture:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    if-eqz v3, :cond_0

    .line 847
    move-object v3, v1

    iget-object v3, v3, Lcom/microsoft/appcenter/AppCenter;->mSetMaxStorageSizeFuture:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    move v4, v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->complete(Ljava/lang/Object;)V

    .line 849
    :cond_0
    return-void
.end method

.method private declared-synchronized checkPrecondition()Z
    .locals 4

    .prologue
    .line 487
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    :try_start_0
    invoke-direct {v1}, Lcom/microsoft/appcenter/AppCenter;->isInstanceConfigured()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    const/4 v1, 0x1

    move v0, v1

    .line 491
    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    :goto_0
    monitor-exit v3

    return v0

    .line 490
    .restart local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    :cond_0
    :try_start_1
    const-string/jumbo v1, "AppCenter"

    const-string/jumbo v2, "App Center hasn\'t been configured. You need to call AppCenter.start with appSecret or AppCenter.configure first."

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 487
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    throw v0
.end method

.method public static configure(Landroid/app/Application;)V
    .locals 5

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "application":Landroid/app/Application;
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v1

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/microsoft/appcenter/AppCenter;->configureInstance(Landroid/app/Application;Ljava/lang/String;Z)Z

    move-result v1

    .line 351
    return-void
.end method

.method public static configure(Landroid/app/Application;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "application":Landroid/app/Application;
    move-object v1, p1

    .local v1, "appSecret":Ljava/lang/String;
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lcom/microsoft/appcenter/AppCenter;->configureInstanceWithRequiredAppSecret(Landroid/app/Application;Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method private configureAndStartServices(Landroid/app/Application;Ljava/lang/String;Z[Ljava/lang/Class;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/Class",
            "<+",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1016
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, p1

    .local v1, "application":Landroid/app/Application;
    move-object v2, p2

    .local v2, "appSecret":Ljava/lang/String;
    move v3, p3

    .local v3, "startFromApp":Z
    move-object v4, p4

    .local v4, "services":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lcom/microsoft/appcenter/AppCenterService;>;"
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    invoke-direct {v6, v7, v8, v9}, Lcom/microsoft/appcenter/AppCenter;->configureInstance(Landroid/app/Application;Ljava/lang/String;Z)Z

    move-result v6

    move v5, v6

    .line 1017
    .local v5, "configuredSuccessfully":Z
    move v6, v5

    if-eqz v6, :cond_0

    .line 1018
    move-object v6, v0

    move v7, v3

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Lcom/microsoft/appcenter/AppCenter;->startServices(Z[Ljava/lang/Class;)V

    .line 1020
    :cond_0
    return-void
.end method

.method private declared-synchronized configureAndStartServices(Landroid/app/Application;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<+",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1003
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, p1

    .local v1, "application":Landroid/app/Application;
    move-object v2, p2

    .local v2, "appSecret":Ljava/lang/String;
    move-object v3, p3

    .local v3, "services":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lcom/microsoft/appcenter/AppCenterService;>;"
    move-object v9, p0

    monitor-enter v9

    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v2

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1004
    :cond_0
    const-string/jumbo v4, "AppCenter"

    const-string/jumbo v5, "appSecret may not be null or empty."

    invoke-static {v4, v5}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1008
    :goto_0
    monitor-exit v9

    return-void

    .line 1006
    :cond_1
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x1

    move-object v8, v3

    :try_start_1
    invoke-direct {v4, v5, v6, v7, v8}, Lcom/microsoft/appcenter/AppCenter;->configureAndStartServices(Landroid/app/Application;Ljava/lang/String;Z[Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1003
    :catchall_0
    move-exception v0

    monitor-exit v9

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    throw v0
.end method

.method private declared-synchronized configureInstance(Landroid/app/Application;Ljava/lang/String;Z)Z
    .locals 12

    .prologue
    .line 636
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, p1

    .local v1, "application":Landroid/app/Application;
    move-object v2, p2

    .local v2, "secretString":Ljava/lang/String;
    move v3, p3

    .local v3, "configureFromApp":Z
    move-object v10, p0

    monitor-enter v10

    move-object v5, v1

    if-nez v5, :cond_0

    .line 637
    :try_start_0
    const-string/jumbo v5, "AppCenter"

    const-string/jumbo v6, "Application context may not be null."

    invoke-static {v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 638
    const/4 v5, 0x0

    move v0, v5

    .line 697
    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    :goto_0
    monitor-exit v10

    return v0

    .line 642
    .restart local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    :cond_0
    move-object v5, v0

    :try_start_1
    iget-boolean v5, v5, Lcom/microsoft/appcenter/AppCenter;->mLogLevelConfigured:Z

    if-nez v5, :cond_1

    move-object v5, v1

    invoke-virtual {v5}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v6, 0x2

    and-int/lit8 v5, v5, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 643
    const/4 v5, 0x5

    invoke-static {v5}, Lcom/microsoft/appcenter/utils/AppCenterLog;->setLogLevel(I)V

    .line 647
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    move-object v4, v5

    .line 648
    .local v4, "previousAppSecret":Ljava/lang/String;
    move v5, v3

    if-eqz v5, :cond_2

    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/microsoft/appcenter/AppCenter;->configureSecretString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 649
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 653
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_4

    .line 656
    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 657
    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/microsoft/appcenter/AppCenter$4;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/microsoft/appcenter/AppCenter$4;-><init>(Lcom/microsoft/appcenter/AppCenter;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v5

    .line 666
    :cond_3
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 670
    :cond_4
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;

    .line 673
    move-object v5, v0

    new-instance v6, Landroid/os/HandlerThread;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string/jumbo v8, "AppCenter.Looper"

    invoke-direct {v7, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v6, v5, Lcom/microsoft/appcenter/AppCenter;->mHandlerThread:Landroid/os/HandlerThread;

    .line 674
    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 675
    move-object v5, v0

    new-instance v6, Landroid/os/Handler;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    iget-object v8, v8, Lcom/microsoft/appcenter/AppCenter;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v6, v5, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    .line 676
    move-object v5, v0

    new-instance v6, Lcom/microsoft/appcenter/AppCenter$5;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/microsoft/appcenter/AppCenter$5;-><init>(Lcom/microsoft/appcenter/AppCenter;)V

    iput-object v6, v5, Lcom/microsoft/appcenter/AppCenter;->mAppCenterHandler:Lcom/microsoft/appcenter/AppCenterHandler;

    .line 683
    move-object v5, v0

    new-instance v6, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    iget-object v8, v8, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    invoke-direct {v7, v8}, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;-><init>(Landroid/os/Handler;)V

    iput-object v6, v5, Lcom/microsoft/appcenter/AppCenter;->mApplicationLifecycleListener:Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;

    .line 684
    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;

    move-object v6, v0

    iget-object v6, v6, Lcom/microsoft/appcenter/AppCenter;->mApplicationLifecycleListener:Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;

    invoke-virtual {v5, v6}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 687
    move-object v5, v0

    new-instance v6, Ljava/util/HashSet;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v6, v5, Lcom/microsoft/appcenter/AppCenter;->mServices:Ljava/util/Set;

    .line 688
    move-object v5, v0

    new-instance v6, Ljava/util/HashSet;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v6, v5, Lcom/microsoft/appcenter/AppCenter;->mServicesStartedFromLibrary:Ljava/util/Set;

    .line 689
    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/microsoft/appcenter/AppCenter$6;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move v9, v3

    invoke-direct {v7, v8, v9}, Lcom/microsoft/appcenter/AppCenter$6;-><init>(Lcom/microsoft/appcenter/AppCenter;Z)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v5

    .line 696
    const-string/jumbo v5, "AppCenter"

    const-string/jumbo v6, "App Center SDK configured successfully."

    invoke-static {v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 697
    const/4 v5, 0x1

    move v0, v5

    goto/16 :goto_0

    .line 636
    .end local v4    # "previousAppSecret":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v10

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    throw v0
.end method

.method private configureInstanceWithRequiredAppSecret(Landroid/app/Application;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 617
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, p1

    .local v1, "application":Landroid/app/Application;
    move-object v2, p2

    .local v2, "appSecret":Ljava/lang/String;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 618
    :cond_0
    const-string/jumbo v3, "AppCenter"

    const-string/jumbo v4, "appSecret may not be null or empty."

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    :goto_0
    return-void

    .line 620
    :cond_1
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/microsoft/appcenter/AppCenter;->configureInstance(Landroid/app/Application;Ljava/lang/String;Z)Z

    move-result v3

    goto :goto_0
.end method

.method private configureSecretString(Ljava/lang/String;)Z
    .locals 13

    .prologue
    .line 711
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, p1

    .local v1, "secretString":Ljava/lang/String;
    move-object v10, v0

    iget-boolean v10, v10, Lcom/microsoft/appcenter/AppCenter;->mConfiguredFromApp:Z

    if-eqz v10, :cond_0

    .line 712
    const-string/jumbo v10, "AppCenter"

    const-string/jumbo v11, "App Center may only be configured once."

    invoke-static {v10, v11}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const/4 v10, 0x0

    move v0, v10

    .line 747
    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    :goto_0
    return v0

    .line 715
    .restart local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    :cond_0
    move-object v10, v0

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/microsoft/appcenter/AppCenter;->mConfiguredFromApp:Z

    .line 718
    move-object v10, v1

    if-eqz v10, :cond_4

    .line 721
    move-object v10, v1

    const-string/jumbo v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    move-object v2, v10

    .line 724
    .local v2, "pairs":[Ljava/lang/String;
    move-object v10, v2

    move-object v3, v10

    move-object v10, v3

    array-length v10, v10

    move v4, v10

    const/4 v10, 0x0

    move v5, v10

    :goto_1
    move v10, v5

    move v11, v4

    if-ge v10, v11, :cond_4

    move-object v10, v3

    move v11, v5

    aget-object v10, v10, v11

    move-object v6, v10

    .line 727
    .local v6, "pair":Ljava/lang/String;
    move-object v10, v6

    const-string/jumbo v11, "="

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 728
    .local v7, "keyValue":[Ljava/lang/String;
    move-object v10, v7

    const/4 v11, 0x0

    aget-object v10, v10, v11

    move-object v8, v10

    .line 731
    .local v8, "key":Ljava/lang/String;
    move-object v10, v7

    array-length v10, v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 732
    move-object v10, v8

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 733
    move-object v10, v0

    move-object v11, v8

    iput-object v11, v10, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    .line 724
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 735
    :cond_2
    move-object v10, v7

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 736
    move-object v10, v7

    const/4 v11, 0x1

    aget-object v10, v10, v11

    move-object v9, v10

    .line 739
    .local v9, "value":Ljava/lang/String;
    const-string/jumbo v10, "appsecret"

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 740
    move-object v10, v0

    move-object v11, v9

    iput-object v11, v10, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    goto :goto_2

    .line 741
    :cond_3
    const-string/jumbo v10, "target"

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 742
    move-object v10, v0

    move-object v11, v9

    iput-object v11, v10, Lcom/microsoft/appcenter/AppCenter;->mTransmissionTargetToken:Ljava/lang/String;

    goto :goto_2

    .line 747
    .end local v2    # "pairs":[Ljava/lang/String;
    .end local v6    # "pair":Ljava/lang/String;
    .end local v7    # "keyValue":[Ljava/lang/String;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_4
    const/4 v10, 0x1

    move v0, v10

    goto :goto_0
.end method

.method private finishConfiguration(Z)V
    .locals 14
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 784
    move-object v1, p0

    .local v1, "this":Lcom/microsoft/appcenter/AppCenter;
    move v2, p1

    .local v2, "configureFromApp":Z
    move-object v5, v1

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;

    invoke-static {v5}, Lcom/microsoft/appcenter/Constants;->loadFromContext(Landroid/content/Context;)V

    .line 787
    move-object v5, v1

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;

    invoke-static {v5}, Lcom/microsoft/appcenter/utils/storage/FileManager;->initialize(Landroid/content/Context;)V

    .line 788
    move-object v5, v1

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;

    invoke-static {v5}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->initialize(Landroid/content/Context;)V

    .line 791
    invoke-static {}, Lcom/microsoft/appcenter/utils/context/SessionContext;->getInstance()Lcom/microsoft/appcenter/utils/context/SessionContext;

    move-result-object v5

    .line 794
    move-object v5, v1

    invoke-virtual {v5}, Lcom/microsoft/appcenter/AppCenter;->isInstanceEnabled()Z

    move-result v5

    move v3, v5

    .line 797
    .local v3, "enabled":Z
    invoke-static {}, Lcom/microsoft/appcenter/DependencyConfiguration;->getHttpClient()Lcom/microsoft/appcenter/http/HttpClient;

    move-result-object v5

    move-object v4, v5

    .line 798
    .local v4, "httpClient":Lcom/microsoft/appcenter/http/HttpClient;
    move-object v5, v4

    if-nez v5, :cond_0

    .line 799
    move-object v5, v1

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;

    invoke-static {v5}, Lcom/microsoft/appcenter/http/HttpUtils;->createHttpClient(Landroid/content/Context;)Lcom/microsoft/appcenter/http/HttpClient;

    move-result-object v5

    move-object v4, v5

    .line 803
    :cond_0
    move-object v5, v1

    new-instance v6, Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;-><init>()V

    iput-object v6, v5, Lcom/microsoft/appcenter/AppCenter;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    .line 804
    move-object v5, v1

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    const-string/jumbo v6, "startService"

    new-instance v7, Lcom/microsoft/appcenter/ingestion/models/json/StartServiceLogFactory;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Lcom/microsoft/appcenter/ingestion/models/json/StartServiceLogFactory;-><init>()V

    invoke-interface {v5, v6, v7}, Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;->addLogFactory(Ljava/lang/String;Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;)V

    .line 805
    move-object v5, v1

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    const-string/jumbo v6, "customProperties"

    new-instance v7, Lcom/microsoft/appcenter/ingestion/models/json/CustomPropertiesLogFactory;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Lcom/microsoft/appcenter/ingestion/models/json/CustomPropertiesLogFactory;-><init>()V

    invoke-interface {v5, v6, v7}, Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;->addLogFactory(Ljava/lang/String;Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;)V

    .line 806
    move-object v5, v1

    new-instance v6, Lcom/microsoft/appcenter/channel/DefaultChannel;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v1

    iget-object v8, v8, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;

    move-object v9, v1

    iget-object v9, v9, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    move-object v10, v1

    iget-object v10, v10, Lcom/microsoft/appcenter/AppCenter;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    move-object v11, v4

    move-object v12, v1

    iget-object v12, v12, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    invoke-direct/range {v7 .. v12}, Lcom/microsoft/appcenter/channel/DefaultChannel;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;Lcom/microsoft/appcenter/http/HttpClient;Landroid/os/Handler;)V

    iput-object v6, v5, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    .line 809
    move v5, v2

    if-eqz v5, :cond_4

    .line 810
    move-object v5, v1

    invoke-direct {v5}, Lcom/microsoft/appcenter/AppCenter;->applyStorageMaxSize()V

    .line 816
    :goto_0
    move-object v5, v1

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move v6, v3

    invoke-interface {v5, v6}, Lcom/microsoft/appcenter/channel/Channel;->setEnabled(Z)V

    .line 817
    move-object v5, v1

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    const-string/jumbo v6, "group_core"

    const/16 v7, 0x32

    const-wide/16 v8, 0xbb8

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v5 .. v12}, Lcom/microsoft/appcenter/channel/Channel;->addGroup(Ljava/lang/String;IJILcom/microsoft/appcenter/ingestion/Ingestion;Lcom/microsoft/appcenter/channel/Channel$GroupListener;)V

    .line 818
    move-object v5, v1

    new-instance v6, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v1

    iget-object v8, v8, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v9, v1

    iget-object v9, v9, Lcom/microsoft/appcenter/AppCenter;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    move-object v10, v4

    invoke-static {}, Lcom/microsoft/appcenter/utils/IdHelper;->getInstallId()Ljava/util/UUID;

    move-result-object v11

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;-><init>(Lcom/microsoft/appcenter/channel/Channel;Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;Lcom/microsoft/appcenter/http/HttpClient;Ljava/util/UUID;)V

    iput-object v6, v5, Lcom/microsoft/appcenter/AppCenter;->mOneCollectorChannelListener:Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;

    .line 819
    move-object v5, v1

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mLogUrl:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 820
    move-object v5, v1

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 821
    const-string/jumbo v5, "AppCenter"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "The log url of App Center endpoint has been changed to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    iget-object v7, v7, Lcom/microsoft/appcenter/AppCenter;->mLogUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    move-object v5, v1

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v6, v1

    iget-object v6, v6, Lcom/microsoft/appcenter/AppCenter;->mLogUrl:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/microsoft/appcenter/channel/Channel;->setLogUrl(Ljava/lang/String;)V

    .line 828
    :cond_1
    :goto_1
    move-object v5, v1

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v6, v1

    iget-object v6, v6, Lcom/microsoft/appcenter/AppCenter;->mOneCollectorChannelListener:Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;

    invoke-interface {v5, v6}, Lcom/microsoft/appcenter/channel/Channel;->addListener(Lcom/microsoft/appcenter/channel/Channel$Listener;)V

    .line 831
    move v5, v3

    if-nez v5, :cond_2

    .line 832
    move-object v5, v1

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;

    invoke-static {v5}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->getSharedInstance(Landroid/content/Context;)Lcom/microsoft/appcenter/utils/NetworkStateHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->close()V

    .line 836
    :cond_2
    move-object v5, v1

    new-instance v6, Lcom/microsoft/appcenter/UncaughtExceptionHandler;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v1

    iget-object v8, v8, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    move-object v9, v1

    iget-object v9, v9, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    invoke-direct {v7, v8, v9}, Lcom/microsoft/appcenter/UncaughtExceptionHandler;-><init>(Landroid/os/Handler;Lcom/microsoft/appcenter/channel/Channel;)V

    iput-object v6, v5, Lcom/microsoft/appcenter/AppCenter;->mUncaughtExceptionHandler:Lcom/microsoft/appcenter/UncaughtExceptionHandler;

    .line 837
    move v5, v3

    if-eqz v5, :cond_3

    .line 838
    move-object v5, v1

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mUncaughtExceptionHandler:Lcom/microsoft/appcenter/UncaughtExceptionHandler;

    invoke-virtual {v5}, Lcom/microsoft/appcenter/UncaughtExceptionHandler;->register()V

    .line 840
    :cond_3
    const-string/jumbo v5, "AppCenter"

    const-string/jumbo v6, "App Center initialized."

    invoke-static {v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    return-void

    .line 814
    :cond_4
    move-object v5, v1

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    const-wide/32 v6, 0xa00000

    invoke-interface {v5, v6, v7}, Lcom/microsoft/appcenter/channel/Channel;->setMaxStorageSize(J)Z

    move-result v5

    goto/16 :goto_0

    .line 824
    :cond_5
    const-string/jumbo v5, "AppCenter"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "The log url of One Collector endpoint has been changed to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    iget-object v7, v7, Lcom/microsoft/appcenter/AppCenter;->mLogUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    move-object v5, v1

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mOneCollectorChannelListener:Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;

    move-object v6, v1

    iget-object v6, v6, Lcom/microsoft/appcenter/AppCenter;->mLogUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;->setLogUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private finishStartServices(Ljava/lang/Iterable;Ljava/lang/Iterable;Z)V
    .locals 17
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 948
    move-object/from16 v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object/from16 v1, p1

    .local v1, "updatedServices":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/microsoft/appcenter/AppCenterService;>;"
    move-object/from16 v2, p2

    .local v2, "startedServices":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/microsoft/appcenter/AppCenterService;>;"
    move/from16 v3, p3

    .local v3, "startFromApp":Z
    move-object v10, v1

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v4, v10

    :goto_0
    move-object v10, v4

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v10, v4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/microsoft/appcenter/AppCenterService;

    move-object v5, v10

    .line 949
    .local v5, "service":Lcom/microsoft/appcenter/AppCenterService;
    move-object v10, v5

    move-object v11, v0

    iget-object v11, v11, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    move-object v12, v0

    iget-object v12, v12, Lcom/microsoft/appcenter/AppCenter;->mTransmissionTargetToken:Ljava/lang/String;

    invoke-interface {v10, v11, v12}, Lcom/microsoft/appcenter/AppCenterService;->onConfigurationUpdated(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    const-string/jumbo v10, "AppCenter"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v5

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " service configuration updated."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    goto :goto_0

    .line 954
    .end local v5    # "service":Lcom/microsoft/appcenter/AppCenterService;
    :cond_0
    move-object v10, v0

    invoke-virtual {v10}, Lcom/microsoft/appcenter/AppCenter;->isInstanceEnabled()Z

    move-result v10

    move v4, v10

    .line 955
    .local v4, "enabled":Z
    move-object v10, v2

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v5, v10

    :goto_1
    move-object v10, v5

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v10, v5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/microsoft/appcenter/AppCenterService;

    move-object v6, v10

    .line 956
    .local v6, "service":Lcom/microsoft/appcenter/AppCenterService;
    move-object v10, v6

    invoke-interface {v10}, Lcom/microsoft/appcenter/AppCenterService;->getLogFactories()Ljava/util/Map;

    move-result-object v10

    move-object v7, v10

    .line 957
    .local v7, "logFactories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;>;"
    move-object v10, v7

    if-eqz v10, :cond_1

    .line 958
    move-object v10, v7

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v8, v10

    :goto_2
    move-object v10, v8

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v10, v8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    move-object v9, v10

    .line 959
    .local v9, "logFactory":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;>;"
    move-object v10, v0

    iget-object v10, v10, Lcom/microsoft/appcenter/AppCenter;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    move-object v11, v9

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object v12, v9

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;

    invoke-interface {v10, v11, v12}, Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;->addLogFactory(Ljava/lang/String;Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;)V

    .line 960
    goto :goto_2

    .line 962
    .end local v9    # "logFactory":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;>;"
    :cond_1
    move v10, v4

    if-nez v10, :cond_2

    move-object v10, v6

    invoke-interface {v10}, Lcom/microsoft/appcenter/AppCenterService;->isInstanceEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 963
    move-object v10, v6

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/microsoft/appcenter/AppCenterService;->setInstanceEnabled(Z)V

    .line 965
    :cond_2
    move v10, v3

    if-eqz v10, :cond_3

    .line 966
    move-object v10, v6

    move-object v11, v0

    iget-object v11, v11, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;

    move-object v12, v0

    iget-object v12, v12, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v13, v0

    iget-object v13, v13, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    move-object v14, v0

    iget-object v14, v14, Lcom/microsoft/appcenter/AppCenter;->mTransmissionTargetToken:Ljava/lang/String;

    const/4 v15, 0x1

    invoke-interface/range {v10 .. v15}, Lcom/microsoft/appcenter/AppCenterService;->onStarted(Landroid/content/Context;Lcom/microsoft/appcenter/channel/Channel;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 967
    const-string/jumbo v10, "AppCenter"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v6

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " service started from application."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    :goto_3
    goto/16 :goto_1

    .line 969
    :cond_3
    move-object v10, v6

    move-object v11, v0

    iget-object v11, v11, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;

    move-object v12, v0

    iget-object v12, v12, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v10 .. v15}, Lcom/microsoft/appcenter/AppCenterService;->onStarted(Landroid/content/Context;Lcom/microsoft/appcenter/channel/Channel;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 970
    const-string/jumbo v10, "AppCenter"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v6

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " service started from library."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 975
    .end local v6    # "service":Lcom/microsoft/appcenter/AppCenterService;
    .end local v7    # "logFactories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;>;"
    :cond_4
    move v10, v3

    if-eqz v10, :cond_7

    .line 978
    move-object v10, v1

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v5, v10

    :goto_4
    move-object v10, v5

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v10, v5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/microsoft/appcenter/AppCenterService;

    move-object v6, v10

    .line 979
    .restart local v6    # "service":Lcom/microsoft/appcenter/AppCenterService;
    move-object v10, v0

    iget-object v10, v10, Lcom/microsoft/appcenter/AppCenter;->mStartedServicesNamesToLog:Ljava/util/List;

    move-object v11, v6

    invoke-interface {v11}, Lcom/microsoft/appcenter/AppCenterService;->getServiceName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 980
    goto :goto_4

    .line 981
    .end local v6    # "service":Lcom/microsoft/appcenter/AppCenterService;
    :cond_5
    move-object v10, v2

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v5, v10

    :goto_5
    move-object v10, v5

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    move-object v10, v5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/microsoft/appcenter/AppCenterService;

    move-object v6, v10

    .line 982
    .restart local v6    # "service":Lcom/microsoft/appcenter/AppCenterService;
    move-object v10, v0

    iget-object v10, v10, Lcom/microsoft/appcenter/AppCenter;->mStartedServicesNamesToLog:Ljava/util/List;

    move-object v11, v6

    invoke-interface {v11}, Lcom/microsoft/appcenter/AppCenterService;->getServiceName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 983
    goto :goto_5

    .line 984
    .end local v6    # "service":Lcom/microsoft/appcenter/AppCenterService;
    :cond_6
    move-object v10, v0

    invoke-direct {v10}, Lcom/microsoft/appcenter/AppCenter;->sendStartServiceLog()V

    .line 986
    :cond_7
    return-void
.end method

.method public static getInstallId()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/appcenter/utils/async/AppCenterFuture",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 439
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v0

    invoke-direct {v0}, Lcom/microsoft/appcenter/AppCenter;->getInstanceInstallIdAsync()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/microsoft/appcenter/AppCenter;
    .locals 4

    .prologue
    .line 231
    const-class v2, Lcom/microsoft/appcenter/AppCenter;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/microsoft/appcenter/AppCenter;->sInstance:Lcom/microsoft/appcenter/AppCenter;

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Lcom/microsoft/appcenter/AppCenter;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lcom/microsoft/appcenter/AppCenter;-><init>()V

    sput-object v0, Lcom/microsoft/appcenter/AppCenter;->sInstance:Lcom/microsoft/appcenter/AppCenter;

    .line 234
    :cond_0
    sget-object v0, Lcom/microsoft/appcenter/AppCenter;->sInstance:Lcom/microsoft/appcenter/AppCenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private declared-synchronized getInstanceInstallIdAsync()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/appcenter/utils/async/AppCenterFuture",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1149
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v8, p0

    monitor-enter v8

    :try_start_0
    new-instance v2, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    invoke-direct {v3}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;-><init>()V

    move-object v1, v2

    .line 1150
    .local v1, "future":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<Ljava/util/UUID;>;"
    move-object v2, v0

    invoke-direct {v2}, Lcom/microsoft/appcenter/AppCenter;->checkPrecondition()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1151
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/AppCenter;->mAppCenterHandler:Lcom/microsoft/appcenter/AppCenterHandler;

    new-instance v3, Lcom/microsoft/appcenter/AppCenter$12;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/microsoft/appcenter/AppCenter$12;-><init>(Lcom/microsoft/appcenter/AppCenter;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)V

    new-instance v4, Lcom/microsoft/appcenter/AppCenter$13;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/microsoft/appcenter/AppCenter$13;-><init>(Lcom/microsoft/appcenter/AppCenter;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)V

    invoke-interface {v2, v3, v4}, Lcom/microsoft/appcenter/AppCenterHandler;->post(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1167
    :goto_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    monitor-exit v8

    return-object v0

    .line 1165
    .restart local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    :cond_0
    move-object v2, v1

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->complete(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1149
    .end local v1    # "future":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<Ljava/util/UUID;>;"
    :catchall_0
    move-exception v0

    monitor-exit v8

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    throw v0
.end method

.method public static getLogLevel()I
    .locals 1
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x2L
        to = 0x8L
    .end annotation

    .prologue
    .line 260
    invoke-static {}, Lcom/microsoft/appcenter/utils/AppCenterLog;->getLogLevel()I

    move-result v0

    return v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    const-string/jumbo v0, "3.3.0"

    return-object v0
.end method

.method private declared-synchronized handlerAppCenterOperation(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 11

    .prologue
    .line 751
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, p1

    .local v1, "runnable":Ljava/lang/Runnable;
    move-object v2, p2

    .local v2, "disabledRunnable":Ljava/lang/Runnable;
    move-object v9, p0

    monitor-enter v9

    move-object v4, v0

    :try_start_0
    invoke-direct {v4}, Lcom/microsoft/appcenter/AppCenter;->checkPrecondition()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 752
    new-instance v4, Lcom/microsoft/appcenter/AppCenter$7;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/microsoft/appcenter/AppCenter$7;-><init>(Lcom/microsoft/appcenter/AppCenter;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    move-object v3, v4

    .line 772
    .local v3, "wrapperRunnable":Ljava/lang/Runnable;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mHandlerThread:Landroid/os/HandlerThread;

    if-ne v4, v5, :cond_1

    .line 773
    move-object v4, v1

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 778
    .end local v3    # "wrapperRunnable":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    monitor-exit v9

    return-void

    .line 775
    .restart local v3    # "wrapperRunnable":Ljava/lang/Runnable;
    :cond_1
    move-object v4, v0

    :try_start_1
    iget-object v4, v4, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    goto :goto_0

    .line 751
    .end local v3    # "wrapperRunnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception v0

    monitor-exit v9

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    throw v0
.end method

.method public static isConfigured()Z
    .locals 1

    .prologue
    .line 313
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v0

    invoke-direct {v0}, Lcom/microsoft/appcenter/AppCenter;->isInstanceConfigured()Z

    move-result v0

    return v0
.end method

.method public static isEnabled()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/appcenter/utils/async/AppCenterFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 414
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v0

    invoke-direct {v0}, Lcom/microsoft/appcenter/AppCenter;->isInstanceEnabledAsync()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized isInstanceConfigured()Z
    .locals 3

    .prologue
    .line 610
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    monitor-exit v2

    return v0

    .restart local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    throw v0
.end method

.method private declared-synchronized isInstanceEnabledAsync()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/appcenter/utils/async/AppCenterFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1039
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v8, p0

    monitor-enter v8

    :try_start_0
    new-instance v2, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    invoke-direct {v3}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;-><init>()V

    move-object v1, v2

    .line 1040
    .local v1, "future":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<Ljava/lang/Boolean;>;"
    move-object v2, v0

    invoke-direct {v2}, Lcom/microsoft/appcenter/AppCenter;->checkPrecondition()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1041
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/AppCenter;->mAppCenterHandler:Lcom/microsoft/appcenter/AppCenterHandler;

    new-instance v3, Lcom/microsoft/appcenter/AppCenter$9;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/microsoft/appcenter/AppCenter$9;-><init>(Lcom/microsoft/appcenter/AppCenter;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)V

    new-instance v4, Lcom/microsoft/appcenter/AppCenter$10;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/microsoft/appcenter/AppCenter$10;-><init>(Lcom/microsoft/appcenter/AppCenter;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)V

    invoke-interface {v2, v3, v4}, Lcom/microsoft/appcenter/AppCenterHandler;->post(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1057
    :goto_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    monitor-exit v8

    return-object v0

    .line 1055
    .restart local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    :cond_0
    move-object v2, v1

    const/4 v3, 0x0

    :try_start_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->complete(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1039
    .end local v1    # "future":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<Ljava/lang/Boolean;>;"
    :catchall_0
    move-exception v0

    monitor-exit v8

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    throw v0
.end method

.method public static isRunningInAppCenterTestCloud()Z
    .locals 4

    .prologue
    .line 324
    :try_start_0
    invoke-static {}, Lcom/microsoft/appcenter/utils/InstrumentationRegistryHelper;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    move-object v0, v2

    .line 325
    .local v0, "arguments":Landroid/os/Bundle;
    move-object v2, v0

    const-string/jumbo v3, "RUNNING_IN_APP_CENTER"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 326
    .local v1, "runningValue":Ljava/lang/String;
    const-string/jumbo v2, "1"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v0, v2

    .line 328
    .end local v0    # "arguments":Landroid/os/Bundle;
    :goto_0
    return v0

    .line 327
    .end local v1    # "runningValue":Ljava/lang/String;
    .restart local v0    # "arguments":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 328
    .local v0, "e":Ljava/lang/IllegalStateException;
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method private queueCustomProperties(Ljava/util/Map;)V
    .locals 8
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1030
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, p1

    .local v1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v3, Lcom/microsoft/appcenter/ingestion/models/CustomPropertiesLog;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lcom/microsoft/appcenter/ingestion/models/CustomPropertiesLog;-><init>()V

    move-object v2, v3

    .line 1031
    .local v2, "customPropertiesLog":Lcom/microsoft/appcenter/ingestion/models/CustomPropertiesLog;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/CustomPropertiesLog;->setProperties(Ljava/util/Map;)V

    .line 1032
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v4, v2

    const-string/jumbo v5, "group_core"

    const/4 v6, 0x1

    invoke-interface {v3, v4, v5, v6}, Lcom/microsoft/appcenter/channel/Channel;->enqueue(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;I)V

    .line 1033
    return-void
.end method

.method private sendStartServiceLog()V
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 993
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/AppCenter;->mStartedServicesNamesToLog:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/microsoft/appcenter/AppCenter;->isInstanceEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 994
    new-instance v3, Ljava/util/ArrayList;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mStartedServicesNamesToLog:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v3

    .line 995
    .local v1, "allServiceNamesToStart":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/AppCenter;->mStartedServicesNamesToLog:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 996
    new-instance v3, Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;-><init>()V

    move-object v2, v3

    .line 997
    .local v2, "startServiceLog":Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;->setServices(Ljava/util/List;)V

    .line 998
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v4, v2

    const-string/jumbo v5, "group_core"

    const/4 v6, 0x1

    invoke-interface {v3, v4, v5, v6}, Lcom/microsoft/appcenter/channel/Channel;->enqueue(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;I)V

    .line 1000
    .end local v1    # "allServiceNamesToStart":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "startServiceLog":Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;
    :cond_0
    return-void
.end method

.method public static setCustomProperties(Lcom/microsoft/appcenter/CustomProperties;)V
    .locals 3

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "customProperties":Lcom/microsoft/appcenter/CustomProperties;
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v1

    move-object v2, v0

    invoke-direct {v1, v2}, Lcom/microsoft/appcenter/AppCenter;->setInstanceCustomProperties(Lcom/microsoft/appcenter/CustomProperties;)V

    .line 305
    return-void
.end method

.method public static setEnabled(Z)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/microsoft/appcenter/utils/async/AppCenterFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 427
    move v0, p0

    .local v0, "enabled":Z
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v1

    move v2, v0

    invoke-direct {v1, v2}, Lcom/microsoft/appcenter/AppCenter;->setInstanceEnabledAsync(Z)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "enabled":Z
    return-object v0
.end method

.method private declared-synchronized setInstanceCustomProperties(Lcom/microsoft/appcenter/CustomProperties;)V
    .locals 10

    .prologue
    .line 560
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, p1

    .local v1, "customProperties":Lcom/microsoft/appcenter/CustomProperties;
    move-object v8, p0

    monitor-enter v8

    move-object v3, v1

    if-nez v3, :cond_0

    .line 561
    :try_start_0
    const-string/jumbo v3, "AppCenter"

    const-string/jumbo v4, "Custom properties may not be null."

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    .line 576
    :goto_0
    monitor-exit v8

    return-void

    .line 564
    :cond_0
    move-object v3, v1

    :try_start_1
    invoke-virtual {v3}, Lcom/microsoft/appcenter/CustomProperties;->getProperties()Ljava/util/Map;

    move-result-object v3

    move-object v2, v3

    .line 565
    .local v2, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 566
    const-string/jumbo v3, "AppCenter"

    const-string/jumbo v4, "Custom properties may not be empty."

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    goto :goto_0

    .line 569
    :cond_1
    move-object v3, v0

    new-instance v4, Lcom/microsoft/appcenter/AppCenter$3;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/microsoft/appcenter/AppCenter$3;-><init>(Lcom/microsoft/appcenter/AppCenter;Ljava/util/Map;)V

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/microsoft/appcenter/AppCenter;->handlerAppCenterOperation(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 576
    goto :goto_0

    .line 560
    .end local v2    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v0

    monitor-exit v8

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    throw v0
.end method

.method private setInstanceEnabled(Z)V
    .locals 11
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 1075
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move v1, p1

    .local v1, "enabled":Z
    move-object v7, v0

    iget-object v7, v7, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move v8, v1

    invoke-interface {v7, v8}, Lcom/microsoft/appcenter/channel/Channel;->setEnabled(Z)V

    .line 1078
    move-object v7, v0

    invoke-virtual {v7}, Lcom/microsoft/appcenter/AppCenter;->isInstanceEnabled()Z

    move-result v7

    move v2, v7

    .line 1079
    .local v2, "previouslyEnabled":Z
    move v7, v2

    if-eqz v7, :cond_4

    move v7, v1

    if-nez v7, :cond_4

    const/4 v7, 0x1

    :goto_0
    move v3, v7

    .line 1080
    .local v3, "switchToDisabled":Z
    move v7, v2

    if-nez v7, :cond_5

    move v7, v1

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    :goto_1
    move v4, v7

    .line 1083
    .local v4, "switchToEnabled":Z
    move v7, v4

    if-eqz v7, :cond_6

    .line 1084
    move-object v7, v0

    iget-object v7, v7, Lcom/microsoft/appcenter/AppCenter;->mUncaughtExceptionHandler:Lcom/microsoft/appcenter/UncaughtExceptionHandler;

    invoke-virtual {v7}, Lcom/microsoft/appcenter/UncaughtExceptionHandler;->register()V

    .line 1085
    move-object v7, v0

    iget-object v7, v7, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;

    invoke-static {v7}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->getSharedInstance(Landroid/content/Context;)Lcom/microsoft/appcenter/utils/NetworkStateHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->reopen()V

    .line 1092
    :cond_0
    :goto_2
    move v7, v1

    if-eqz v7, :cond_1

    .line 1093
    const-string/jumbo v7, "enabled"

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->putBoolean(Ljava/lang/String;Z)V

    .line 1097
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lcom/microsoft/appcenter/AppCenter;->mStartedServicesNamesToLog:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    move v7, v4

    if-eqz v7, :cond_2

    .line 1098
    move-object v7, v0

    invoke-direct {v7}, Lcom/microsoft/appcenter/AppCenter;->sendStartServiceLog()V

    .line 1102
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lcom/microsoft/appcenter/AppCenter;->mServices:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    :goto_3
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/microsoft/appcenter/AppCenterService;

    move-object v6, v7

    .line 1105
    .local v6, "service":Lcom/microsoft/appcenter/AppCenterService;
    move-object v7, v6

    invoke-interface {v7}, Lcom/microsoft/appcenter/AppCenterService;->isInstanceEnabled()Z

    move-result v7

    move v8, v1

    if-eq v7, v8, :cond_3

    .line 1106
    move-object v7, v6

    move v8, v1

    invoke-interface {v7, v8}, Lcom/microsoft/appcenter/AppCenterService;->setInstanceEnabled(Z)V

    .line 1108
    :cond_3
    goto :goto_3

    .line 1079
    .end local v3    # "switchToDisabled":Z
    .end local v4    # "switchToEnabled":Z
    .end local v6    # "service":Lcom/microsoft/appcenter/AppCenterService;
    :cond_4
    const/4 v7, 0x0

    goto :goto_0

    .line 1080
    .restart local v3    # "switchToDisabled":Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    .line 1086
    .restart local v4    # "switchToEnabled":Z
    :cond_6
    move v7, v3

    if-eqz v7, :cond_0

    .line 1087
    move-object v7, v0

    iget-object v7, v7, Lcom/microsoft/appcenter/AppCenter;->mUncaughtExceptionHandler:Lcom/microsoft/appcenter/UncaughtExceptionHandler;

    invoke-virtual {v7}, Lcom/microsoft/appcenter/UncaughtExceptionHandler;->unregister()V

    .line 1088
    move-object v7, v0

    iget-object v7, v7, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;

    invoke-static {v7}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->getSharedInstance(Landroid/content/Context;)Lcom/microsoft/appcenter/utils/NetworkStateHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->close()V

    goto :goto_2

    .line 1111
    :cond_7
    move v7, v1

    if-nez v7, :cond_8

    .line 1112
    const-string/jumbo v7, "enabled"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->putBoolean(Ljava/lang/String;Z)V

    .line 1116
    :cond_8
    move v7, v3

    if-eqz v7, :cond_9

    .line 1117
    const-string/jumbo v7, "AppCenter"

    const-string/jumbo v8, "App Center has been disabled."

    invoke-static {v7, v8}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    :goto_4
    return-void

    .line 1118
    :cond_9
    move v7, v4

    if-eqz v7, :cond_a

    .line 1119
    const-string/jumbo v7, "AppCenter"

    const-string/jumbo v8, "App Center has been enabled."

    invoke-static {v7, v8}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1121
    :cond_a
    const-string/jumbo v7, "AppCenter"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "App Center has already been "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v1

    if-eqz v9, :cond_b

    const-string/jumbo v9, "enabled"

    :goto_5
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    const-string/jumbo v9, "disabled"

    goto :goto_5
.end method

.method private declared-synchronized setInstanceEnabledAsync(Z)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/microsoft/appcenter/utils/async/AppCenterFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1129
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move v1, p1

    .local v1, "enabled":Z
    move-object v9, p0

    monitor-enter v9

    :try_start_0
    new-instance v3, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    invoke-direct {v4}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;-><init>()V

    move-object v2, v3

    .line 1130
    .local v2, "future":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<Ljava/lang/Void;>;"
    move-object v3, v0

    invoke-direct {v3}, Lcom/microsoft/appcenter/AppCenter;->checkPrecondition()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1131
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/microsoft/appcenter/AppCenter$11;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/microsoft/appcenter/AppCenter$11;-><init>(Lcom/microsoft/appcenter/AppCenter;ZLcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 1142
    :goto_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    monitor-exit v9

    return-object v0

    .line 1140
    .restart local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    :cond_0
    move-object v3, v2

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->complete(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1129
    .end local v2    # "future":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v0

    monitor-exit v9

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    throw v0
.end method

.method private declared-synchronized setInstanceLogLevel(I)V
    .locals 5

    .prologue
    .line 522
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move v1, p1

    .local v1, "logLevel":I
    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, v2, Lcom/microsoft/appcenter/AppCenter;->mLogLevelConfigured:Z

    .line 523
    move v2, v1

    invoke-static {v2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->setLogLevel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    monitor-exit v4

    return-void

    .line 522
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    throw v0
.end method

.method private declared-synchronized setInstanceLogUrl(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 532
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, p1

    .local v1, "logUrl":Ljava/lang/String;
    move-object v7, p0

    monitor-enter v7

    move-object v2, v0

    move-object v3, v1

    :try_start_0
    iput-object v3, v2, Lcom/microsoft/appcenter/AppCenter;->mLogUrl:Ljava/lang/String;

    .line 535
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 538
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/microsoft/appcenter/AppCenter$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/microsoft/appcenter/AppCenter$2;-><init>(Lcom/microsoft/appcenter/AppCenter;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 552
    :cond_0
    monitor-exit v7

    return-void

    .line 532
    :catchall_0
    move-exception v0

    monitor-exit v7

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    throw v0
.end method

.method private declared-synchronized setInstanceMaxStorageSizeAsync(J)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/microsoft/appcenter/utils/async/AppCenterFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 585
    move-object v1, p0

    .local v1, "this":Lcom/microsoft/appcenter/AppCenter;
    move-wide v2, p1

    .local v2, "storageSizeInBytes":J
    move-object v9, p0

    monitor-enter v9

    :try_start_0
    new-instance v5, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;-><init>()V

    move-object v4, v5

    .line 586
    .local v4, "setMaxStorageSizeFuture":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<Ljava/lang/Boolean;>;"
    move-object v5, v1

    iget-boolean v5, v5, Lcom/microsoft/appcenter/AppCenter;->mConfiguredFromApp:Z

    if-eqz v5, :cond_0

    .line 587
    const-string/jumbo v5, "AppCenter"

    const-string/jumbo v6, "setMaxStorageSize may not be called after App Center has been configured."

    invoke-static {v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    move-object v5, v4

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->complete(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    move-object v5, v4

    move-object v1, v5

    .line 603
    .end local v1    # "this":Lcom/microsoft/appcenter/AppCenter;
    :goto_0
    monitor-exit v9

    return-object v1

    .line 591
    .restart local v1    # "this":Lcom/microsoft/appcenter/AppCenter;
    :cond_0
    move-wide v5, v2

    const-wide/16 v7, 0x6000

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    .line 592
    :try_start_1
    const-string/jumbo v5, "AppCenter"

    const-string/jumbo v6, "Maximum storage size must be at least 24576 bytes."

    invoke-static {v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    move-object v5, v4

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->complete(Ljava/lang/Object;)V

    .line 594
    move-object v5, v4

    move-object v1, v5

    goto :goto_0

    .line 596
    :cond_1
    move-object v5, v1

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mSetMaxStorageSizeFuture:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    if-eqz v5, :cond_2

    .line 597
    const-string/jumbo v5, "AppCenter"

    const-string/jumbo v6, "setMaxStorageSize may only be called once per app launch."

    invoke-static {v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    move-object v5, v4

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->complete(Ljava/lang/Object;)V

    .line 599
    move-object v5, v4

    move-object v1, v5

    goto :goto_0

    .line 601
    :cond_2
    move-object v5, v1

    move-wide v6, v2

    iput-wide v6, v5, Lcom/microsoft/appcenter/AppCenter;->mMaxStorageSizeInBytes:J

    .line 602
    move-object v5, v1

    move-object v6, v4

    iput-object v6, v5, Lcom/microsoft/appcenter/AppCenter;->mSetMaxStorageSizeFuture:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 603
    move-object v5, v4

    move-object v1, v5

    goto :goto_0

    .line 585
    .end local v4    # "setMaxStorageSizeFuture":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<Ljava/lang/Boolean;>;"
    :catchall_0
    move-exception v1

    monitor-exit v9

    .end local v1    # "this":Lcom/microsoft/appcenter/AppCenter;
    throw v1
.end method

.method private declared-synchronized setInstanceUserId(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 462
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, p1

    .local v1, "userId":Ljava/lang/String;
    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    iget-boolean v2, v2, Lcom/microsoft/appcenter/AppCenter;->mConfiguredFromApp:Z

    if-nez v2, :cond_0

    .line 463
    const-string/jumbo v2, "AppCenter"

    const-string/jumbo v3, "AppCenter must be configured from application, libraries cannot use call setUserId."

    invoke-static {v2, v3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    .line 479
    :goto_0
    monitor-exit v4

    return-void

    .line 466
    :cond_0
    move-object v2, v0

    :try_start_1
    iget-object v2, v2, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/AppCenter;->mTransmissionTargetToken:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 467
    const-string/jumbo v2, "AppCenter"

    const-string/jumbo v3, "AppCenter must be configured with a secret from application to call setUserId."

    invoke-static {v2, v3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    goto :goto_0

    .line 470
    :cond_1
    move-object v2, v1

    if-eqz v2, :cond_3

    .line 471
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object v2, v1

    invoke-static {v2}, Lcom/microsoft/appcenter/utils/context/UserIdContext;->checkUserIdValidForAppCenter(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 472
    goto :goto_0

    .line 474
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/AppCenter;->mTransmissionTargetToken:Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object v2, v1

    invoke-static {v2}, Lcom/microsoft/appcenter/utils/context/UserIdContext;->checkUserIdValidForOneCollector(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 475
    goto :goto_0

    .line 478
    :cond_3
    invoke-static {}, Lcom/microsoft/appcenter/utils/context/UserIdContext;->getInstance()Lcom/microsoft/appcenter/utils/context/UserIdContext;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/utils/context/UserIdContext;->setUserId(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 479
    goto :goto_0

    .line 462
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    throw v0
.end method

.method private declared-synchronized setInstanceWrapperSdk(Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;)V
    .locals 8

    .prologue
    .line 500
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, p1

    .local v1, "wrapperSdk":Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;
    move-object v6, p0

    monitor-enter v6

    move-object v2, v1

    :try_start_0
    invoke-static {v2}, Lcom/microsoft/appcenter/utils/DeviceInfoHelper;->setWrapperSdk(Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;)V

    .line 503
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 506
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/microsoft/appcenter/AppCenter$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/microsoft/appcenter/AppCenter$1;-><init>(Lcom/microsoft/appcenter/AppCenter;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 514
    :cond_0
    monitor-exit v6

    return-void

    .line 500
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    throw v0
.end method

.method public static setLogLevel(I)V
    .locals 3
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x2L
            to = 0x8L
        .end annotation
    .end param

    .prologue
    .line 276
    move v0, p0

    .local v0, "logLevel":I
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v1

    move v2, v0

    invoke-direct {v1, v2}, Lcom/microsoft/appcenter/AppCenter;->setInstanceLogLevel(I)V

    .line 277
    return-void
.end method

.method public static setLogUrl(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "logUrl":Ljava/lang/String;
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v1

    move-object v2, v0

    invoke-direct {v1, v2}, Lcom/microsoft/appcenter/AppCenter;->setInstanceLogUrl(Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public static setMaxStorageSize(J)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/microsoft/appcenter/utils/async/AppCenterFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 455
    move-wide v0, p0

    .local v0, "storageSizeInBytes":J
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v2

    move-wide v3, v0

    invoke-direct {v2, v3, v4}, Lcom/microsoft/appcenter/AppCenter;->setInstanceMaxStorageSizeAsync(J)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "storageSizeInBytes":J
    return-object v0
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1181
    move-object v0, p0

    .local v0, "userId":Ljava/lang/String;
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v1

    move-object v2, v0

    invoke-direct {v1, v2}, Lcom/microsoft/appcenter/AppCenter;->setInstanceUserId(Ljava/lang/String;)V

    .line 1182
    return-void
.end method

.method public static setWrapperSdk(Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;)V
    .locals 3

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "wrapperSdk":Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v1

    move-object v2, v0

    invoke-direct {v1, v2}, Lcom/microsoft/appcenter/AppCenter;->setInstanceWrapperSdk(Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;)V

    .line 251
    return-void
.end method

.method public static varargs start(Landroid/app/Application;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<+",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 374
    move-object v0, p0

    .local v0, "application":Landroid/app/Application;
    move-object v1, p1

    .local v1, "appSecret":Ljava/lang/String;
    move-object v2, p2

    .local v2, "services":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lcom/microsoft/appcenter/AppCenterService;>;"
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Lcom/microsoft/appcenter/AppCenter;->configureAndStartServices(Landroid/app/Application;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 375
    return-void
.end method

.method public static varargs start(Landroid/app/Application;[Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "[",
            "Ljava/lang/Class",
            "<+",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 386
    move-object v0, p0

    .local v0, "application":Landroid/app/Application;
    move-object v1, p1

    .local v1, "services":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lcom/microsoft/appcenter/AppCenterService;>;"
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v2

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v6, v1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/microsoft/appcenter/AppCenter;->configureAndStartServices(Landroid/app/Application;Ljava/lang/String;Z[Ljava/lang/Class;)V

    .line 387
    return-void
.end method

.method public static varargs start([Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<+",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 361
    move-object v0, p0

    .local v0, "services":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lcom/microsoft/appcenter/AppCenterService;>;"
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v1

    const/4 v2, 0x1

    move-object v3, v0

    invoke-direct {v1, v2, v3}, Lcom/microsoft/appcenter/AppCenter;->startServices(Z[Ljava/lang/Class;)V

    .line 362
    return-void
.end method

.method public static varargs startFromLibrary(Landroid/content/Context;[Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/Class",
            "<+",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 403
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "services":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lcom/microsoft/appcenter/AppCenterService;>;"
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lcom/microsoft/appcenter/AppCenter;->startInstanceFromLibrary(Landroid/content/Context;[Ljava/lang/Class;)V

    .line 404
    return-void
.end method

.method private declared-synchronized startInstanceFromLibrary(Landroid/content/Context;[Ljava/lang/Class;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/Class",
            "<+",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1011
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "services":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lcom/microsoft/appcenter/AppCenterService;>;"
    move-object v9, p0

    monitor-enter v9

    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    :try_start_0
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Application;

    :goto_0
    move-object v3, v4

    .line 1012
    .local v3, "application":Landroid/app/Application;
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/microsoft/appcenter/AppCenter;->configureAndStartServices(Landroid/app/Application;Ljava/lang/String;Z[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1013
    monitor-exit v9

    return-void

    .line 1011
    .end local v3    # "application":Landroid/app/Application;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v9

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    throw v0
.end method

.method private startOrUpdateService(Lcom/microsoft/appcenter/AppCenterService;Ljava/util/Collection;Ljava/util/Collection;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/appcenter/AppCenterService;",
            "Ljava/util/Collection",
            "<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 893
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, p1

    .local v1, "serviceInstance":Lcom/microsoft/appcenter/AppCenterService;
    move-object v2, p2

    .local v2, "startedServices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/microsoft/appcenter/AppCenterService;>;"
    move-object v3, p3

    .local v3, "updatedServices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/microsoft/appcenter/AppCenterService;>;"
    move v4, p4

    .local v4, "startFromApp":Z
    move v5, v4

    if-eqz v5, :cond_1

    .line 894
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/microsoft/appcenter/AppCenter;->startOrUpdateServiceFromApp(Lcom/microsoft/appcenter/AppCenterService;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 898
    :cond_0
    :goto_0
    return-void

    .line 895
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mServices:Ljava/util/Set;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 896
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/microsoft/appcenter/AppCenter;->startServiceFromLibrary(Lcom/microsoft/appcenter/AppCenterService;Ljava/util/Collection;)V

    goto :goto_0
.end method

.method private startOrUpdateServiceFromApp(Lcom/microsoft/appcenter/AppCenterService;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/appcenter/AppCenterService;",
            "Ljava/util/Collection",
            "<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 901
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, p1

    .local v1, "serviceInstance":Lcom/microsoft/appcenter/AppCenterService;
    move-object v2, p2

    .local v2, "startedServices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/microsoft/appcenter/AppCenterService;>;"
    move-object v3, p3

    .local v3, "updatedServices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/microsoft/appcenter/AppCenterService;>;"
    move-object v5, v1

    invoke-interface {v5}, Lcom/microsoft/appcenter/AppCenterService;->getServiceName()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 902
    .local v4, "serviceName":Ljava/lang/String;
    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mServices:Ljava/util/Set;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 903
    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mServicesStartedFromLibrary:Ljava/util/Set;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 904
    move-object v5, v3

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 913
    :goto_0
    return-void

    .line 906
    :cond_0
    const-string/jumbo v5, "AppCenter"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "App Center has already started the service with class name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-interface {v7}, Lcom/microsoft/appcenter/AppCenterService;->getServiceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 908
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    if-nez v5, :cond_2

    move-object v5, v1

    invoke-interface {v5}, Lcom/microsoft/appcenter/AppCenterService;->isAppSecretRequired()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 909
    const-string/jumbo v5, "AppCenter"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "App Center was started without app secret, but the service requires it; not starting service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 911
    :cond_2
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/microsoft/appcenter/AppCenter;->startService(Lcom/microsoft/appcenter/AppCenterService;Ljava/util/Collection;)Z

    move-result v5

    goto :goto_0
.end method

.method private startService(Lcom/microsoft/appcenter/AppCenterService;Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/appcenter/AppCenterService;",
            "Ljava/util/Collection",
            "<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 930
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, p1

    .local v1, "serviceInstance":Lcom/microsoft/appcenter/AppCenterService;
    move-object v2, p2

    .local v2, "startedServices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/microsoft/appcenter/AppCenterService;>;"
    move-object v4, v1

    invoke-interface {v4}, Lcom/microsoft/appcenter/AppCenterService;->getServiceName()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 931
    .local v3, "serviceName":Ljava/lang/String;
    move-object v4, v3

    invoke-static {v4}, Lcom/microsoft/appcenter/ServiceInstrumentationUtils;->isServiceDisabledByInstrumentation(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 932
    const-string/jumbo v4, "AppCenter"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Instrumentation variable to disable service has been set; not starting service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    const/4 v4, 0x0

    move v0, v4

    .line 940
    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    :goto_0
    return v0

    .line 935
    .restart local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    :cond_0
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mAppCenterHandler:Lcom/microsoft/appcenter/AppCenterHandler;

    invoke-interface {v4, v5}, Lcom/microsoft/appcenter/AppCenterService;->onStarting(Lcom/microsoft/appcenter/AppCenterHandler;)V

    .line 936
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/AppCenter;->mApplicationLifecycleListener:Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->registerApplicationLifecycleCallbacks(Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener$ApplicationLifecycleCallbacks;)V

    .line 937
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 938
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/AppCenter;->mServices:Ljava/util/Set;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 939
    move-object v4, v2

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 940
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method private startServiceFromLibrary(Lcom/microsoft/appcenter/AppCenterService;Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/appcenter/AppCenterService;",
            "Ljava/util/Collection",
            "<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 921
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, p1

    .local v1, "serviceInstance":Lcom/microsoft/appcenter/AppCenterService;
    move-object v2, p2

    .local v2, "startedServices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/microsoft/appcenter/AppCenterService;>;"
    move-object v4, v1

    invoke-interface {v4}, Lcom/microsoft/appcenter/AppCenterService;->getServiceName()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 922
    .local v3, "serviceName":Ljava/lang/String;
    move-object v4, v1

    invoke-interface {v4}, Lcom/microsoft/appcenter/AppCenterService;->isAppSecretRequired()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 923
    const-string/jumbo v4, "AppCenter"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "This service cannot be started from a library: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    :cond_0
    :goto_0
    return-void

    .line 924
    :cond_1
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/microsoft/appcenter/AppCenter;->startService(Lcom/microsoft/appcenter/AppCenterService;Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 925
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/AppCenter;->mServicesStartedFromLibrary:Ljava/util/Set;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0
.end method

.method private final varargs declared-synchronized startServices(Z[Ljava/lang/Class;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Ljava/lang/Class",
            "<+",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 853
    move-object/from16 v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move/from16 v1, p1

    .local v1, "startFromApp":Z
    move-object/from16 v2, p2

    .local v2, "services":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lcom/microsoft/appcenter/AppCenterService;>;"
    move-object/from16 v17, p0

    monitor-enter v17

    move-object v10, v2

    if-nez v10, :cond_0

    .line 854
    :try_start_0
    const-string/jumbo v10, "AppCenter"

    const-string/jumbo v11, "Cannot start services, services array is null. Failed to start services."

    invoke-static {v10, v11}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 855
    .line 890
    :goto_0
    monitor-exit v17

    return-void

    .line 857
    :cond_0
    move-object v10, v0

    :try_start_1
    iget-object v10, v10, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;

    if-nez v10, :cond_2

    .line 858
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v10

    .line 859
    .local v3, "serviceNames":Ljava/lang/StringBuilder;
    move-object v10, v2

    move-object v4, v10

    move-object v10, v4

    array-length v10, v10

    move v5, v10

    const/4 v10, 0x0

    move v6, v10

    :goto_1
    move v10, v6

    move v11, v5

    if-ge v10, v11, :cond_1

    move-object v10, v4

    move v11, v6

    aget-object v10, v10, v11

    move-object v7, v10

    .line 860
    .local v7, "service":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/appcenter/AppCenterService;>;"
    move-object v10, v3

    const-string/jumbo v11, "\t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v7

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 859
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 862
    .end local v7    # "service":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/appcenter/AppCenterService;>;"
    :cond_1
    const-string/jumbo v10, "AppCenter"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Cannot start services, App Center has not been configured. Failed to start the following services:\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    goto :goto_0

    .line 867
    .end local v3    # "serviceNames":Ljava/lang/StringBuilder;
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v10

    .line 868
    .local v3, "startedServices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/microsoft/appcenter/AppCenterService;>;"
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v10

    .line 869
    .local v4, "updatedServices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/microsoft/appcenter/AppCenterService;>;"
    move-object v10, v2

    move-object v5, v10

    move-object v10, v5

    array-length v10, v10

    move v6, v10

    const/4 v10, 0x0

    move v7, v10

    :goto_2
    move v10, v7

    move v11, v6

    if-ge v10, v11, :cond_4

    move-object v10, v5

    move v11, v7

    aget-object v10, v10, v11

    move-object v8, v10

    .line 870
    .local v8, "service":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/appcenter/AppCenterService;>;"
    move-object v10, v8

    if-nez v10, :cond_3

    .line 871
    const-string/jumbo v10, "AppCenter"

    const-string/jumbo v11, "Skipping null service, please check your varargs/array does not contain any null reference."

    invoke-static {v10, v11}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 869
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 874
    :cond_3
    move-object v10, v8

    :try_start_2
    const-string/jumbo v11, "getInstance"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/microsoft/appcenter/AppCenterService;

    move-object v9, v10

    .line 875
    .local v9, "serviceInstance":Lcom/microsoft/appcenter/AppCenterService;
    move-object v10, v0

    move-object v11, v9

    move-object v12, v3

    move-object v13, v4

    move v14, v1

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/microsoft/appcenter/AppCenter;->startOrUpdateService(Lcom/microsoft/appcenter/AppCenterService;Ljava/util/Collection;Ljava/util/Collection;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 878
    goto :goto_3

    .line 876
    .end local v9    # "serviceInstance":Lcom/microsoft/appcenter/AppCenterService;
    :catch_0
    move-exception v10

    move-object v9, v10

    .line 877
    .local v9, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v10, "AppCenter"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to get service instance \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v8

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\', skipping it."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v12, v9

    invoke-static {v10, v11, v12}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 853
    .end local v3    # "startedServices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/microsoft/appcenter/AppCenterService;>;"
    .end local v4    # "updatedServices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/microsoft/appcenter/AppCenterService;>;"
    .end local v8    # "service":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/appcenter/AppCenterService;>;"
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v17

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    throw v0

    .line 883
    .restart local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    .restart local v3    # "startedServices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/microsoft/appcenter/AppCenterService;>;"
    .restart local v4    # "updatedServices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/microsoft/appcenter/AppCenterService;>;"
    :cond_4
    move-object v10, v0

    :try_start_4
    iget-object v10, v10, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/microsoft/appcenter/AppCenter$8;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    move-object v13, v0

    move-object v14, v4

    move-object v15, v3

    move/from16 v16, v1

    invoke-direct/range {v12 .. v16}, Lcom/microsoft/appcenter/AppCenter$8;-><init>(Lcom/microsoft/appcenter/AppCenter;Ljava/util/Collection;Ljava/util/Collection;Z)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v10

    .line 890
    goto/16 :goto_0
.end method

.method static declared-synchronized unsetInstance()V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 239
    const-class v1, Lcom/microsoft/appcenter/AppCenter;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/microsoft/appcenter/AppCenter;->sInstance:Lcom/microsoft/appcenter/AppCenter;

    .line 240
    invoke-static {}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->unsetInstance()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    monitor-exit v1

    return-void

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method getApplication()Landroid/app/Application;
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 1191
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    return-object v0
.end method

.method getServices()Ljava/util/Set;
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1186
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/AppCenter;->mServices:Ljava/util/Set;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    return-object v0
.end method

.method getUncaughtExceptionHandler()Lcom/microsoft/appcenter/UncaughtExceptionHandler;
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 1196
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/AppCenter;->mUncaughtExceptionHandler:Lcom/microsoft/appcenter/UncaughtExceptionHandler;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    return-object v0
.end method

.method isInstanceEnabled()Z
    .locals 3

    .prologue
    .line 1065
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    const-string/jumbo v1, "enabled"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    return v0
.end method

.method public setChannel(Lcom/microsoft/appcenter/channel/Channel;)V
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 1201
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, p1

    .local v1, "channel":Lcom/microsoft/appcenter/channel/Channel;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    .line 1202
    return-void
.end method
