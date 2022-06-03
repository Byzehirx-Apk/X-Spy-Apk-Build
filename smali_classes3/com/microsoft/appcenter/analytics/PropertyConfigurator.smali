.class public Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
.super Lcom/microsoft/appcenter/channel/AbstractChannelListener;
.source "PropertyConfigurator.java"


# static fields
.field private static final ANDROID_DEVICE_ID_PREFIX:Ljava/lang/String; = "a:"


# instance fields
.field private mAppLocale:Ljava/lang/String;

.field private mAppName:Ljava/lang/String;

.field private mAppVersion:Ljava/lang/String;

.field private mDeviceIdEnabled:Z

.field private final mEventProperties:Lcom/microsoft/appcenter/analytics/EventProperties;

.field private final mTransmissionTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

.field private mUserId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;)V
    .locals 6

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    move-object v1, p1

    .local v1, "transmissionTarget":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    move-object v2, v0

    invoke-direct {v2}, Lcom/microsoft/appcenter/channel/AbstractChannelListener;-><init>()V

    .line 69
    move-object v2, v0

    new-instance v3, Lcom/microsoft/appcenter/analytics/EventProperties;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/microsoft/appcenter/analytics/EventProperties;-><init>()V

    iput-object v3, v2, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mEventProperties:Lcom/microsoft/appcenter/analytics/EventProperties;

    .line 77
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mTransmissionTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    .line 78
    return-void
.end method

.method static synthetic access$002(Lcom/microsoft/appcenter/analytics/PropertyConfigurator;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mAppName:Ljava/lang/String;

    move-object v0, v2

    .end local v0    # "x0":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    return-object v0
.end method

.method static synthetic access$102(Lcom/microsoft/appcenter/analytics/PropertyConfigurator;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mAppVersion:Ljava/lang/String;

    move-object v0, v2

    .end local v0    # "x0":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    return-object v0
.end method

.method static synthetic access$202(Lcom/microsoft/appcenter/analytics/PropertyConfigurator;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mAppLocale:Ljava/lang/String;

    move-object v0, v2

    .end local v0    # "x0":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    return-object v0
.end method

.method static synthetic access$302(Lcom/microsoft/appcenter/analytics/PropertyConfigurator;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mUserId:Ljava/lang/String;

    move-object v0, v2

    .end local v0    # "x0":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    return-object v0
.end method

.method static synthetic access$402(Lcom/microsoft/appcenter/analytics/PropertyConfigurator;Z)Z
    .locals 7

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mDeviceIdEnabled:Z

    move v0, v2

    .end local v0    # "x0":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    return v0
.end method

.method private getAppLocale()Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mAppLocale:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    return-object v0
.end method

.method private getAppName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mAppName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    return-object v0
.end method

.method private getAppVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mAppVersion:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    return-object v0
.end method

.method private getUserId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mUserId:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    return-object v0
.end method

.method private shouldOverridePartAProperties(Lcom/microsoft/appcenter/ingestion/models/Log;)Z
    .locals 4
    .param p1    # Lcom/microsoft/appcenter/ingestion/models/Log;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    move-object v1, p1

    .local v1, "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    move-object v2, v1

    instance-of v2, v2, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Lcom/microsoft/appcenter/ingestion/models/Log;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mTransmissionTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mTransmissionTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    .line 164
    invoke-virtual {v2}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 163
    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    return v0

    .line 164
    .restart local v0    # "this":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public collectDeviceId()V
    .locals 6

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v1

    new-instance v2, Lcom/microsoft/appcenter/analytics/PropertyConfigurator$5;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/microsoft/appcenter/analytics/PropertyConfigurator$5;-><init>(Lcom/microsoft/appcenter/analytics/PropertyConfigurator;)V

    invoke-virtual {v1, v2}, Lcom/microsoft/appcenter/analytics/Analytics;->postCommandEvenIfDisabled(Ljava/lang/Runnable;)V

    .line 344
    return-void
.end method

.method declared-synchronized mergeEventProperties(Lcom/microsoft/appcenter/analytics/EventProperties;)V
    .locals 9

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    move-object v1, p1

    .local v1, "mergedProperties":Lcom/microsoft/appcenter/analytics/EventProperties;
    move-object v8, p0

    monitor-enter v8

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mEventProperties:Lcom/microsoft/appcenter/analytics/EventProperties;

    invoke-virtual {v5}, Lcom/microsoft/appcenter/analytics/EventProperties;->getProperties()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_0
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    move-object v3, v5

    .line 352
    .local v3, "property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;>;"
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v4, v5

    .line 353
    .local v4, "key":Ljava/lang/String;
    move-object v5, v1

    invoke-virtual {v5}, Lcom/microsoft/appcenter/analytics/EventProperties;->getProperties()Ljava/util/Map;

    move-result-object v5

    move-object v6, v4

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 354
    move-object v5, v1

    invoke-virtual {v5}, Lcom/microsoft/appcenter/analytics/EventProperties;->getProperties()Ljava/util/Map;

    move-result-object v5

    move-object v6, v4

    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 356
    :cond_0
    goto :goto_0

    .line 357
    .end local v3    # "property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;>;"
    .end local v4    # "key":Ljava/lang/String;
    :cond_1
    monitor-exit v8

    return-void

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit v8

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    throw v0
.end method

.method public onPreparingLog(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;)V
    .locals 12
    .param p1    # Lcom/microsoft/appcenter/ingestion/models/Log;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    move-object v1, p1

    .local v1, "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    move-object v2, p2

    .local v2, "groupName":Ljava/lang/String;
    move-object v8, v0

    move-object v9, v1

    invoke-direct {v8, v9}, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->shouldOverridePartAProperties(Lcom/microsoft/appcenter/ingestion/models/Log;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 89
    move-object v8, v1

    check-cast v8, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;

    invoke-virtual {v8}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getExt()Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    move-result-object v8

    invoke-virtual {v8}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getApp()Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;

    move-result-object v8

    move-object v3, v8

    .line 90
    .local v3, "app":Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;
    move-object v8, v1

    check-cast v8, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;

    invoke-virtual {v8}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getExt()Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    move-result-object v8

    invoke-virtual {v8}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getUser()Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;

    move-result-object v8

    move-object v4, v8

    .line 91
    .local v4, "user":Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;
    move-object v8, v1

    check-cast v8, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;

    invoke-virtual {v8}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getExt()Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    move-result-object v8

    invoke-virtual {v8}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getDevice()Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;

    move-result-object v8

    move-object v5, v8

    .line 94
    .local v5, "device":Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;
    move-object v8, v0

    iget-object v8, v8, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mAppName:Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 95
    move-object v8, v3

    move-object v9, v0

    iget-object v9, v9, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mAppName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->setName(Ljava/lang/String;)V

    .line 107
    :cond_0
    :goto_0
    move-object v8, v0

    iget-object v8, v8, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mAppVersion:Ljava/lang/String;

    if-eqz v8, :cond_7

    .line 108
    move-object v8, v3

    move-object v9, v0

    iget-object v9, v9, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mAppVersion:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->setVer(Ljava/lang/String;)V

    .line 120
    :cond_1
    :goto_1
    move-object v8, v0

    iget-object v8, v8, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mAppLocale:Ljava/lang/String;

    if-eqz v8, :cond_9

    .line 121
    move-object v8, v3

    move-object v9, v0

    iget-object v9, v9, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mAppLocale:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->setLocale(Ljava/lang/String;)V

    .line 133
    :cond_2
    :goto_2
    move-object v8, v0

    iget-object v8, v8, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mUserId:Ljava/lang/String;

    if-eqz v8, :cond_b

    .line 134
    move-object v8, v4

    move-object v9, v0

    iget-object v9, v9, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mUserId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;->setLocalId(Ljava/lang/String;)V

    .line 146
    :cond_3
    :goto_3
    move-object v8, v0

    iget-boolean v8, v8, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mDeviceIdEnabled:Z

    if-eqz v8, :cond_4

    .line 150
    move-object v8, v0

    iget-object v8, v8, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mTransmissionTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    iget-object v8, v8, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "android_id"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 151
    .local v6, "androidId":Ljava/lang/String;
    move-object v8, v5

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "a:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;->setLocalId(Ljava/lang/String;)V

    .line 154
    .end local v3    # "app":Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;
    .end local v4    # "user":Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;
    .end local v5    # "device":Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;
    .end local v6    # "androidId":Ljava/lang/String;
    :cond_4
    return-void

    .line 97
    .restart local v3    # "app":Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;
    .restart local v4    # "user":Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;
    .restart local v5    # "device":Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;
    :cond_5
    move-object v8, v0

    iget-object v8, v8, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mTransmissionTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    iget-object v8, v8, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->mParentTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    move-object v6, v8

    .local v6, "target":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    :goto_4
    move-object v8, v6

    if-eqz v8, :cond_0

    .line 98
    move-object v8, v6

    invoke-virtual {v8}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->getPropertyConfigurator()Lcom/microsoft/appcenter/analytics/PropertyConfigurator;

    move-result-object v8

    invoke-direct {v8}, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->getAppName()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 99
    .local v7, "parentAppName":Ljava/lang/String;
    move-object v8, v7

    if-eqz v8, :cond_6

    .line 100
    move-object v8, v3

    move-object v9, v7

    invoke-virtual {v8, v9}, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->setName(Ljava/lang/String;)V

    .line 101
    goto :goto_0

    .line 97
    :cond_6
    move-object v8, v6

    iget-object v8, v8, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->mParentTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    move-object v6, v8

    goto :goto_4

    .line 110
    .end local v6    # "target":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    .end local v7    # "parentAppName":Ljava/lang/String;
    :cond_7
    move-object v8, v0

    iget-object v8, v8, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mTransmissionTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    iget-object v8, v8, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->mParentTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    move-object v6, v8

    .restart local v6    # "target":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    :goto_5
    move-object v8, v6

    if-eqz v8, :cond_1

    .line 111
    move-object v8, v6

    invoke-virtual {v8}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->getPropertyConfigurator()Lcom/microsoft/appcenter/analytics/PropertyConfigurator;

    move-result-object v8

    invoke-direct {v8}, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->getAppVersion()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 112
    .local v7, "parentAppVersion":Ljava/lang/String;
    move-object v8, v7

    if-eqz v8, :cond_8

    .line 113
    move-object v8, v3

    move-object v9, v7

    invoke-virtual {v8, v9}, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->setVer(Ljava/lang/String;)V

    .line 114
    goto/16 :goto_1

    .line 110
    :cond_8
    move-object v8, v6

    iget-object v8, v8, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->mParentTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    move-object v6, v8

    goto :goto_5

    .line 123
    .end local v6    # "target":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    .end local v7    # "parentAppVersion":Ljava/lang/String;
    :cond_9
    move-object v8, v0

    iget-object v8, v8, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mTransmissionTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    iget-object v8, v8, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->mParentTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    move-object v6, v8

    .restart local v6    # "target":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    :goto_6
    move-object v8, v6

    if-eqz v8, :cond_2

    .line 124
    move-object v8, v6

    invoke-virtual {v8}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->getPropertyConfigurator()Lcom/microsoft/appcenter/analytics/PropertyConfigurator;

    move-result-object v8

    invoke-direct {v8}, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->getAppLocale()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 125
    .local v7, "parentAppLocale":Ljava/lang/String;
    move-object v8, v7

    if-eqz v8, :cond_a

    .line 126
    move-object v8, v3

    move-object v9, v7

    invoke-virtual {v8, v9}, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->setLocale(Ljava/lang/String;)V

    .line 127
    goto/16 :goto_2

    .line 123
    :cond_a
    move-object v8, v6

    iget-object v8, v8, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->mParentTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    move-object v6, v8

    goto :goto_6

    .line 136
    .end local v6    # "target":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    .end local v7    # "parentAppLocale":Ljava/lang/String;
    :cond_b
    move-object v8, v0

    iget-object v8, v8, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mTransmissionTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    iget-object v8, v8, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->mParentTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    move-object v6, v8

    .restart local v6    # "target":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    :goto_7
    move-object v8, v6

    if-eqz v8, :cond_3

    .line 137
    move-object v8, v6

    invoke-virtual {v8}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->getPropertyConfigurator()Lcom/microsoft/appcenter/analytics/PropertyConfigurator;

    move-result-object v8

    invoke-direct {v8}, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->getUserId()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 138
    .local v7, "parentUserId":Ljava/lang/String;
    move-object v8, v7

    if-eqz v8, :cond_c

    .line 139
    move-object v8, v4

    move-object v9, v7

    invoke-virtual {v8, v9}, Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;->setLocalId(Ljava/lang/String;)V

    .line 140
    goto/16 :goto_3

    .line 136
    :cond_c
    move-object v8, v6

    iget-object v8, v8, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->mParentTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    move-object v6, v8

    goto :goto_7
.end method

.method public declared-synchronized removeEventProperty(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mEventProperties:Lcom/microsoft/appcenter/analytics/EventProperties;

    invoke-virtual {v2}, Lcom/microsoft/appcenter/analytics/EventProperties;->getProperties()Ljava/util/Map;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 330
    monitor-exit v4

    return-void

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    throw v0
.end method

.method public setAppLocale(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    move-object v1, p1

    .local v1, "appLocale":Ljava/lang/String;
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v2

    new-instance v3, Lcom/microsoft/appcenter/analytics/PropertyConfigurator$3;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/microsoft/appcenter/analytics/PropertyConfigurator$3;-><init>(Lcom/microsoft/appcenter/analytics/PropertyConfigurator;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/analytics/Analytics;->postCommandEvenIfDisabled(Ljava/lang/Runnable;)V

    .line 237
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    move-object v1, p1

    .local v1, "appName":Ljava/lang/String;
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v2

    new-instance v3, Lcom/microsoft/appcenter/analytics/PropertyConfigurator$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/microsoft/appcenter/analytics/PropertyConfigurator$1;-><init>(Lcom/microsoft/appcenter/analytics/PropertyConfigurator;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/analytics/Analytics;->postCommandEvenIfDisabled(Ljava/lang/Runnable;)V

    .line 189
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    move-object v1, p1

    .local v1, "appVersion":Ljava/lang/String;
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v2

    new-instance v3, Lcom/microsoft/appcenter/analytics/PropertyConfigurator$2;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/microsoft/appcenter/analytics/PropertyConfigurator$2;-><init>(Lcom/microsoft/appcenter/analytics/PropertyConfigurator;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/analytics/Analytics;->postCommandEvenIfDisabled(Ljava/lang/Runnable;)V

    .line 213
    return-void
.end method

.method public declared-synchronized setEventProperty(Ljava/lang/String;D)V
    .locals 10

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-wide v2, p2

    .local v2, "value":D
    move-object v8, p0

    monitor-enter v8

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mEventProperties:Lcom/microsoft/appcenter/analytics/EventProperties;

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Lcom/microsoft/appcenter/analytics/EventProperties;->set(Ljava/lang/String;D)Lcom/microsoft/appcenter/analytics/EventProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 299
    monitor-exit v8

    return-void

    .line 298
    :catchall_0
    move-exception v0

    monitor-exit v8

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    throw v0
.end method

.method public declared-synchronized setEventProperty(Ljava/lang/String;J)V
    .locals 10

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-wide v2, p2

    .local v2, "value":J
    move-object v8, p0

    monitor-enter v8

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mEventProperties:Lcom/microsoft/appcenter/analytics/EventProperties;

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Lcom/microsoft/appcenter/analytics/EventProperties;->set(Ljava/lang/String;J)Lcom/microsoft/appcenter/analytics/EventProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 310
    monitor-exit v8

    return-void

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit v8

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    throw v0
.end method

.method public declared-synchronized setEventProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 320
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/String;
    move-object v6, p0

    monitor-enter v6

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mEventProperties:Lcom/microsoft/appcenter/analytics/EventProperties;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/microsoft/appcenter/analytics/EventProperties;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/analytics/EventProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 321
    monitor-exit v6

    return-void

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    throw v0
.end method

.method public declared-synchronized setEventProperty(Ljava/lang/String;Ljava/util/Date;)V
    .locals 7

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/util/Date;
    move-object v6, p0

    monitor-enter v6

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mEventProperties:Lcom/microsoft/appcenter/analytics/EventProperties;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/microsoft/appcenter/analytics/EventProperties;->set(Ljava/lang/String;Ljava/util/Date;)Lcom/microsoft/appcenter/analytics/EventProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 288
    monitor-exit v6

    return-void

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    throw v0
.end method

.method public declared-synchronized setEventProperty(Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move v2, p2

    .local v2, "value":Z
    move-object v6, p0

    monitor-enter v6

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mEventProperties:Lcom/microsoft/appcenter/analytics/EventProperties;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/microsoft/appcenter/analytics/EventProperties;->set(Ljava/lang/String;Z)Lcom/microsoft/appcenter/analytics/EventProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 277
    monitor-exit v6

    return-void

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    throw v0
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
    move-object v1, p1

    .local v1, "userId":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v2}, Lcom/microsoft/appcenter/utils/context/UserIdContext;->checkUserIdValidForOneCollector(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v2

    new-instance v3, Lcom/microsoft/appcenter/analytics/PropertyConfigurator$4;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/microsoft/appcenter/analytics/PropertyConfigurator$4;-><init>(Lcom/microsoft/appcenter/analytics/PropertyConfigurator;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/analytics/Analytics;->postCommandEvenIfDisabled(Ljava/lang/Runnable;)V

    .line 266
    :cond_0
    return-void
.end method
