.class public Lcom/microsoft/appcenter/channel/DefaultChannel;
.super Ljava/lang/Object;
.source "DefaultChannel.java"

# interfaces
.implements Lcom/microsoft/appcenter/channel/Channel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
    }
.end annotation


# static fields
.field static final CLEAR_BATCH_SIZE:I = 0x64
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final MINIMUM_TRANSMISSION_INTERVAL:J = 0xbb8L

.field static final START_TIMER_PREFIX:Ljava/lang/String; = "startTimerPrefix."
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mAppCenterHandler:Landroid/os/Handler;

.field private mAppSecret:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mDevice:Lcom/microsoft/appcenter/ingestion/models/Device;

.field private mDiscardLogs:Z

.field private mEnabled:Z

.field private final mGroupStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;",
            ">;"
        }
    .end annotation
.end field

.field private final mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

.field private final mIngestions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/microsoft/appcenter/ingestion/Ingestion;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstallId:Ljava/util/UUID;

.field private final mListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/microsoft/appcenter/channel/Channel$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPersistence:Lcom/microsoft/appcenter/persistence/Persistence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;Lcom/microsoft/appcenter/http/HttpClient;Landroid/os/Handler;)V
    .locals 15
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/microsoft/appcenter/http/HttpClient;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/DefaultChannel;
    move-object/from16 v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object/from16 v2, p2

    .local v2, "appSecret":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "logSerializer":Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;
    move-object/from16 v4, p4

    .local v4, "httpClient":Lcom/microsoft/appcenter/http/HttpClient;
    move-object/from16 v5, p5

    .local v5, "appCenterHandler":Landroid/os/Handler;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v1

    move-object v10, v3

    invoke-static {v9, v10}, Lcom/microsoft/appcenter/channel/DefaultChannel;->buildDefaultPersistence(Landroid/content/Context;Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;)Lcom/microsoft/appcenter/persistence/Persistence;

    move-result-object v9

    new-instance v10, Lcom/microsoft/appcenter/ingestion/AppCenterIngestion;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v4

    move-object v13, v3

    invoke-direct {v11, v12, v13}, Lcom/microsoft/appcenter/ingestion/AppCenterIngestion;-><init>(Lcom/microsoft/appcenter/http/HttpClient;Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;)V

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/microsoft/appcenter/channel/DefaultChannel;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/microsoft/appcenter/persistence/Persistence;Lcom/microsoft/appcenter/ingestion/Ingestion;Landroid/os/Handler;)V

    .line 147
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/microsoft/appcenter/persistence/Persistence;Lcom/microsoft/appcenter/ingestion/Ingestion;Landroid/os/Handler;)V
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/microsoft/appcenter/persistence/Persistence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/microsoft/appcenter/ingestion/Ingestion;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/DefaultChannel;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "appSecret":Ljava/lang/String;
    move-object v3, p3

    .local v3, "persistence":Lcom/microsoft/appcenter/persistence/Persistence;
    move-object v4, p4

    .local v4, "ingestion":Lcom/microsoft/appcenter/ingestion/Ingestion;
    move-object v5, p5

    .local v5, "appCenterHandler":Landroid/os/Handler;
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 160
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/microsoft/appcenter/channel/DefaultChannel;->mContext:Landroid/content/Context;

    .line 161
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/microsoft/appcenter/channel/DefaultChannel;->mAppSecret:Ljava/lang/String;

    .line 162
    move-object v6, v0

    invoke-static {}, Lcom/microsoft/appcenter/utils/IdHelper;->getInstallId()Ljava/util/UUID;

    move-result-object v7

    iput-object v7, v6, Lcom/microsoft/appcenter/channel/DefaultChannel;->mInstallId:Ljava/util/UUID;

    .line 163
    move-object v6, v0

    new-instance v7, Ljava/util/HashMap;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v6, Lcom/microsoft/appcenter/channel/DefaultChannel;->mGroupStates:Ljava/util/Map;

    .line 164
    move-object v6, v0

    new-instance v7, Ljava/util/LinkedHashSet;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v7, v6, Lcom/microsoft/appcenter/channel/DefaultChannel;->mListeners:Ljava/util/Collection;

    .line 165
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lcom/microsoft/appcenter/channel/DefaultChannel;->mPersistence:Lcom/microsoft/appcenter/persistence/Persistence;

    .line 166
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lcom/microsoft/appcenter/channel/DefaultChannel;->mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

    .line 167
    move-object v6, v0

    new-instance v7, Ljava/util/HashSet;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    iput-object v7, v6, Lcom/microsoft/appcenter/channel/DefaultChannel;->mIngestions:Ljava/util/Set;

    .line 168
    move-object v6, v0

    iget-object v6, v6, Lcom/microsoft/appcenter/channel/DefaultChannel;->mIngestions:Ljava/util/Set;

    move-object v7, v0

    iget-object v7, v7, Lcom/microsoft/appcenter/channel/DefaultChannel;->mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 169
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lcom/microsoft/appcenter/channel/DefaultChannel;->mAppCenterHandler:Landroid/os/Handler;

    .line 170
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/microsoft/appcenter/channel/DefaultChannel;->mEnabled:Z

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/appcenter/channel/DefaultChannel;Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/channel/DefaultChannel;
    move-object v1, p1

    .local v1, "x1":Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
    move-object v2, p2

    .local v2, "x2":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/microsoft/appcenter/channel/DefaultChannel;->handleSendingSuccess(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/microsoft/appcenter/channel/DefaultChannel;)Landroid/os/Handler;
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/channel/DefaultChannel;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/channel/DefaultChannel;->mAppCenterHandler:Landroid/os/Handler;

    move-object v0, v1

    .end local v0    # "x0":Lcom/microsoft/appcenter/channel/DefaultChannel;
    return-object v0
.end method

.method static synthetic access$200(Lcom/microsoft/appcenter/channel/DefaultChannel;Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 8

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/channel/DefaultChannel;
    move-object v1, p1

    .local v1, "x1":Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
    move-object v2, p2

    .local v2, "x2":Ljava/lang/String;
    move-object v3, p3

    .local v3, "x3":Ljava/lang/Exception;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/microsoft/appcenter/channel/DefaultChannel;->handleSendingFailure(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$300(Lcom/microsoft/appcenter/channel/DefaultChannel;Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;I)V
    .locals 6

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/channel/DefaultChannel;
    move-object v1, p1

    .local v1, "x1":Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
    move v2, p2

    .local v2, "x2":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lcom/microsoft/appcenter/channel/DefaultChannel;->checkPendingLogsAfterPost(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/microsoft/appcenter/channel/DefaultChannel;Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V
    .locals 4

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/channel/DefaultChannel;
    move-object v1, p1

    .local v1, "x1":Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/microsoft/appcenter/channel/DefaultChannel;->triggerIngestion(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    return-void
.end method

.method private static buildDefaultPersistence(Landroid/content/Context;Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;)Lcom/microsoft/appcenter/persistence/Persistence;
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "logSerializer":Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;
    new-instance v3, Lcom/microsoft/appcenter/persistence/DatabasePersistence;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;-><init>(Landroid/content/Context;)V

    move-object v2, v3

    .line 178
    .local v2, "persistence":Lcom/microsoft/appcenter/persistence/Persistence;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/persistence/Persistence;->setLogSerializer(Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;)V

    .line 179
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method private checkPendingLogsAfterPost(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;I)V
    .locals 6
    .param p1    # Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 549
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/DefaultChannel;
    move-object v1, p1

    .local v1, "groupState":Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
    move v2, p2

    .local v2, "currentState":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lcom/microsoft/appcenter/channel/DefaultChannel;->checkStateDidNotChange(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 550
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/channel/DefaultChannel;->checkPendingLogs(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    .line 552
    :cond_0
    return-void
.end method

.method private checkStateDidNotChange(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;I)Z
    .locals 6

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/DefaultChannel;
    move-object v1, p1

    .local v1, "groupState":Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
    move v2, p2

    .local v2, "stateSnapshot":I
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/microsoft/appcenter/channel/DefaultChannel;->mCurrentState:I

    if-ne v3, v4, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/channel/DefaultChannel;->mGroupStates:Ljava/util/Map;

    move-object v5, v1

    iget-object v5, v5, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lcom/microsoft/appcenter/channel/DefaultChannel;
    return v0

    .restart local v0    # "this":Lcom/microsoft/appcenter/channel/DefaultChannel;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private deleteLogsOnSuspended(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V
    .locals 11

    .prologue
    .line 427
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/DefaultChannel;
    move-object v1, p1

    .local v1, "groupState":Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
    new-instance v5, Ljava/util/ArrayList;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v5

    .line 428
    .local v2, "logs":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/appcenter/ingestion/models/Log;>;"
    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/channel/DefaultChannel;->mPersistence:Lcom/microsoft/appcenter/persistence/Persistence;

    move-object v6, v1

    iget-object v6, v6, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    const/16 v8, 0x64

    move-object v9, v2

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/microsoft/appcenter/persistence/Persistence;->getLogs(Ljava/lang/String;Ljava/util/Collection;ILjava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 429
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    move-object v5, v1

    iget-object v5, v5, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    if-eqz v5, :cond_0

    .line 430
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/microsoft/appcenter/ingestion/models/Log;

    move-object v4, v5

    .line 431
    .local v4, "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    move-object v5, v1

    iget-object v5, v5, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    move-object v6, v4

    invoke-interface {v5, v6}, Lcom/microsoft/appcenter/channel/Channel$GroupListener;->onBeforeSending(Lcom/microsoft/appcenter/ingestion/models/Log;)V

    .line 432
    move-object v5, v1

    iget-object v5, v5, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    move-object v6, v4

    new-instance v7, Lcom/microsoft/appcenter/CancellationException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Lcom/microsoft/appcenter/CancellationException;-><init>()V

    invoke-interface {v5, v6, v7}, Lcom/microsoft/appcenter/channel/Channel$GroupListener;->onFailure(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/Exception;)V

    .line 433
    goto :goto_0

    .line 435
    .end local v4    # "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    :cond_0
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x64

    if-lt v5, v6, :cond_1

    move-object v5, v1

    iget-object v5, v5, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    if-eqz v5, :cond_1

    .line 436
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/microsoft/appcenter/channel/DefaultChannel;->deleteLogsOnSuspended(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    .line 440
    :goto_1
    return-void

    .line 438
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/channel/DefaultChannel;->mPersistence:Lcom/microsoft/appcenter/persistence/Persistence;

    move-object v6, v1

    iget-object v6, v6, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/persistence/Persistence;->deleteLogs(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleSendingFailure(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 14
    .param p1    # Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 584
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/DefaultChannel;
    move-object v1, p1

    .local v1, "groupState":Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
    move-object/from16 v2, p2

    .local v2, "batchId":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "e":Ljava/lang/Exception;
    move-object v10, v1

    iget-object v10, v10, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    move-object v4, v10

    .line 585
    .local v4, "groupName":Ljava/lang/String;
    move-object v10, v1

    iget-object v10, v10, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mSendingBatches:Ljava/util/Map;

    move-object v11, v2

    invoke-interface {v10, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    move-object v5, v10

    .line 586
    .local v5, "removedLogsForBatchId":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/appcenter/ingestion/models/Log;>;"
    move-object v10, v5

    if-eqz v10, :cond_1

    .line 587
    const-string/jumbo v10, "AppCenter"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Sending logs groupName="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " failed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v12, v3

    invoke-static {v10, v11, v12}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 588
    move-object v10, v3

    invoke-static {v10}, Lcom/microsoft/appcenter/http/HttpUtils;->isRecoverableError(Ljava/lang/Throwable;)Z

    move-result v10

    move v6, v10

    .line 589
    .local v6, "recoverableError":Z
    move v10, v6

    if-eqz v10, :cond_2

    .line 590
    move-object v10, v1

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    iget v11, v11, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    move-object v12, v5

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    add-int/2addr v11, v12

    iput v11, v10, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    .line 599
    :cond_0
    move-object v10, v0

    move v11, v6

    if-nez v11, :cond_3

    const/4 v11, 0x1

    :goto_0
    move-object v12, v3

    invoke-direct {v10, v11, v12}, Lcom/microsoft/appcenter/channel/DefaultChannel;->suspend(ZLjava/lang/Exception;)V

    .line 601
    .end local v6    # "recoverableError":Z
    :cond_1
    return-void

    .line 592
    .restart local v6    # "recoverableError":Z
    :cond_2
    move-object v10, v1

    iget-object v10, v10, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    move-object v7, v10

    .line 593
    .local v7, "groupListener":Lcom/microsoft/appcenter/channel/Channel$GroupListener;
    move-object v10, v7

    if-eqz v10, :cond_0

    .line 594
    move-object v10, v5

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v8, v10

    :goto_1
    move-object v10, v8

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v10, v8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/microsoft/appcenter/ingestion/models/Log;

    move-object v9, v10

    .line 595
    .local v9, "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    move-object v10, v7

    move-object v11, v9

    move-object v12, v3

    invoke-interface {v10, v11, v12}, Lcom/microsoft/appcenter/channel/Channel$GroupListener;->onFailure(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/Exception;)V

    .line 596
    goto :goto_1

    .line 599
    .end local v7    # "groupListener":Lcom/microsoft/appcenter/channel/Channel$GroupListener;
    .end local v9    # "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    :cond_3
    const/4 v11, 0x0

    goto :goto_0
.end method

.method private handleSendingSuccess(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;Ljava/lang/String;)V
    .locals 10
    .param p1    # Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 561
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/DefaultChannel;
    move-object v1, p1

    .local v1, "groupState":Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
    move-object v2, p2

    .local v2, "batchId":Ljava/lang/String;
    move-object v7, v1

    iget-object v7, v7, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mSendingBatches:Ljava/util/Map;

    move-object v8, v2

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    move-object v3, v7

    .line 562
    .local v3, "removedLogsForBatchId":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/appcenter/ingestion/models/Log;>;"
    move-object v7, v3

    if-eqz v7, :cond_1

    .line 563
    move-object v7, v0

    iget-object v7, v7, Lcom/microsoft/appcenter/channel/DefaultChannel;->mPersistence:Lcom/microsoft/appcenter/persistence/Persistence;

    move-object v8, v1

    iget-object v8, v8, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Lcom/microsoft/appcenter/persistence/Persistence;->deleteLogs(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    move-object v7, v1

    iget-object v7, v7, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    move-object v4, v7

    .line 565
    .local v4, "groupListener":Lcom/microsoft/appcenter/channel/Channel$GroupListener;
    move-object v7, v4

    if-eqz v7, :cond_0

    .line 566
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    :goto_0
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/microsoft/appcenter/ingestion/models/Log;

    move-object v6, v7

    .line 567
    .local v6, "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    move-object v7, v4

    move-object v8, v6

    invoke-interface {v7, v8}, Lcom/microsoft/appcenter/channel/Channel$GroupListener;->onSuccess(Lcom/microsoft/appcenter/ingestion/models/Log;)V

    .line 568
    goto :goto_0

    .line 570
    .end local v6    # "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    :cond_0
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Lcom/microsoft/appcenter/channel/DefaultChannel;->checkPendingLogs(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    .line 572
    .end local v4    # "groupListener":Lcom/microsoft/appcenter/channel/Channel$GroupListener;
    :cond_1
    return-void
.end method

.method private resolveCustomTriggerInterval(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)Ljava/lang/Long;
    .locals 13
    .param p1    # Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 750
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/DefaultChannel;
    move-object v1, p1

    .local v1, "groupState":Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-wide v2, v6

    .line 751
    .local v2, "now":J
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startTimerPrefix."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    iget-object v7, v7, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    move-wide v4, v6

    .line 752
    .local v4, "startTimer":J
    move-object v6, v1

    iget v6, v6, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    if-lez v6, :cond_2

    .line 755
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    move-wide v6, v4

    move-wide v8, v2

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 756
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startTimerPrefix."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    iget-object v7, v7, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-wide v7, v2

    invoke-static {v6, v7, v8}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->putLong(Ljava/lang/String;J)V

    .line 757
    const-string/jumbo v6, "AppCenter"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "The timer value for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    iget-object v8, v8, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " has been saved."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    move-object v6, v1

    iget-wide v6, v6, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mBatchTimeInterval:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v0, v6

    .line 770
    .end local v0    # "this":Lcom/microsoft/appcenter/channel/DefaultChannel;
    :goto_0
    return-object v0

    .line 762
    .restart local v0    # "this":Lcom/microsoft/appcenter/channel/DefaultChannel;
    :cond_1
    move-object v6, v1

    iget-wide v6, v6, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mBatchTimeInterval:J

    move-wide v8, v2

    move-wide v10, v4

    sub-long/2addr v8, v10

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 766
    :cond_2
    move-wide v6, v4

    move-object v8, v1

    iget-wide v8, v8, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mBatchTimeInterval:J

    add-long/2addr v6, v8

    move-wide v8, v2

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    .line 767
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startTimerPrefix."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    iget-object v7, v7, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->remove(Ljava/lang/String;)V

    .line 768
    const-string/jumbo v6, "AppCenter"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "The timer for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    iget-object v8, v8, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " channel finished."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    :cond_3
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method

.method private resolveDefaultTriggerInterval(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)Ljava/lang/Long;
    .locals 4
    .param p1    # Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 775
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/DefaultChannel;
    move-object v1, p1

    .local v1, "groupState":Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
    move-object v2, v1

    iget v2, v2, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    move-object v3, v1

    iget v3, v3, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mMaxLogsPerBatch:I

    if-lt v2, v3, :cond_0

    .line 776
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v0, v2

    .line 778
    .end local v0    # "this":Lcom/microsoft/appcenter/channel/DefaultChannel;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/microsoft/appcenter/channel/DefaultChannel;
    :cond_0
    move-object v2, v1

    iget v2, v2, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    if-lez v2, :cond_1

    move-object v2, v1

    iget-wide v2, v2, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mBatchTimeInterval:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_1
    move-object v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private resolveTriggerInterval(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)Ljava/lang/Long;
    .locals 6
    .param p1    # Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 741
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/DefaultChannel;
    move-object v1, p1

    .local v1, "groupState":Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
    move-object v2, v1

    iget-wide v2, v2, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mBatchTimeInterval:J

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 742
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/microsoft/appcenter/channel/DefaultChannel;->resolveCustomTriggerInterval(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)Ljava/lang/Long;

    move-result-object v2

    move-object v0, v2

    .line 744
    .end local v0    # "this":Lcom/microsoft/appcenter/channel/DefaultChannel;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/microsoft/appcenter/channel/DefaultChannel;
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/microsoft/appcenter/channel/DefaultChannel;->resolveDefaultTriggerInterval(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)Ljava/lang/Long;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method private sendLogs(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;ILjava/util/List;Ljava/lang/String;)V
    .locals 16
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/appcenter/ingestion/models/Log;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 511
    move-object/from16 v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/DefaultChannel;
    move-object/from16 v1, p1

    .local v1, "groupState":Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
    move/from16 v2, p2

    .local v2, "currentState":I
    move-object/from16 v3, p3

    .local v3, "batch":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/appcenter/ingestion/models/Log;>;"
    move-object/from16 v4, p4

    .local v4, "batchId":Ljava/lang/String;
    new-instance v6, Lcom/microsoft/appcenter/ingestion/models/LogContainer;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    invoke-direct {v7}, Lcom/microsoft/appcenter/ingestion/models/LogContainer;-><init>()V

    move-object v5, v6

    .line 512
    .local v5, "logContainer":Lcom/microsoft/appcenter/ingestion/models/LogContainer;
    move-object v6, v5

    move-object v7, v3

    invoke-virtual {v6, v7}, Lcom/microsoft/appcenter/ingestion/models/LogContainer;->setLogs(Ljava/util/List;)V

    .line 513
    move-object v6, v1

    iget-object v6, v6, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

    move-object v7, v0

    iget-object v7, v7, Lcom/microsoft/appcenter/channel/DefaultChannel;->mAppSecret:Ljava/lang/String;

    move-object v8, v0

    iget-object v8, v8, Lcom/microsoft/appcenter/channel/DefaultChannel;->mInstallId:Ljava/util/UUID;

    move-object v9, v5

    new-instance v10, Lcom/microsoft/appcenter/channel/DefaultChannel$1;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    move-object v13, v1

    move-object v14, v4

    invoke-direct {v11, v12, v13, v14}, Lcom/microsoft/appcenter/channel/DefaultChannel$1;-><init>(Lcom/microsoft/appcenter/channel/DefaultChannel;Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;Ljava/lang/String;)V

    invoke-interface {v6, v7, v8, v9, v10}, Lcom/microsoft/appcenter/ingestion/Ingestion;->sendAsync(Ljava/lang/String;Ljava/util/UUID;Lcom/microsoft/appcenter/ingestion/models/LogContainer;Lcom/microsoft/appcenter/http/ServiceCallback;)Lcom/microsoft/appcenter/http/ServiceCall;

    move-result-object v6

    .line 539
    move-object v6, v0

    iget-object v6, v6, Lcom/microsoft/appcenter/channel/DefaultChannel;->mAppCenterHandler:Landroid/os/Handler;

    new-instance v7, Lcom/microsoft/appcenter/channel/DefaultChannel$2;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    move-object v9, v0

    move-object v10, v1

    move v11, v2

    invoke-direct {v8, v9, v10, v11}, Lcom/microsoft/appcenter/channel/DefaultChannel$2;-><init>(Lcom/microsoft/appcenter/channel/DefaultChannel;Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;I)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v6

    .line 546
    return-void
.end method

.method private suspend(ZLjava/lang/Exception;)V
    .locals 14

    .prologue
    .line 390
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/DefaultChannel;
    move v1, p1

    .local v1, "deleteLogs":Z
    move-object/from16 v2, p2

    .local v2, "exception":Ljava/lang/Exception;
    move-object v10, v0

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/microsoft/appcenter/channel/DefaultChannel;->mEnabled:Z

    .line 391
    move-object v10, v0

    move v11, v1

    iput-boolean v11, v10, Lcom/microsoft/appcenter/channel/DefaultChannel;->mDiscardLogs:Z

    .line 392
    move-object v10, v0

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    iget v11, v11, Lcom/microsoft/appcenter/channel/DefaultChannel;->mCurrentState:I

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lcom/microsoft/appcenter/channel/DefaultChannel;->mCurrentState:I

    .line 393
    move-object v10, v0

    iget-object v10, v10, Lcom/microsoft/appcenter/channel/DefaultChannel;->mGroupStates:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v3, v10

    :goto_0
    move-object v10, v3

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v10, v3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;

    move-object v4, v10

    .line 394
    .local v4, "groupState":Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
    move-object v10, v0

    move-object v11, v4

    invoke-virtual {v10, v11}, Lcom/microsoft/appcenter/channel/DefaultChannel;->cancelTimer(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    .line 397
    move-object v10, v4

    iget-object v10, v10, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mSendingBatches:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v5, v10

    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/microsoft/appcenter/ingestion/models/Log;>;>;>;"
    :goto_1
    move-object v10, v5

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 398
    move-object v10, v5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    move-object v6, v10

    .line 399
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/microsoft/appcenter/ingestion/models/Log;>;>;"
    move-object v10, v5

    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    .line 400
    move v10, v1

    if-eqz v10, :cond_0

    .line 401
    move-object v10, v4

    iget-object v10, v10, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    move-object v7, v10

    .line 402
    .local v7, "groupListener":Lcom/microsoft/appcenter/channel/Channel$GroupListener;
    move-object v10, v7

    if-eqz v10, :cond_0

    .line 403
    move-object v10, v6

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v8, v10

    :goto_2
    move-object v10, v8

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v10, v8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/microsoft/appcenter/ingestion/models/Log;

    move-object v9, v10

    .line 404
    .local v9, "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    move-object v10, v7

    move-object v11, v9

    move-object v12, v2

    invoke-interface {v10, v11, v12}, Lcom/microsoft/appcenter/channel/Channel$GroupListener;->onFailure(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/Exception;)V

    .line 405
    goto :goto_2

    .line 408
    .end local v7    # "groupListener":Lcom/microsoft/appcenter/channel/Channel$GroupListener;
    .end local v9    # "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    :cond_0
    goto :goto_1

    .line 409
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/microsoft/appcenter/ingestion/models/Log;>;>;"
    :cond_1
    goto :goto_0

    .line 410
    .end local v4    # "groupState":Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/microsoft/appcenter/ingestion/models/Log;>;>;>;"
    :cond_2
    move-object v10, v0

    iget-object v10, v10, Lcom/microsoft/appcenter/channel/DefaultChannel;->mIngestions:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v3, v10

    :goto_3
    move-object v10, v3

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v10, v3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/microsoft/appcenter/ingestion/Ingestion;

    move-object v4, v10

    .line 412
    .local v4, "ingestion":Lcom/microsoft/appcenter/ingestion/Ingestion;
    move-object v10, v4

    :try_start_0
    invoke-interface {v10}, Lcom/microsoft/appcenter/ingestion/Ingestion;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    .line 416
    :goto_4
    goto :goto_3

    .line 413
    :catch_0
    move-exception v10

    move-object v5, v10

    .line 414
    .local v5, "e":Ljava/io/IOException;
    const-string/jumbo v10, "AppCenter"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to close ingestion: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v12, v5

    invoke-static {v10, v11, v12}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 417
    .end local v4    # "ingestion":Lcom/microsoft/appcenter/ingestion/Ingestion;
    .end local v5    # "e":Ljava/io/IOException;
    :cond_3
    move v10, v1

    if-eqz v10, :cond_5

    .line 418
    move-object v10, v0

    iget-object v10, v10, Lcom/microsoft/appcenter/channel/DefaultChannel;->mGroupStates:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v3, v10

    :goto_5
    move-object v10, v3

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v10, v3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;

    move-object v4, v10

    .line 419
    .local v4, "groupState":Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
    move-object v10, v0

    move-object v11, v4

    invoke-direct {v10, v11}, Lcom/microsoft/appcenter/channel/DefaultChannel;->deleteLogsOnSuspended(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    .line 420
    goto :goto_5

    .line 424
    .end local v4    # "groupState":Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
    :cond_4
    :goto_6
    return-void

    .line 422
    :cond_5
    move-object v10, v0

    iget-object v10, v10, Lcom/microsoft/appcenter/channel/DefaultChannel;->mPersistence:Lcom/microsoft/appcenter/persistence/Persistence;

    invoke-virtual {v10}, Lcom/microsoft/appcenter/persistence/Persistence;->clearPendingLogState()V

    goto :goto_6
.end method

.method private triggerIngestion(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V
    .locals 14
    .param p1    # Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 460
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/DefaultChannel;
    move-object v1, p1

    .local v1, "groupState":Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
    move-object v8, v0

    iget-boolean v8, v8, Lcom/microsoft/appcenter/channel/DefaultChannel;->mEnabled:Z

    if-nez v8, :cond_0

    .line 461
    .line 497
    :goto_0
    return-void

    .line 463
    :cond_0
    move-object v8, v1

    iget v8, v8, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    move v2, v8

    .line 464
    .local v2, "pendingLogCount":I
    move v8, v2

    move-object v9, v1

    iget v9, v9, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mMaxLogsPerBatch:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v3, v8

    .line 465
    .local v3, "maxFetch":I
    const-string/jumbo v8, "AppCenter"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "triggerIngestion("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    iget-object v10, v10, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ") pendingLogCount="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Lcom/microsoft/appcenter/channel/DefaultChannel;->cancelTimer(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    .line 469
    move-object v8, v1

    iget-object v8, v8, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mSendingBatches:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    move-object v9, v1

    iget v9, v9, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mMaxParallelBatches:I

    if-ne v8, v9, :cond_1

    .line 470
    const-string/jumbo v8, "AppCenter"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Already sending "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    iget v10, v10, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mMaxParallelBatches:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " batches of analytics data to the server."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    goto :goto_0

    .line 475
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move v10, v3

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v8

    .line 476
    .local v4, "batch":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/appcenter/ingestion/models/Log;>;"
    move-object v8, v0

    iget-object v8, v8, Lcom/microsoft/appcenter/channel/DefaultChannel;->mPersistence:Lcom/microsoft/appcenter/persistence/Persistence;

    move-object v9, v1

    iget-object v9, v9, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    move-object v10, v1

    iget-object v10, v10, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPausedTargetKeys:Ljava/util/Collection;

    move v11, v3

    move-object v12, v4

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/microsoft/appcenter/persistence/Persistence;->getLogs(Ljava/lang/String;Ljava/util/Collection;ILjava/util/List;)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 479
    .local v5, "batchId":Ljava/lang/String;
    move-object v8, v1

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    move v10, v3

    sub-int/2addr v9, v10

    iput v9, v8, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    .line 482
    move-object v8, v5

    if-nez v8, :cond_2

    .line 483
    goto/16 :goto_0

    .line 485
    :cond_2
    const-string/jumbo v8, "AppCenter"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ingestLogs("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    iget-object v10, v10, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ") pendingLogCount="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    iget v10, v10, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    move-object v8, v1

    iget-object v8, v8, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    if-eqz v8, :cond_3

    .line 489
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v6, v8

    :goto_1
    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/microsoft/appcenter/ingestion/models/Log;

    move-object v7, v8

    .line 490
    .local v7, "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    move-object v8, v1

    iget-object v8, v8, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    move-object v9, v7

    invoke-interface {v8, v9}, Lcom/microsoft/appcenter/channel/Channel$GroupListener;->onBeforeSending(Lcom/microsoft/appcenter/ingestion/models/Log;)V

    .line 491
    goto :goto_1

    .line 495
    .end local v7    # "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    :cond_3
    move-object v8, v1

    iget-object v8, v8, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mSendingBatches:Ljava/util/Map;

    move-object v9, v5

    move-object v10, v4

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 496
    move-object v8, v0

    move-object v9, v1

    move-object v10, v0

    iget v10, v10, Lcom/microsoft/appcenter/channel/DefaultChannel;->mCurrentState:I

    move-object v11, v4

    move-object v12, v5

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/microsoft/appcenter/channel/DefaultChannel;->sendLogs(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;ILjava/util/List;Ljava/lang/String;)V

    .line 497
    goto/16 :goto_0
.end method


# virtual methods
.method public addGroup(Ljava/lang/String;IJILcom/microsoft/appcenter/ingestion/Ingestion;Lcom/microsoft/appcenter/channel/Channel$GroupListener;)V
    .locals 23

    .prologue
    .line 223
    move-object/from16 v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/DefaultChannel;
    move-object/from16 v1, p1

    .local v1, "groupName":Ljava/lang/String;
    move/from16 v2, p2

    .local v2, "maxLogsPerBatch":I
    move-wide/from16 v3, p3

    .local v3, "batchTimeInterval":J
    move/from16 v5, p5

    .local v5, "maxParallelBatches":I
    move-object/from16 v6, p6

    .local v6, "ingestion":Lcom/microsoft/appcenter/ingestion/Ingestion;
    move-object/from16 v7, p7

    .local v7, "groupListener":Lcom/microsoft/appcenter/channel/Channel$GroupListener;
    const-string/jumbo v11, "AppCenter"

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "addGroup("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    move-object v11, v6

    if-nez v11, :cond_2

    move-object v11, v0

    iget-object v11, v11, Lcom/microsoft/appcenter/channel/DefaultChannel;->mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

    :goto_0
    move-object v6, v11

    .line 225
    move-object v11, v0

    iget-object v11, v11, Lcom/microsoft/appcenter/channel/DefaultChannel;->mIngestions:Ljava/util/Set;

    move-object v12, v6

    invoke-interface {v11, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 226
    new-instance v11, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;

    move-object/from16 v21, v11

    move-object/from16 v11, v21

    move-object/from16 v12, v21

    move-object v13, v0

    move-object v14, v1

    move v15, v2

    move-wide/from16 v16, v3

    move/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    invoke-direct/range {v12 .. v20}, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;-><init>(Lcom/microsoft/appcenter/channel/DefaultChannel;Ljava/lang/String;IJILcom/microsoft/appcenter/ingestion/Ingestion;Lcom/microsoft/appcenter/channel/Channel$GroupListener;)V

    move-object v8, v11

    .line 227
    .local v8, "groupState":Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
    move-object v11, v0

    iget-object v11, v11, Lcom/microsoft/appcenter/channel/DefaultChannel;->mGroupStates:Ljava/util/Map;

    move-object v12, v1

    move-object v13, v8

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 230
    move-object v11, v8

    move-object v12, v0

    iget-object v12, v12, Lcom/microsoft/appcenter/channel/DefaultChannel;->mPersistence:Lcom/microsoft/appcenter/persistence/Persistence;

    move-object v13, v1

    invoke-virtual {v12, v13}, Lcom/microsoft/appcenter/persistence/Persistence;->countLogs(Ljava/lang/String;)I

    move-result v12

    iput v12, v11, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    .line 237
    move-object v11, v0

    iget-object v11, v11, Lcom/microsoft/appcenter/channel/DefaultChannel;->mAppSecret:Ljava/lang/String;

    if-nez v11, :cond_0

    move-object v11, v0

    iget-object v11, v11, Lcom/microsoft/appcenter/channel/DefaultChannel;->mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

    move-object v12, v6

    if-eq v11, v12, :cond_1

    .line 240
    :cond_0
    move-object v11, v0

    move-object v12, v8

    invoke-virtual {v11, v12}, Lcom/microsoft/appcenter/channel/DefaultChannel;->checkPendingLogs(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    .line 244
    :cond_1
    move-object v11, v0

    iget-object v11, v11, Lcom/microsoft/appcenter/channel/DefaultChannel;->mListeners:Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v9, v11

    :goto_1
    move-object v11, v9

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    move-object v11, v9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/microsoft/appcenter/channel/Channel$Listener;

    move-object v10, v11

    .line 245
    .local v10, "listener":Lcom/microsoft/appcenter/channel/Channel$Listener;
    move-object v11, v10

    move-object v12, v1

    move-object v13, v7

    move-wide v14, v3

    invoke-interface {v11, v12, v13, v14, v15}, Lcom/microsoft/appcenter/channel/Channel$Listener;->onGroupAdded(Ljava/lang/String;Lcom/microsoft/appcenter/channel/Channel$GroupListener;J)V

    .line 246
    goto :goto_1

    .line 224
    .end local v8    # "groupState":Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
    .end local v10    # "listener":Lcom/microsoft/appcenter/channel/Channel$Listener;
    :cond_2
    move-object v11, v6

    goto :goto_0

    .line 247
    .restart local v8    # "groupState":Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
    :cond_3
    return-void
.end method

.method public addListener(Lcom/microsoft/appcenter/channel/Channel$Listener;)V
    .locals 4

    .prologue
    .line 788
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/DefaultChannel;
    move-object v1, p1

    .local v1, "listener":Lcom/microsoft/appcenter/channel/Channel$Listener;
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/channel/DefaultChannel;->mListeners:Ljava/util/Collection;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 789
    return-void
.end method

.method cancelTimer(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V
    .locals 5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 444
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/DefaultChannel;
    move-object v1, p1

    .local v1, "groupState":Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
    move-object v2, v1

    iget-boolean v2, v2, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mScheduled:Z

    if-eqz v2, :cond_0

    .line 445
    move-object v2, v1

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mScheduled:Z

    .line 446
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/channel/DefaultChannel;->mAppCenterHandler:Landroid/os/Handler;

    move-object v3, v1

    iget-object v3, v3, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 447
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startTimerPrefix."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    iget-object v3, v3, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->remove(Ljava/lang/String;)V

    .line 449
    :cond_0
    return-void
.end method

.method checkPendingLogs(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V
    .locals 12
    .param p1    # Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 710
    move-object v1, p0

    .local v1, "this":Lcom/microsoft/appcenter/channel/DefaultChannel;
    move-object v2, p1

    .local v2, "groupState":Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
    const-string/jumbo v4, "AppCenter"

    const-string/jumbo v5, "checkPendingLogs(%s) pendingLogCount=%s batchTimeInterval=%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    move-object v9, v2

    iget-object v9, v9, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    aput-object v9, v7, v8

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x1

    move-object v9, v2

    iget v9, v9, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    .line 711
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x2

    move-object v9, v2

    iget-wide v9, v9, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mBatchTimeInterval:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    .line 710
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    move-object v4, v1

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/microsoft/appcenter/channel/DefaultChannel;->resolveTriggerInterval(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)Ljava/lang/Long;

    move-result-object v4

    move-object v3, v4

    .line 715
    .local v3, "batchTimeInterval":Ljava/lang/Long;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v2

    iget-boolean v4, v4, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPaused:Z

    if-eqz v4, :cond_1

    .line 716
    .line 729
    :cond_0
    :goto_0
    return-void

    .line 720
    :cond_1
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 721
    move-object v4, v1

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/microsoft/appcenter/channel/DefaultChannel;->triggerIngestion(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    .line 729
    :cond_2
    :goto_1
    goto :goto_0

    .line 725
    :cond_3
    move-object v4, v2

    iget-boolean v4, v4, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mScheduled:Z

    if-nez v4, :cond_2

    .line 726
    move-object v4, v2

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mScheduled:Z

    .line 727
    move-object v4, v1

    iget-object v4, v4, Lcom/microsoft/appcenter/channel/DefaultChannel;->mAppCenterHandler:Landroid/os/Handler;

    move-object v5, v2

    iget-object v5, v5, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mRunnable:Ljava/lang/Runnable;

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v4

    goto :goto_1
.end method

.method public clear(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 366
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/DefaultChannel;
    move-object v1, p1

    .local v1, "groupName":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/channel/DefaultChannel;->mGroupStates:Ljava/util/Map;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 367
    .line 376
    :goto_0
    return-void

    .line 369
    :cond_0
    const-string/jumbo v4, "AppCenter"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "clear("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/channel/DefaultChannel;->mPersistence:Lcom/microsoft/appcenter/persistence/Persistence;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/microsoft/appcenter/persistence/Persistence;->deleteLogs(Ljava/lang/String;)V

    .line 373
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/channel/DefaultChannel;->mListeners:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/appcenter/channel/Channel$Listener;

    move-object v3, v4

    .line 374
    .local v3, "listener":Lcom/microsoft/appcenter/channel/Channel$Listener;
    move-object v4, v3

    move-object v5, v1

    invoke-interface {v4, v5}, Lcom/microsoft/appcenter/channel/Channel$Listener;->onClear(Ljava/lang/String;)V

    .line 375
    goto :goto_1

    .line 376
    .end local v3    # "listener":Lcom/microsoft/appcenter/channel/Channel$Listener;
    :cond_1
    goto :goto_0
.end method

.method public enqueue(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;I)V
    .locals 13
    .param p1    # Lcom/microsoft/appcenter/ingestion/models/Log;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 607
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/DefaultChannel;
    move-object v1, p1

    .local v1, "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    move-object v2, p2

    .local v2, "groupName":Ljava/lang/String;
    move/from16 v3, p3

    .local v3, "flags":I
    move-object v8, v0

    iget-object v8, v8, Lcom/microsoft/appcenter/channel/DefaultChannel;->mGroupStates:Ljava/util/Map;

    move-object v9, v2

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;

    move-object v4, v8

    .line 608
    .local v4, "groupState":Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
    move-object v8, v4

    if-nez v8, :cond_0

    .line 609
    const-string/jumbo v8, "AppCenter"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid group name:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    .line 701
    :goto_0
    return-void

    .line 614
    :cond_0
    move-object v8, v0

    iget-boolean v8, v8, Lcom/microsoft/appcenter/channel/DefaultChannel;->mDiscardLogs:Z

    if-eqz v8, :cond_2

    .line 615
    const-string/jumbo v8, "AppCenter"

    const-string/jumbo v9, "Channel is disabled, the log is discarded."

    invoke-static {v8, v9}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    move-object v8, v4

    iget-object v8, v8, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    if-eqz v8, :cond_1

    .line 617
    move-object v8, v4

    iget-object v8, v8, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    move-object v9, v1

    invoke-interface {v8, v9}, Lcom/microsoft/appcenter/channel/Channel$GroupListener;->onBeforeSending(Lcom/microsoft/appcenter/ingestion/models/Log;)V

    .line 618
    move-object v8, v4

    iget-object v8, v8, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    move-object v9, v1

    new-instance v10, Lcom/microsoft/appcenter/CancellationException;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Lcom/microsoft/appcenter/CancellationException;-><init>()V

    invoke-interface {v8, v9, v10}, Lcom/microsoft/appcenter/channel/Channel$GroupListener;->onFailure(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/Exception;)V

    .line 620
    :cond_1
    goto :goto_0

    .line 624
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Lcom/microsoft/appcenter/channel/DefaultChannel;->mListeners:Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v5, v8

    :goto_1
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/microsoft/appcenter/channel/Channel$Listener;

    move-object v6, v8

    .line 625
    .local v6, "listener":Lcom/microsoft/appcenter/channel/Channel$Listener;
    move-object v8, v6

    move-object v9, v1

    move-object v10, v2

    invoke-interface {v8, v9, v10}, Lcom/microsoft/appcenter/channel/Channel$Listener;->onPreparingLog(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;)V

    .line 626
    goto :goto_1

    .line 629
    .end local v6    # "listener":Lcom/microsoft/appcenter/channel/Channel$Listener;
    :cond_3
    move-object v8, v1

    invoke-interface {v8}, Lcom/microsoft/appcenter/ingestion/models/Log;->getDevice()Lcom/microsoft/appcenter/ingestion/models/Device;

    move-result-object v8

    if-nez v8, :cond_5

    .line 632
    move-object v8, v0

    iget-object v8, v8, Lcom/microsoft/appcenter/channel/DefaultChannel;->mDevice:Lcom/microsoft/appcenter/ingestion/models/Device;

    if-nez v8, :cond_4

    .line 634
    move-object v8, v0

    move-object v9, v0

    :try_start_0
    iget-object v9, v9, Lcom/microsoft/appcenter/channel/DefaultChannel;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/microsoft/appcenter/utils/DeviceInfoHelper;->getDeviceInfo(Landroid/content/Context;)Lcom/microsoft/appcenter/ingestion/models/Device;

    move-result-object v9

    iput-object v9, v8, Lcom/microsoft/appcenter/channel/DefaultChannel;->mDevice:Lcom/microsoft/appcenter/ingestion/models/Device;
    :try_end_0
    .catch Lcom/microsoft/appcenter/utils/DeviceInfoHelper$DeviceInfoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    .line 642
    :cond_4
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lcom/microsoft/appcenter/channel/DefaultChannel;->mDevice:Lcom/microsoft/appcenter/ingestion/models/Device;

    invoke-interface {v8, v9}, Lcom/microsoft/appcenter/ingestion/models/Log;->setDevice(Lcom/microsoft/appcenter/ingestion/models/Device;)V

    .line 646
    :cond_5
    move-object v8, v1

    invoke-interface {v8}, Lcom/microsoft/appcenter/ingestion/models/Log;->getTimestamp()Ljava/util/Date;

    move-result-object v8

    if-nez v8, :cond_6

    .line 647
    move-object v8, v1

    new-instance v9, Ljava/util/Date;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-interface {v8, v9}, Lcom/microsoft/appcenter/ingestion/models/Log;->setTimestamp(Ljava/util/Date;)V

    .line 651
    :cond_6
    move-object v8, v0

    iget-object v8, v8, Lcom/microsoft/appcenter/channel/DefaultChannel;->mListeners:Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v5, v8

    :goto_2
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/microsoft/appcenter/channel/Channel$Listener;

    move-object v6, v8

    .line 652
    .restart local v6    # "listener":Lcom/microsoft/appcenter/channel/Channel$Listener;
    move-object v8, v6

    move-object v9, v1

    move-object v10, v2

    move v11, v3

    invoke-interface {v8, v9, v10, v11}, Lcom/microsoft/appcenter/channel/Channel$Listener;->onPreparedLog(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;I)V

    .line 653
    goto :goto_2

    .line 635
    .end local v6    # "listener":Lcom/microsoft/appcenter/channel/Channel$Listener;
    :catch_0
    move-exception v8

    move-object v5, v8

    .line 636
    .local v5, "e":Lcom/microsoft/appcenter/utils/DeviceInfoHelper$DeviceInfoException;
    const-string/jumbo v8, "AppCenter"

    const-string/jumbo v9, "Device log cannot be generated"

    move-object v10, v5

    invoke-static {v8, v9, v10}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 637
    goto/16 :goto_0

    .line 656
    .end local v5    # "e":Lcom/microsoft/appcenter/utils/DeviceInfoHelper$DeviceInfoException;
    :cond_7
    const/4 v8, 0x0

    move v5, v8

    .line 657
    .local v5, "filteredOut":Z
    move-object v8, v0

    iget-object v8, v8, Lcom/microsoft/appcenter/channel/DefaultChannel;->mListeners:Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v6, v8

    :goto_3
    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/microsoft/appcenter/channel/Channel$Listener;

    move-object v7, v8

    .line 658
    .local v7, "listener":Lcom/microsoft/appcenter/channel/Channel$Listener;
    move v8, v5

    if-nez v8, :cond_8

    move-object v8, v7

    move-object v9, v1

    invoke-interface {v8, v9}, Lcom/microsoft/appcenter/channel/Channel$Listener;->shouldFilter(Lcom/microsoft/appcenter/ingestion/models/Log;)Z

    move-result v8

    if-eqz v8, :cond_9

    :cond_8
    const/4 v8, 0x1

    :goto_4
    move v5, v8

    .line 659
    goto :goto_3

    .line 658
    :cond_9
    const/4 v8, 0x0

    goto :goto_4

    .line 662
    .end local v7    # "listener":Lcom/microsoft/appcenter/channel/Channel$Listener;
    :cond_a
    move v8, v5

    if-eqz v8, :cond_b

    .line 663
    const-string/jumbo v8, "AppCenter"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Log of type \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-interface {v10}, Lcom/microsoft/appcenter/ingestion/models/Log;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\' was filtered out by listener(s)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    :goto_5
    goto/16 :goto_0

    .line 665
    :cond_b
    move-object v8, v0

    iget-object v8, v8, Lcom/microsoft/appcenter/channel/DefaultChannel;->mAppSecret:Ljava/lang/String;

    if-nez v8, :cond_c

    move-object v8, v4

    iget-object v8, v8, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

    move-object v9, v0

    iget-object v9, v9, Lcom/microsoft/appcenter/channel/DefaultChannel;->mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

    if-ne v8, v9, :cond_c

    .line 668
    const-string/jumbo v8, "AppCenter"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Log of type \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-interface {v10}, Lcom/microsoft/appcenter/ingestion/models/Log;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\' was not filtered out by listener(s) but no app secret was provided. Not persisting/sending the log."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    goto/16 :goto_0

    .line 674
    :cond_c
    move-object v8, v0

    :try_start_1
    iget-object v8, v8, Lcom/microsoft/appcenter/channel/DefaultChannel;->mPersistence:Lcom/microsoft/appcenter/persistence/Persistence;

    move-object v9, v1

    move-object v10, v2

    move v11, v3

    invoke-virtual {v8, v9, v10, v11}, Lcom/microsoft/appcenter/persistence/Persistence;->putLog(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;I)J
    :try_end_1
    .catch Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v8

    .line 682
    .line 685
    move-object v8, v1

    invoke-interface {v8}, Lcom/microsoft/appcenter/ingestion/models/Log;->getTransmissionTargetTokens()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v6, v8

    .line 686
    .local v6, "targetKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/microsoft/appcenter/ingestion/models/one/PartAUtils;->getTargetKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_6
    move-object v7, v8

    .line 687
    .local v7, "targetKey":Ljava/lang/String;
    move-object v8, v4

    iget-object v8, v8, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPausedTargetKeys:Ljava/util/Collection;

    move-object v9, v7

    invoke-interface {v8, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 688
    const-string/jumbo v8, "AppCenter"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Transmission target ikey="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " is paused."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    goto/16 :goto_0

    .line 675
    .end local v6    # "targetKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7    # "targetKey":Ljava/lang/String;
    :catch_1
    move-exception v8

    move-object v6, v8

    .line 676
    .local v6, "e":Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;
    const-string/jumbo v8, "AppCenter"

    const-string/jumbo v9, "Error persisting log"

    move-object v10, v6

    invoke-static {v8, v9, v10}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 677
    move-object v8, v4

    iget-object v8, v8, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    if-eqz v8, :cond_d

    .line 678
    move-object v8, v4

    iget-object v8, v8, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    move-object v9, v1

    invoke-interface {v8, v9}, Lcom/microsoft/appcenter/channel/Channel$GroupListener;->onBeforeSending(Lcom/microsoft/appcenter/ingestion/models/Log;)V

    .line 679
    move-object v8, v4

    iget-object v8, v8, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    move-object v9, v1

    move-object v10, v6

    invoke-interface {v8, v9, v10}, Lcom/microsoft/appcenter/channel/Channel$GroupListener;->onFailure(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/Exception;)V

    .line 681
    :cond_d
    goto/16 :goto_0

    .line 686
    .local v6, "targetKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_e
    const/4 v8, 0x0

    goto :goto_6

    .line 693
    .restart local v7    # "targetKey":Ljava/lang/String;
    :cond_f
    move-object v8, v4

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    .line 694
    const-string/jumbo v8, "AppCenter"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "enqueue("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v4

    iget-object v10, v10, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ") pendingLogCount="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v4

    iget v10, v10, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    move-object v8, v0

    iget-boolean v8, v8, Lcom/microsoft/appcenter/channel/DefaultChannel;->mEnabled:Z

    if-eqz v8, :cond_10

    .line 696
    move-object v8, v0

    move-object v9, v4

    invoke-virtual {v8, v9}, Lcom/microsoft/appcenter/channel/DefaultChannel;->checkPendingLogs(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    goto/16 :goto_5

    .line 698
    :cond_10
    const-string/jumbo v8, "AppCenter"

    const-string/jumbo v9, "Channel is temporarily disabled, log was saved to disk."

    invoke-static {v8, v9}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5
.end method

.method getGroupState(Ljava/lang/String;)Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 783
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/DefaultChannel;
    move-object v1, p1

    .local v1, "groupName":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/channel/DefaultChannel;->mGroupStates:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;

    move-object v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/channel/DefaultChannel;
    return-object v0
.end method

.method public invalidateDeviceCache()V
    .locals 3

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/DefaultChannel;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/microsoft/appcenter/channel/DefaultChannel;->mDevice:Lcom/microsoft/appcenter/ingestion/models/Device;

    .line 381
    return-void
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/DefaultChannel;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/microsoft/appcenter/channel/DefaultChannel;->mEnabled:Z

    move v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/channel/DefaultChannel;
    return v0
.end method

.method public pauseGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/DefaultChannel;
    move-object v1, p1

    .local v1, "groupName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "targetToken":Ljava/lang/String;
    move-object v6, v0

    iget-object v6, v6, Lcom/microsoft/appcenter/channel/DefaultChannel;->mGroupStates:Ljava/util/Map;

    move-object v7, v1

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;

    move-object v3, v6

    .line 266
    .local v3, "groupState":Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
    move-object v6, v3

    if-eqz v6, :cond_2

    .line 267
    move-object v6, v2

    if-eqz v6, :cond_1

    .line 268
    move-object v6, v2

    invoke-static {v6}, Lcom/microsoft/appcenter/ingestion/models/one/PartAUtils;->getTargetKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 269
    .local v4, "targetKey":Ljava/lang/String;
    move-object v6, v3

    iget-object v6, v6, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPausedTargetKeys:Ljava/util/Collection;

    move-object v7, v4

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 270
    const-string/jumbo v6, "AppCenter"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pauseGroup("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .line 279
    .end local v4    # "targetKey":Ljava/lang/String;
    :cond_0
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Lcom/microsoft/appcenter/channel/DefaultChannel;->mListeners:Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_1
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/microsoft/appcenter/channel/Channel$Listener;

    move-object v5, v6

    .line 280
    .local v5, "listener":Lcom/microsoft/appcenter/channel/Channel$Listener;
    move-object v6, v5

    move-object v7, v1

    move-object v8, v2

    invoke-interface {v6, v7, v8}, Lcom/microsoft/appcenter/channel/Channel$Listener;->onPaused(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    goto :goto_1

    .line 272
    .end local v5    # "listener":Lcom/microsoft/appcenter/channel/Channel$Listener;
    :cond_1
    move-object v6, v3

    iget-boolean v6, v6, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPaused:Z

    if-nez v6, :cond_0

    .line 273
    const-string/jumbo v6, "AppCenter"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pauseGroup("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    move-object v6, v3

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPaused:Z

    .line 275
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lcom/microsoft/appcenter/channel/DefaultChannel;->cancelTimer(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    goto :goto_0

    .line 283
    :cond_2
    return-void
.end method

.method public removeGroup(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/DefaultChannel;
    move-object v1, p1

    .local v1, "groupName":Ljava/lang/String;
    const-string/jumbo v5, "AppCenter"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeGroup("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/channel/DefaultChannel;->mGroupStates:Ljava/util/Map;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;

    move-object v2, v5

    .line 253
    .local v2, "groupState":Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 254
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/channel/DefaultChannel;->cancelTimer(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    .line 258
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/channel/DefaultChannel;->mListeners:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/microsoft/appcenter/channel/Channel$Listener;

    move-object v4, v5

    .line 259
    .local v4, "listener":Lcom/microsoft/appcenter/channel/Channel$Listener;
    move-object v5, v4

    move-object v6, v1

    invoke-interface {v5, v6}, Lcom/microsoft/appcenter/channel/Channel$Listener;->onGroupRemoved(Ljava/lang/String;)V

    .line 260
    goto :goto_0

    .line 261
    .end local v4    # "listener":Lcom/microsoft/appcenter/channel/Channel$Listener;
    :cond_1
    return-void
.end method

.method public removeListener(Lcom/microsoft/appcenter/channel/Channel$Listener;)V
    .locals 4

    .prologue
    .line 793
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/DefaultChannel;
    move-object v1, p1

    .local v1, "listener":Lcom/microsoft/appcenter/channel/Channel$Listener;
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/channel/DefaultChannel;->mListeners:Ljava/util/Collection;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 794
    return-void
.end method

.method public resumeGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/DefaultChannel;
    move-object v1, p1

    .local v1, "groupName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "targetToken":Ljava/lang/String;
    move-object v6, v0

    iget-object v6, v6, Lcom/microsoft/appcenter/channel/DefaultChannel;->mGroupStates:Ljava/util/Map;

    move-object v7, v1

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;

    move-object v3, v6

    .line 288
    .local v3, "groupState":Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
    move-object v6, v3

    if-eqz v6, :cond_2

    .line 289
    move-object v6, v2

    if-eqz v6, :cond_1

    .line 290
    move-object v6, v2

    invoke-static {v6}, Lcom/microsoft/appcenter/ingestion/models/one/PartAUtils;->getTargetKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 291
    .local v4, "targetKey":Ljava/lang/String;
    move-object v6, v3

    iget-object v6, v6, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPausedTargetKeys:Ljava/util/Collection;

    move-object v7, v4

    invoke-interface {v6, v7}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 300
    const-string/jumbo v6, "AppCenter"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "resumeGroup("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Lcom/microsoft/appcenter/channel/DefaultChannel;->mPersistence:Lcom/microsoft/appcenter/persistence/Persistence;

    move-object v8, v1

    invoke-virtual {v7, v8}, Lcom/microsoft/appcenter/persistence/Persistence;->countLogs(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    .line 302
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lcom/microsoft/appcenter/channel/DefaultChannel;->checkPendingLogs(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    .line 304
    .line 311
    .end local v4    # "targetKey":Ljava/lang/String;
    :cond_0
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Lcom/microsoft/appcenter/channel/DefaultChannel;->mListeners:Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_1
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/microsoft/appcenter/channel/Channel$Listener;

    move-object v5, v6

    .line 312
    .local v5, "listener":Lcom/microsoft/appcenter/channel/Channel$Listener;
    move-object v6, v5

    move-object v7, v1

    move-object v8, v2

    invoke-interface {v6, v7, v8}, Lcom/microsoft/appcenter/channel/Channel$Listener;->onResumed(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    goto :goto_1

    .line 304
    .end local v5    # "listener":Lcom/microsoft/appcenter/channel/Channel$Listener;
    :cond_1
    move-object v6, v3

    iget-boolean v6, v6, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPaused:Z

    if-eqz v6, :cond_0

    .line 305
    const-string/jumbo v6, "AppCenter"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "resumeGroup("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    move-object v6, v3

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPaused:Z

    .line 307
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lcom/microsoft/appcenter/channel/DefaultChannel;->checkPendingLogs(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    goto :goto_0

    .line 315
    :cond_2
    return-void
.end method

.method public setAppSecret(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/DefaultChannel;
    move-object v1, p1

    .local v1, "appSecret":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/microsoft/appcenter/channel/DefaultChannel;->mAppSecret:Ljava/lang/String;

    .line 210
    move-object v4, v0

    iget-boolean v4, v4, Lcom/microsoft/appcenter/channel/DefaultChannel;->mEnabled:Z

    if-eqz v4, :cond_1

    .line 211
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/channel/DefaultChannel;->mGroupStates:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;

    move-object v3, v4

    .line 212
    .local v3, "groupState":Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
    move-object v4, v3

    iget-object v4, v4, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/channel/DefaultChannel;->mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

    if-ne v4, v5, :cond_0

    .line 213
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/microsoft/appcenter/channel/DefaultChannel;->checkPendingLogs(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    .line 215
    :cond_0
    goto :goto_0

    .line 217
    .end local v3    # "groupState":Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 9

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/DefaultChannel;
    move v1, p1

    .local v1, "enabled":Z
    move-object v4, v0

    iget-boolean v4, v4, Lcom/microsoft/appcenter/channel/DefaultChannel;->mEnabled:Z

    move v5, v1

    if-ne v4, v5, :cond_0

    .line 332
    .line 352
    :goto_0
    return-void

    .line 334
    :cond_0
    move v4, v1

    if-eqz v4, :cond_3

    .line 335
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/microsoft/appcenter/channel/DefaultChannel;->mEnabled:Z

    .line 336
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/microsoft/appcenter/channel/DefaultChannel;->mDiscardLogs:Z

    .line 337
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/microsoft/appcenter/channel/DefaultChannel;->mCurrentState:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/microsoft/appcenter/channel/DefaultChannel;->mCurrentState:I

    .line 338
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/channel/DefaultChannel;->mIngestions:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/appcenter/ingestion/Ingestion;

    move-object v3, v4

    .line 339
    .local v3, "ingestion":Lcom/microsoft/appcenter/ingestion/Ingestion;
    move-object v4, v3

    invoke-interface {v4}, Lcom/microsoft/appcenter/ingestion/Ingestion;->reopen()V

    .line 340
    goto :goto_1

    .line 341
    .end local v3    # "ingestion":Lcom/microsoft/appcenter/ingestion/Ingestion;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/channel/DefaultChannel;->mGroupStates:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_2
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;

    move-object v3, v4

    .line 342
    .local v3, "groupState":Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/microsoft/appcenter/channel/DefaultChannel;->checkPendingLogs(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    .line 343
    goto :goto_2

    .line 349
    .end local v3    # "groupState":Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
    :cond_2
    :goto_3
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/channel/DefaultChannel;->mListeners:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_4
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/appcenter/channel/Channel$Listener;

    move-object v3, v4

    .line 350
    .local v3, "listener":Lcom/microsoft/appcenter/channel/Channel$Listener;
    move-object v4, v3

    move v5, v1

    invoke-interface {v4, v5}, Lcom/microsoft/appcenter/channel/Channel$Listener;->onGloballyEnabled(Z)V

    .line 351
    goto :goto_4

    .line 345
    .end local v3    # "listener":Lcom/microsoft/appcenter/channel/Channel$Listener;
    :cond_3
    move-object v4, v0

    const/4 v5, 0x1

    new-instance v6, Lcom/microsoft/appcenter/CancellationException;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Lcom/microsoft/appcenter/CancellationException;-><init>()V

    invoke-direct {v4, v5, v6}, Lcom/microsoft/appcenter/channel/DefaultChannel;->suspend(ZLjava/lang/Exception;)V

    goto :goto_3

    .line 352
    :cond_4
    goto :goto_0
.end method

.method public setLogUrl(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 356
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/DefaultChannel;
    move-object v1, p1

    .local v1, "logUrl":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/channel/DefaultChannel;->mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/microsoft/appcenter/ingestion/Ingestion;->setLogUrl(Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method public setMaxStorageSize(J)Z
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/DefaultChannel;
    move-wide v1, p1

    .local v1, "maxStorageSizeInBytes":J
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/channel/DefaultChannel;->mPersistence:Lcom/microsoft/appcenter/persistence/Persistence;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/microsoft/appcenter/persistence/Persistence;->setMaxStorageSize(J)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/microsoft/appcenter/channel/DefaultChannel;
    return v0
.end method

.method public shutdown()V
    .locals 6

    .prologue
    .line 798
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/DefaultChannel;
    move-object v1, v0

    const/4 v2, 0x0

    new-instance v3, Lcom/microsoft/appcenter/CancellationException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/microsoft/appcenter/CancellationException;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/microsoft/appcenter/channel/DefaultChannel;->suspend(ZLjava/lang/Exception;)V

    .line 799
    return-void
.end method
