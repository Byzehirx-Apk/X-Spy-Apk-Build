.class public abstract Lcom/microsoft/appcenter/AbstractAppCenterService;
.super Ljava/lang/Object;
.source "AbstractAppCenterService.java"

# interfaces
.implements Lcom/microsoft/appcenter/AppCenterService;


# static fields
.field private static final PREFERENCE_KEY_SEPARATOR:Ljava/lang/String; = "_"


# instance fields
.field protected mChannel:Lcom/microsoft/appcenter/channel/Channel;

.field private mHandler:Lcom/microsoft/appcenter/AppCenterHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/appcenter/AbstractAppCenterService;Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/AbstractAppCenterService;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/microsoft/appcenter/AbstractAppCenterService;->runIfEnabled(Ljava/lang/Runnable;)V

    return-void
.end method

.method private declared-synchronized runIfEnabled(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 406
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    move-object v1, p1

    .local v1, "runnable":Ljava/lang/Runnable;
    move-object v3, p0

    monitor-enter v3

    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lcom/microsoft/appcenter/AbstractAppCenterService;->isInstanceEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    move-object v2, v1

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    :cond_0
    monitor-exit v3

    return-void

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    throw v0
.end method


# virtual methods
.method protected declared-synchronized applyEnabledState(Z)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, p0

    monitor-enter v2

    monitor-exit v2

    return-void
.end method

.method protected getChannelListener()Lcom/microsoft/appcenter/channel/Channel$GroupListener;
    .locals 2

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    return-object v0
.end method

.method protected getEnabledPreferenceKey()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enabled_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/microsoft/appcenter/AbstractAppCenterService;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    return-object v0
.end method

.method protected abstract getGroupName()Ljava/lang/String;
.end method

.method public getLogFactories()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    return-object v0
.end method

.method protected abstract getLoggerTag()Ljava/lang/String;
.end method

.method protected getTriggerCount()I
    .locals 2

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    const/16 v1, 0x32

    move v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    return v0
.end method

.method protected getTriggerInterval()J
    .locals 3

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    const-wide/16 v1, 0xbb8

    move-wide v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    return-wide v0
.end method

.method protected getTriggerMaxParallelRequests()I
    .locals 2

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    const/4 v1, 0x3

    move v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    return v0
.end method

.method public isAppSecretRequired()Z
    .locals 2

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    return v0
.end method

.method public declared-synchronized isInstanceEnabled()Z
    .locals 4

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    :try_start_0
    invoke-virtual {v1}, Lcom/microsoft/appcenter/AbstractAppCenterService;->getEnabledPreferenceKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    monitor-exit v3

    return v0

    .restart local v0    # "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    throw v0
.end method

.method protected declared-synchronized isInstanceEnabledAsync()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 9
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
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    move-object v7, p0

    monitor-enter v7

    :try_start_0
    new-instance v2, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-direct {v3}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;-><init>()V

    move-object v1, v2

    .line 90
    .local v1, "future":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<Ljava/lang/Boolean;>;"
    move-object v2, v0

    new-instance v3, Lcom/microsoft/appcenter/AbstractAppCenterService$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/microsoft/appcenter/AbstractAppCenterService$1;-><init>(Lcom/microsoft/appcenter/AbstractAppCenterService;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)V

    move-object v4, v1

    const/4 v5, 0x0

    .line 96
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 90
    invoke-virtual {v2, v3, v4, v5}, Lcom/microsoft/appcenter/AbstractAppCenterService;->postAsyncGetter(Ljava/lang/Runnable;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    monitor-exit v7

    return-object v0

    .line 89
    .end local v1    # "future":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<Ljava/lang/Boolean;>;"
    .restart local v0    # "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    :catchall_0
    move-exception v0

    monitor-exit v7

    .end local v0    # "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    throw v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 73
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 61
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 57
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 53
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 65
    return-void
.end method

.method public onApplicationEnterBackground()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public onApplicationEnterForeground()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public onConfigurationUpdated(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "appSecret"    # Ljava/lang/String;
    .param p2, "transmissionTargetToken"    # Ljava/lang/String;

    .prologue
    .line 225
    return-void
.end method

.method public declared-synchronized onStarted(Landroid/content/Context;Lcom/microsoft/appcenter/channel/Channel;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 18
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/appcenter/channel/Channel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 202
    move-object/from16 v1, p0

    .local v1, "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    move-object/from16 v2, p1

    .local v2, "context":Landroid/content/Context;
    move-object/from16 v3, p2

    .local v3, "channel":Lcom/microsoft/appcenter/channel/Channel;
    move-object/from16 v4, p3

    .local v4, "appSecret":Ljava/lang/String;
    move-object/from16 v5, p4

    .local v5, "transmissionTargetToken":Ljava/lang/String;
    move/from16 v6, p5

    .local v6, "startedFromApp":Z
    move-object/from16 v17, p0

    monitor-enter v17

    move-object v9, v1

    :try_start_0
    invoke-virtual {v9}, Lcom/microsoft/appcenter/AbstractAppCenterService;->getGroupName()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 203
    .local v7, "groupName":Ljava/lang/String;
    move-object v9, v1

    invoke-virtual {v9}, Lcom/microsoft/appcenter/AbstractAppCenterService;->isInstanceEnabled()Z

    move-result v9

    move v8, v9

    .line 204
    .local v8, "enabled":Z
    move-object v9, v7

    if-eqz v9, :cond_0

    .line 205
    move-object v9, v3

    move-object v10, v7

    invoke-interface {v9, v10}, Lcom/microsoft/appcenter/channel/Channel;->removeGroup(Ljava/lang/String;)V

    .line 208
    move v9, v8

    if-eqz v9, :cond_1

    .line 209
    move-object v9, v3

    move-object v10, v7

    move-object v11, v1

    invoke-virtual {v11}, Lcom/microsoft/appcenter/AbstractAppCenterService;->getTriggerCount()I

    move-result v11

    move-object v12, v1

    invoke-virtual {v12}, Lcom/microsoft/appcenter/AbstractAppCenterService;->getTriggerInterval()J

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Lcom/microsoft/appcenter/AbstractAppCenterService;->getTriggerMaxParallelRequests()I

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Lcom/microsoft/appcenter/AbstractAppCenterService;->getChannelListener()Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    move-result-object v16

    invoke-interface/range {v9 .. v16}, Lcom/microsoft/appcenter/channel/Channel;->addGroup(Ljava/lang/String;IJILcom/microsoft/appcenter/ingestion/Ingestion;Lcom/microsoft/appcenter/channel/Channel$GroupListener;)V

    .line 217
    :cond_0
    :goto_0
    move-object v9, v1

    move-object v10, v3

    iput-object v10, v9, Lcom/microsoft/appcenter/AbstractAppCenterService;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    .line 218
    move-object v9, v1

    move v10, v8

    invoke-virtual {v9, v10}, Lcom/microsoft/appcenter/AbstractAppCenterService;->applyEnabledState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    monitor-exit v17

    return-void

    .line 214
    :cond_1
    move-object v9, v3

    move-object v10, v7

    :try_start_1
    invoke-interface {v9, v10}, Lcom/microsoft/appcenter/channel/Channel;->clear(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 202
    .end local v7    # "groupName":Ljava/lang/String;
    .end local v8    # "enabled":Z
    :catchall_0
    move-exception v1

    monitor-exit v17

    .end local v1    # "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    throw v1
.end method

.method public final declared-synchronized onStarting(Lcom/microsoft/appcenter/AppCenterHandler;)V
    .locals 5
    .param p1    # Lcom/microsoft/appcenter/AppCenterHandler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    move-object v1, p1

    .local v1, "handler":Lcom/microsoft/appcenter/AppCenterHandler;
    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    move-object v3, v1

    :try_start_0
    iput-object v3, v2, Lcom/microsoft/appcenter/AbstractAppCenterService;->mHandler:Lcom/microsoft/appcenter/AppCenterHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit v4

    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    throw v0
.end method

.method protected declared-synchronized post(Ljava/lang/Runnable;)V
    .locals 7

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    move-object v1, p1

    .local v1, "runnable":Ljava/lang/Runnable;
    move-object v6, p0

    monitor-enter v6

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, v3, v4, v5}, Lcom/microsoft/appcenter/AbstractAppCenterService;->post(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 296
    monitor-exit v6

    return-void

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    throw v0
.end method

.method protected declared-synchronized post(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)Z
    .locals 12

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    move-object v1, p1

    .local v1, "runnable":Ljava/lang/Runnable;
    move-object v2, p2

    .local v2, "coreDisabledRunnable":Ljava/lang/Runnable;
    move-object v3, p3

    .local v3, "serviceDisabledRunnable":Ljava/lang/Runnable;
    move-object v10, p0

    monitor-enter v10

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/microsoft/appcenter/AbstractAppCenterService;->mHandler:Lcom/microsoft/appcenter/AppCenterHandler;

    if-nez v4, :cond_0

    .line 308
    const-string/jumbo v4, "AppCenter"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    invoke-virtual {v6}, Lcom/microsoft/appcenter/AbstractAppCenterService;->getServiceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " needs to be started before it can be used."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    const/4 v4, 0x0

    move v0, v4

    .line 324
    .end local v0    # "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    :goto_0
    monitor-exit v10

    return v0

    .line 311
    .restart local v0    # "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    :cond_0
    move-object v4, v0

    :try_start_1
    iget-object v4, v4, Lcom/microsoft/appcenter/AbstractAppCenterService;->mHandler:Lcom/microsoft/appcenter/AppCenterHandler;

    new-instance v5, Lcom/microsoft/appcenter/AbstractAppCenterService$4;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    move-object v8, v1

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Lcom/microsoft/appcenter/AbstractAppCenterService$4;-><init>(Lcom/microsoft/appcenter/AbstractAppCenterService;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Lcom/microsoft/appcenter/AppCenterHandler;->post(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit v10

    .end local v0    # "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    throw v0
.end method

.method protected declared-synchronized postAsyncGetter(Ljava/lang/Runnable;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;Ljava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    move-object v1, p1

    .local v1, "runnable":Ljava/lang/Runnable;
    move-object v2, p2

    .local v2, "future":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<TT;>;"
    move-object v3, p3

    .local v3, "valueIfDisabledOrNotStarted":Ljava/lang/Object;, "TT;"
    move-object v10, p0

    monitor-enter v10

    :try_start_0
    new-instance v5, Lcom/microsoft/appcenter/AbstractAppCenterService$5;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Lcom/microsoft/appcenter/AbstractAppCenterService$5;-><init>(Lcom/microsoft/appcenter/AbstractAppCenterService;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;Ljava/lang/Object;)V

    move-object v4, v5

    .line 346
    .local v4, "disabledOrNotStartedRunnable":Ljava/lang/Runnable;
    move-object v5, v0

    new-instance v6, Lcom/microsoft/appcenter/AbstractAppCenterService$6;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Lcom/microsoft/appcenter/AbstractAppCenterService$6;-><init>(Lcom/microsoft/appcenter/AbstractAppCenterService;Ljava/lang/Runnable;)V

    move-object v7, v4

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lcom/microsoft/appcenter/AbstractAppCenterService;->post(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 355
    move-object v5, v4

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    :cond_0
    monitor-exit v10

    return-void

    .line 337
    .end local v4    # "disabledOrNotStartedRunnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception v0

    monitor-exit v10

    .end local v0    # "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    throw v0
.end method

.method protected declared-synchronized postOnUiThread(Ljava/lang/Runnable;)V
    .locals 9

    .prologue
    .line 375
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    move-object v1, p1

    .local v1, "runnable":Ljava/lang/Runnable;
    move-object v7, p0

    monitor-enter v7

    move-object v2, v0

    :try_start_0
    new-instance v3, Lcom/microsoft/appcenter/AbstractAppCenterService$7;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/microsoft/appcenter/AbstractAppCenterService$7;-><init>(Lcom/microsoft/appcenter/AbstractAppCenterService;Ljava/lang/Runnable;)V

    new-instance v4, Lcom/microsoft/appcenter/AbstractAppCenterService$8;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/microsoft/appcenter/AbstractAppCenterService$8;-><init>(Lcom/microsoft/appcenter/AbstractAppCenterService;)V

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/microsoft/appcenter/AbstractAppCenterService;->post(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 397
    monitor-exit v7

    return-void

    .line 375
    :catchall_0
    move-exception v0

    monitor-exit v7

    .end local v0    # "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    throw v0
.end method

.method public declared-synchronized setInstanceEnabled(Z)V
    .locals 13
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    move v1, p1

    .local v1, "enabled":Z
    move-object v11, p0

    monitor-enter v11

    move v3, v1

    move-object v4, v0

    :try_start_0
    invoke-virtual {v4}, Lcom/microsoft/appcenter/AbstractAppCenterService;->isInstanceEnabled()Z

    move-result v4

    if-ne v3, v4, :cond_1

    .line 146
    move-object v3, v0

    invoke-virtual {v3}, Lcom/microsoft/appcenter/AbstractAppCenterService;->getLoggerTag()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "%s service has already been %s."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const/4 v7, 0x0

    move-object v8, v0

    invoke-virtual {v8}, Lcom/microsoft/appcenter/AbstractAppCenterService;->getServiceName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const/4 v7, 0x1

    move v8, v1

    if-eqz v8, :cond_0

    const-string/jumbo v8, "enabled"

    :goto_0
    aput-object v8, v6, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .line 176
    :goto_1
    monitor-exit v11

    return-void

    .line 146
    :cond_0
    :try_start_1
    const-string/jumbo v8, "disabled"

    goto :goto_0

    .line 151
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Lcom/microsoft/appcenter/AbstractAppCenterService;->getGroupName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 152
    .local v2, "groupName":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/AbstractAppCenterService;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    if-eqz v3, :cond_2

    move-object v3, v2

    if-eqz v3, :cond_2

    .line 155
    move v3, v1

    if-eqz v3, :cond_4

    .line 156
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/AbstractAppCenterService;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v4, v2

    move-object v5, v0

    invoke-virtual {v5}, Lcom/microsoft/appcenter/AbstractAppCenterService;->getTriggerCount()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Lcom/microsoft/appcenter/AbstractAppCenterService;->getTriggerInterval()J

    move-result-wide v6

    move-object v8, v0

    invoke-virtual {v8}, Lcom/microsoft/appcenter/AbstractAppCenterService;->getTriggerMaxParallelRequests()I

    move-result v8

    const/4 v9, 0x0

    move-object v10, v0

    invoke-virtual {v10}, Lcom/microsoft/appcenter/AbstractAppCenterService;->getChannelListener()Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    move-result-object v10

    invoke-interface/range {v3 .. v10}, Lcom/microsoft/appcenter/channel/Channel;->addGroup(Ljava/lang/String;IJILcom/microsoft/appcenter/ingestion/Ingestion;Lcom/microsoft/appcenter/channel/Channel$GroupListener;)V

    .line 167
    :cond_2
    :goto_2
    move-object v3, v0

    invoke-virtual {v3}, Lcom/microsoft/appcenter/AbstractAppCenterService;->getEnabledPreferenceKey()Ljava/lang/String;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->putBoolean(Ljava/lang/String;Z)V

    .line 168
    move-object v3, v0

    invoke-virtual {v3}, Lcom/microsoft/appcenter/AbstractAppCenterService;->getLoggerTag()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "%s service has been %s."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const/4 v7, 0x0

    move-object v8, v0

    invoke-virtual {v8}, Lcom/microsoft/appcenter/AbstractAppCenterService;->getServiceName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const/4 v7, 0x1

    move v8, v1

    if-eqz v8, :cond_5

    const-string/jumbo v8, "enabled"

    :goto_3
    aput-object v8, v6, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/AbstractAppCenterService;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    if-eqz v3, :cond_3

    .line 174
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/AbstractAppCenterService;->applyEnabledState(Z)V

    .line 176
    :cond_3
    goto :goto_1

    .line 161
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/AbstractAppCenterService;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/microsoft/appcenter/channel/Channel;->clear(Ljava/lang/String;)V

    .line 162
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/AbstractAppCenterService;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/microsoft/appcenter/channel/Channel;->removeGroup(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 145
    .end local v2    # "groupName":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v11

    .end local v0    # "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    throw v0

    .line 168
    .restart local v0    # "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    .restart local v2    # "groupName":Ljava/lang/String;
    :cond_5
    :try_start_2
    const-string/jumbo v8, "disabled"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method protected final declared-synchronized setInstanceEnabledAsync(Z)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 12
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
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    move v1, p1

    .local v1, "enabled":Z
    move-object v10, p0

    monitor-enter v10

    :try_start_0
    new-instance v5, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;-><init>()V

    move-object v2, v5

    .line 113
    .local v2, "future":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<Ljava/lang/Void;>;"
    new-instance v5, Lcom/microsoft/appcenter/AbstractAppCenterService$2;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lcom/microsoft/appcenter/AbstractAppCenterService$2;-><init>(Lcom/microsoft/appcenter/AbstractAppCenterService;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)V

    move-object v3, v5

    .line 121
    .local v3, "coreDisabledRunnable":Ljava/lang/Runnable;
    new-instance v5, Lcom/microsoft/appcenter/AbstractAppCenterService$3;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    move v8, v1

    move-object v9, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/microsoft/appcenter/AbstractAppCenterService$3;-><init>(Lcom/microsoft/appcenter/AbstractAppCenterService;ZLcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)V

    move-object v4, v5

    .line 129
    .local v4, "runnable":Ljava/lang/Runnable;
    move-object v5, v0

    move-object v6, v4

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lcom/microsoft/appcenter/AbstractAppCenterService;->post(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 130
    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->complete(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_0
    move-object v5, v2

    move-object v0, v5

    .end local v0    # "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    monitor-exit v10

    return-object v0

    .line 112
    .end local v2    # "future":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<Ljava/lang/Void;>;"
    .end local v3    # "coreDisabledRunnable":Ljava/lang/Runnable;
    .end local v4    # "runnable":Ljava/lang/Runnable;
    .restart local v0    # "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    :catchall_0
    move-exception v0

    monitor-exit v10

    .end local v0    # "this":Lcom/microsoft/appcenter/AbstractAppCenterService;
    throw v0
.end method
