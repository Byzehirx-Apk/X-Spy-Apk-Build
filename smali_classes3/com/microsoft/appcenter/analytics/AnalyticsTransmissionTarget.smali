.class public Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
.super Ljava/lang/Object;
.source "AnalyticsTransmissionTarget.java"


# static fields
.field static sAuthenticationProvider:Lcom/microsoft/appcenter/analytics/AuthenticationProvider;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mChannel:Lcom/microsoft/appcenter/channel/Channel;

.field private final mChildrenTargets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field final mParentTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

.field private final mPropertyConfigurator:Lcom/microsoft/appcenter/analytics/PropertyConfigurator;

.field private final mTransmissionTargetToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    move-object v1, p1

    .local v1, "transmissionTargetToken":Ljava/lang/String;
    move-object v2, p2

    .local v2, "parentTarget":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 58
    move-object v3, v0

    new-instance v4, Ljava/util/HashMap;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v3, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->mChildrenTargets:Ljava/util/Map;

    .line 82
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->mTransmissionTargetToken:Ljava/lang/String;

    .line 83
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->mParentTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    .line 84
    move-object v3, v0

    new-instance v4, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;-><init>(Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;)V

    iput-object v4, v3, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->mPropertyConfigurator:Lcom/microsoft/appcenter/analytics/PropertyConfigurator;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/appcenter/analytics/AuthenticationProvider;)V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/analytics/AuthenticationProvider;
    move-object v1, v0

    invoke-static {v1}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->updateProvider(Lcom/microsoft/appcenter/analytics/AuthenticationProvider;)V

    return-void
.end method

.method static synthetic access$100(Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;)Lcom/microsoft/appcenter/channel/Channel;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v0, v1

    .end local v0    # "x0":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    return-object v0
.end method

.method static synthetic access$200(Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;)Z
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    move-object v1, v0

    invoke-direct {v1}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->areAncestorsEnabled()Z

    move-result v1

    move v0, v1

    .end local v0    # "x0":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    return v0
.end method

.method static synthetic access$300(Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    move-object v1, v0

    invoke-direct {v1}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->getEnabledPreferenceKey()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    return-object v0
.end method

.method static synthetic access$400(Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;)Ljava/util/Map;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->mChildrenTargets:Ljava/util/Map;

    move-object v0, v1

    .end local v0    # "x0":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    return-object v0
.end method

.method static synthetic access$500(Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->mTransmissionTargetToken:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "x0":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    return-object v0
.end method

.method static synthetic access$600(Lcom/microsoft/appcenter/ingestion/models/Log;)V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/ingestion/models/Log;
    move-object v1, v0

    invoke-static {v1}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->addTicketToLog(Lcom/microsoft/appcenter/ingestion/models/Log;)V

    return-void
.end method

.method public static declared-synchronized addAuthenticationProvider(Lcom/microsoft/appcenter/analytics/AuthenticationProvider;)V
    .locals 7

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "authenticationProvider":Lcom/microsoft/appcenter/analytics/AuthenticationProvider;
    const-class v5, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    monitor-enter v5

    move-object v1, v0

    if-nez v1, :cond_0

    .line 109
    :try_start_0
    const-string/jumbo v1, "AppCenterAnalytics"

    const-string/jumbo v2, "Authentication provider may not be null."

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .line 137
    :goto_0
    monitor-exit v5

    return-void

    .line 112
    :cond_0
    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->getType()Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;

    move-result-object v1

    if-nez v1, :cond_1

    .line 113
    const-string/jumbo v1, "AppCenterAnalytics"

    const-string/jumbo v2, "Authentication provider type may not be null."

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    goto :goto_0

    .line 116
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->getTicketKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 117
    const-string/jumbo v1, "AppCenterAnalytics"

    const-string/jumbo v2, "Authentication ticket key may not be null."

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    goto :goto_0

    .line 120
    :cond_2
    move-object v1, v0

    invoke-virtual {v1}, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->getTokenProvider()Lcom/microsoft/appcenter/analytics/AuthenticationProvider$TokenProvider;

    move-result-object v1

    if-nez v1, :cond_3

    .line 121
    const-string/jumbo v1, "AppCenterAnalytics"

    const-string/jumbo v2, "Authentication token provider may not be null."

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    goto :goto_0

    .line 126
    :cond_3
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->isConfigured()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 127
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v1

    new-instance v2, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$1;-><init>(Lcom/microsoft/appcenter/analytics/AuthenticationProvider;)V

    invoke-virtual {v1, v2}, Lcom/microsoft/appcenter/analytics/Analytics;->postCommandEvenIfDisabled(Ljava/lang/Runnable;)V

    .line 137
    :goto_1
    goto :goto_0

    .line 135
    :cond_4
    move-object v1, v0

    invoke-static {v1}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->updateProvider(Lcom/microsoft/appcenter/analytics/AuthenticationProvider;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "authenticationProvider":Lcom/microsoft/appcenter/analytics/AuthenticationProvider;
    throw v0
.end method

.method private static addTicketToLog(Lcom/microsoft/appcenter/ingestion/models/Log;)V
    .locals 5
    .param p0    # Lcom/microsoft/appcenter/ingestion/models/Log;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 422
    move-object v0, p0

    .local v0, "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    sget-object v3, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->sAuthenticationProvider:Lcom/microsoft/appcenter/analytics/AuthenticationProvider;

    if-eqz v3, :cond_0

    move-object v3, v0

    instance-of v3, v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;

    if-eqz v3, :cond_0

    .line 425
    move-object v3, v0

    check-cast v3, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;

    move-object v1, v3

    .line 426
    .local v1, "csLog":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
    sget-object v3, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->sAuthenticationProvider:Lcom/microsoft/appcenter/analytics/AuthenticationProvider;

    invoke-virtual {v3}, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->getTicketKeyHash()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 427
    .local v2, "ticketKey":Ljava/lang/String;
    move-object v3, v1

    invoke-virtual {v3}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getExt()Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getProtocol()Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;

    move-result-object v3

    move-object v4, v2

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->setTicketKeys(Ljava/util/List;)V

    .line 434
    sget-object v3, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->sAuthenticationProvider:Lcom/microsoft/appcenter/analytics/AuthenticationProvider;

    invoke-virtual {v3}, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->checkTokenExpiry()V

    .line 436
    .end local v1    # "csLog":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
    .end local v2    # "ticketKey":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private areAncestorsEnabled()Z
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 450
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->mParentTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    move-object v1, v2

    .local v1, "target":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    :goto_0
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 451
    move-object v2, v1

    invoke-direct {v2}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->isEnabledInStorage()Z

    move-result v2

    if-nez v2, :cond_0

    .line 452
    const/4 v2, 0x0

    move v0, v2

    .line 455
    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    :goto_1
    return v0

    .line 450
    .restart local v0    # "this":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->mParentTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    move-object v1, v2

    goto :goto_0

    .line 455
    :cond_1
    const/4 v2, 0x1

    move v0, v2

    goto :goto_1
.end method

.method static getChannelListener()Lcom/microsoft/appcenter/channel/Channel$Listener;
    .locals 3

    .prologue
    .line 407
    new-instance v0, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$7;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$7;-><init>()V

    return-object v0
.end method

.method private getEnabledPreferenceKey()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 440
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/appcenter/analytics/Analytics;->getEnabledPreferenceKeyPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->mTransmissionTargetToken:Ljava/lang/String;

    invoke-static {v2}, Lcom/microsoft/appcenter/ingestion/models/one/PartAUtils;->getTargetKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    return-object v0
.end method

.method private isEnabledInStorage()Z
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 445
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    move-object v1, v0

    invoke-direct {v1}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->getEnabledPreferenceKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    return v0
.end method

.method private static updateProvider(Lcom/microsoft/appcenter/analytics/AuthenticationProvider;)V
    .locals 2

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "authenticationProvider":Lcom/microsoft/appcenter/analytics/AuthenticationProvider;
    move-object v1, v0

    sput-object v1, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->sAuthenticationProvider:Lcom/microsoft/appcenter/analytics/AuthenticationProvider;

    .line 150
    move-object v1, v0

    invoke-virtual {v1}, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->acquireTokenAsync()V

    .line 151
    return-void
.end method


# virtual methods
.method public getPropertyConfigurator()Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    .locals 2

    .prologue
    .line 469
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->mPropertyConfigurator:Lcom/microsoft/appcenter/analytics/PropertyConfigurator;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    return-object v0
.end method

.method public declared-synchronized getTransmissionTarget(Ljava/lang/String;)Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    .locals 11

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    move-object v1, p1

    .local v1, "transmissionTargetToken":Ljava/lang/String;
    move-object v9, p0

    monitor-enter v9

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->mChildrenTargets:Ljava/util/Map;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    move-object v2, v4

    .line 287
    .local v2, "childTarget":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    move-object v4, v2

    if-nez v4, :cond_0

    .line 288
    new-instance v4, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    move-object v7, v0

    invoke-direct {v5, v6, v7}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;-><init>(Ljava/lang/String;Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;)V

    move-object v2, v4

    .line 289
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->mChildrenTargets:Ljava/util/Map;

    move-object v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 290
    move-object v4, v2

    move-object v3, v4

    .line 291
    .local v3, "finalChildTarget":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v4

    new-instance v5, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$2;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$2;-><init>(Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;)V

    invoke-virtual {v4, v5}, Lcom/microsoft/appcenter/analytics/Analytics;->postCommandEvenIfDisabled(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    .end local v3    # "finalChildTarget":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    :cond_0
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    monitor-exit v9

    return-object v0

    .line 286
    .end local v2    # "childTarget":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    .restart local v0    # "this":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    :catchall_0
    move-exception v0

    monitor-exit v9

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    throw v0
.end method

.method getTransmissionTargetToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 400
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->mTransmissionTargetToken:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    return-object v0
.end method

.method initInBackground(Landroid/content/Context;Lcom/microsoft/appcenter/channel/Channel;)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "channel":Lcom/microsoft/appcenter/channel/Channel;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->mContext:Landroid/content/Context;

    .line 90
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    .line 91
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->mPropertyConfigurator:Lcom/microsoft/appcenter/analytics/PropertyConfigurator;

    invoke-interface {v3, v4}, Lcom/microsoft/appcenter/channel/Channel;->addListener(Lcom/microsoft/appcenter/channel/Channel$Listener;)V

    .line 92
    return-void
.end method

.method isEnabled()Z
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 460
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    move-object v1, v0

    invoke-direct {v1}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->areAncestorsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-direct {v1}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->isEnabledInStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    return v0

    .restart local v0    # "this":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnabledAsync()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 8
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
    .line 309
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    new-instance v2, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;-><init>()V

    move-object v1, v2

    .line 310
    .local v1, "future":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v2

    new-instance v3, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$3;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$3;-><init>(Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)V

    move-object v4, v1

    const/4 v5, 0x0

    .line 316
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 310
    invoke-virtual {v2, v3, v4, v5}, Lcom/microsoft/appcenter/analytics/Analytics;->postCommand(Ljava/lang/Runnable;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;Ljava/lang/Object;)V

    .line 317
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    return-object v0
.end method

.method public pause()V
    .locals 6

    .prologue
    .line 369
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v1

    new-instance v2, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$5;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$5;-><init>(Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;)V

    invoke-virtual {v1, v2}, Lcom/microsoft/appcenter/analytics/Analytics;->post(Ljava/lang/Runnable;)V

    .line 377
    return-void
.end method

.method public resume()V
    .locals 6

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v1

    new-instance v2, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$6;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$6;-><init>(Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;)V

    invoke-virtual {v1, v2}, Lcom/microsoft/appcenter/analytics/Analytics;->post(Ljava/lang/Runnable;)V

    .line 392
    return-void
.end method

.method public setEnabledAsync(Z)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 10
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
    .line 328
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    move v1, p1

    .local v1, "enabled":Z
    new-instance v3, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;-><init>()V

    move-object v2, v3

    .line 329
    .local v2, "future":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v3

    new-instance v4, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$4;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$4;-><init>(Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;ZLcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)V

    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/microsoft/appcenter/analytics/Analytics;->postCommand(Ljava/lang/Runnable;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;Ljava/lang/Object;)V

    .line 361
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    return-object v0
.end method

.method public trackEvent(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    check-cast v4, Lcom/microsoft/appcenter/analytics/EventProperties;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->trackEvent(Ljava/lang/String;Lcom/microsoft/appcenter/analytics/EventProperties;I)V

    .line 163
    return-void
.end method

.method public trackEvent(Ljava/lang/String;Lcom/microsoft/appcenter/analytics/EventProperties;)V
    .locals 7

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "properties":Lcom/microsoft/appcenter/analytics/EventProperties;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->trackEvent(Ljava/lang/String;Lcom/microsoft/appcenter/analytics/EventProperties;I)V

    .line 230
    return-void
.end method

.method public trackEvent(Ljava/lang/String;Lcom/microsoft/appcenter/analytics/EventProperties;I)V
    .locals 11

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "properties":Lcom/microsoft/appcenter/analytics/EventProperties;
    move v3, p3

    .local v3, "flags":I
    new-instance v6, Lcom/microsoft/appcenter/analytics/EventProperties;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Lcom/microsoft/appcenter/analytics/EventProperties;-><init>()V

    move-object v4, v6

    .line 256
    .local v4, "mergedProperties":Lcom/microsoft/appcenter/analytics/EventProperties;
    move-object v6, v0

    move-object v5, v6

    .local v5, "target":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    :goto_0
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 257
    move-object v6, v5

    invoke-virtual {v6}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->getPropertyConfigurator()Lcom/microsoft/appcenter/analytics/PropertyConfigurator;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mergeEventProperties(Lcom/microsoft/appcenter/analytics/EventProperties;)V

    .line 256
    move-object v6, v5

    iget-object v6, v6, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->mParentTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    move-object v5, v6

    goto :goto_0

    .line 261
    :cond_0
    move-object v6, v2

    if-eqz v6, :cond_2

    .line 262
    move-object v6, v4

    invoke-virtual {v6}, Lcom/microsoft/appcenter/analytics/EventProperties;->getProperties()Ljava/util/Map;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v7}, Lcom/microsoft/appcenter/analytics/EventProperties;->getProperties()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 274
    :cond_1
    :goto_1
    move-object v6, v1

    move-object v7, v4

    move-object v8, v0

    move v9, v3

    invoke-static {v6, v7, v8, v9}, Lcom/microsoft/appcenter/analytics/Analytics;->trackEvent(Ljava/lang/String;Lcom/microsoft/appcenter/analytics/EventProperties;Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;I)V

    .line 275
    return-void

    .line 269
    :cond_2
    move-object v6, v4

    invoke-virtual {v6}, Lcom/microsoft/appcenter/analytics/EventProperties;->getProperties()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 270
    const/4 v6, 0x0

    move-object v4, v6

    goto :goto_1
.end method

.method public trackEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->trackEvent(Ljava/lang/String;Ljava/util/Map;I)V

    .line 181
    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/util/Map;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move v3, p3

    .local v3, "flags":I
    const/4 v7, 0x0

    move-object v4, v7

    .line 204
    .local v4, "eventProperties":Lcom/microsoft/appcenter/analytics/EventProperties;
    move-object v7, v2

    if-eqz v7, :cond_0

    .line 205
    new-instance v7, Lcom/microsoft/appcenter/analytics/EventProperties;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Lcom/microsoft/appcenter/analytics/EventProperties;-><init>()V

    move-object v4, v7

    .line 206
    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

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

    check-cast v7, Ljava/util/Map$Entry;

    move-object v6, v7

    .line 207
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v7, v4

    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v9, v6

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/microsoft/appcenter/analytics/EventProperties;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/analytics/EventProperties;

    move-result-object v7

    .line 208
    goto :goto_0

    .line 210
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    move-object v7, v0

    move-object v8, v1

    move-object v9, v4

    move v10, v3

    invoke-virtual {v7, v8, v9, v10}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->trackEvent(Ljava/lang/String;Lcom/microsoft/appcenter/analytics/EventProperties;I)V

    .line 211
    return-void
.end method
