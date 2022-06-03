.class public Lcom/microsoft/appcenter/analytics/Analytics;
.super Lcom/microsoft/appcenter/AbstractAppCenterService;
.source "Analytics.java"


# static fields
.field private static final ACTIVITY_SUFFIX:Ljava/lang/String; = "Activity"

.field static final ANALYTICS_CRITICAL_GROUP:Ljava/lang/String; = "group_analytics_critical"

.field static final ANALYTICS_GROUP:Ljava/lang/String; = "group_analytics"

.field public static final LOG_TAG:Ljava/lang/String; = "AppCenterAnalytics"

.field static final MAXIMUM_TRANSMISSION_INTERVAL_IN_SECONDS:I = 0x15180
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final MINIMUM_TRANSMISSION_INTERVAL_IN_SECONDS:I = 0x3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final SERVICE_NAME:Ljava/lang/String; = "Analytics"

.field private static sInstance:Lcom/microsoft/appcenter/analytics/Analytics;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private mAnalyticsListener:Lcom/microsoft/appcenter/analytics/channel/AnalyticsListener;

.field private mAnalyticsTransmissionTargetListener:Lcom/microsoft/appcenter/channel/Channel$Listener;

.field private mAnalyticsValidator:Lcom/microsoft/appcenter/analytics/channel/AnalyticsValidator;

.field private mAutoPageTrackingEnabled:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field mDefaultTransmissionTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mFactories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionTracker:Lcom/microsoft/appcenter/analytics/channel/SessionTracker;

.field private mStartedFromApp:Z

.field private mTransmissionInterval:J

.field private final mTransmissionTargets:Ljava/util/Map;
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


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v1, v0

    invoke-direct {v1}, Lcom/microsoft/appcenter/AbstractAppCenterService;-><init>()V

    .line 157
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/microsoft/appcenter/analytics/Analytics;->mAutoPageTrackingEnabled:Z

    .line 163
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/microsoft/appcenter/analytics/Analytics;->mFactories:Ljava/util/Map;

    .line 164
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/Analytics;->mFactories:Ljava/util/Map;

    const-string/jumbo v2, "startSession"

    new-instance v3, Lcom/microsoft/appcenter/analytics/ingestion/models/json/StartSessionLogFactory;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/microsoft/appcenter/analytics/ingestion/models/json/StartSessionLogFactory;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 165
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/Analytics;->mFactories:Ljava/util/Map;

    const-string/jumbo v2, "page"

    new-instance v3, Lcom/microsoft/appcenter/analytics/ingestion/models/json/PageLogFactory;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/microsoft/appcenter/analytics/ingestion/models/json/PageLogFactory;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 166
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/Analytics;->mFactories:Ljava/util/Map;

    const-string/jumbo v2, "event"

    new-instance v3, Lcom/microsoft/appcenter/analytics/ingestion/models/json/EventLogFactory;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/microsoft/appcenter/analytics/ingestion/models/json/EventLogFactory;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 167
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/Analytics;->mFactories:Ljava/util/Map;

    const-string/jumbo v2, "commonSchemaEvent"

    new-instance v3, Lcom/microsoft/appcenter/analytics/ingestion/models/one/json/CommonSchemaEventLogFactory;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/microsoft/appcenter/analytics/ingestion/models/one/json/CommonSchemaEventLogFactory;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 168
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/microsoft/appcenter/analytics/Analytics;->mTransmissionTargets:Ljava/util/Map;

    .line 169
    move-object v1, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/microsoft/appcenter/analytics/Analytics;->mTransmissionInterval:J

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/appcenter/analytics/Analytics;)Landroid/content/Context;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/Analytics;->mContext:Landroid/content/Context;

    move-object v0, v1

    .end local v0    # "x0":Lcom/microsoft/appcenter/analytics/Analytics;
    return-object v0
.end method

.method static synthetic access$100(Lcom/microsoft/appcenter/analytics/Analytics;)Lcom/microsoft/appcenter/channel/Channel;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/Analytics;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v0, v1

    .end local v0    # "x0":Lcom/microsoft/appcenter/analytics/Analytics;
    return-object v0
.end method

.method static synthetic access$1000(Lcom/microsoft/appcenter/analytics/Analytics;)Lcom/microsoft/appcenter/channel/Channel;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/Analytics;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v0, v1

    .end local v0    # "x0":Lcom/microsoft/appcenter/analytics/Analytics;
    return-object v0
.end method

.method static synthetic access$1100(Lcom/microsoft/appcenter/analytics/Analytics;)Lcom/microsoft/appcenter/channel/Channel;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/Analytics;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v0, v1

    .end local v0    # "x0":Lcom/microsoft/appcenter/analytics/Analytics;
    return-object v0
.end method

.method static synthetic access$1200(Lcom/microsoft/appcenter/analytics/Analytics;)Lcom/microsoft/appcenter/channel/Channel;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/Analytics;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v0, v1

    .end local v0    # "x0":Lcom/microsoft/appcenter/analytics/Analytics;
    return-object v0
.end method

.method static synthetic access$202(Lcom/microsoft/appcenter/analytics/Analytics;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 7

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/ref/WeakReference;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/microsoft/appcenter/analytics/Analytics;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    move-object v0, v2

    .end local v0    # "x0":Lcom/microsoft/appcenter/analytics/Analytics;
    return-object v0
.end method

.method static synthetic access$300(Lcom/microsoft/appcenter/analytics/Analytics;Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v1, p1

    .local v1, "x1":Landroid/app/Activity;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/microsoft/appcenter/analytics/Analytics;->processOnResume(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$400(Lcom/microsoft/appcenter/analytics/Analytics;)Lcom/microsoft/appcenter/analytics/channel/SessionTracker;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/Analytics;->mSessionTracker:Lcom/microsoft/appcenter/analytics/channel/SessionTracker;

    move-object v0, v1

    .end local v0    # "x0":Lcom/microsoft/appcenter/analytics/Analytics;
    return-object v0
.end method

.method static synthetic access$500(Lcom/microsoft/appcenter/analytics/Analytics;)Lcom/microsoft/appcenter/analytics/channel/AnalyticsListener;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/Analytics;->mAnalyticsListener:Lcom/microsoft/appcenter/analytics/channel/AnalyticsListener;

    move-object v0, v1

    .end local v0    # "x0":Lcom/microsoft/appcenter/analytics/Analytics;
    return-object v0
.end method

.method static synthetic access$600(Lcom/microsoft/appcenter/analytics/Analytics;)Z
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/microsoft/appcenter/analytics/Analytics;->mStartedFromApp:Z

    move v0, v1

    .end local v0    # "x0":Lcom/microsoft/appcenter/analytics/Analytics;
    return v0
.end method

.method static synthetic access$700(Lcom/microsoft/appcenter/analytics/Analytics;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/String;
    move-object v2, p2

    .local v2, "x2":Ljava/util/Map;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/microsoft/appcenter/analytics/Analytics;->queuePage(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$800(Lcom/microsoft/appcenter/analytics/Analytics;)Lcom/microsoft/appcenter/channel/Channel;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/Analytics;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v0, v1

    .end local v0    # "x0":Lcom/microsoft/appcenter/analytics/Analytics;
    return-object v0
.end method

.method static synthetic access$900(Lcom/microsoft/appcenter/analytics/Analytics;)Lcom/microsoft/appcenter/channel/Channel;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/Analytics;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v0, v1

    .end local v0    # "x0":Lcom/microsoft/appcenter/analytics/Analytics;
    return-object v0
.end method

.method private static convertProperties(Lcom/microsoft/appcenter/analytics/EventProperties;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/appcenter/analytics/EventProperties;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 482
    move-object v0, p0

    .local v0, "properties":Lcom/microsoft/appcenter/analytics/EventProperties;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 483
    const/4 v1, 0x0

    move-object v0, v1

    .line 487
    .end local v0    # "properties":Lcom/microsoft/appcenter/analytics/EventProperties;
    :goto_0
    return-object v0

    .restart local v0    # "properties":Lcom/microsoft/appcenter/analytics/EventProperties;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-virtual {v3}, Lcom/microsoft/appcenter/analytics/EventProperties;->getProperties()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static convertProperties(Ljava/util/Map;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 497
    move-object v0, p0

    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v5, v0

    if-nez v5, :cond_0

    .line 498
    const/4 v5, 0x0

    move-object v0, v5

    .line 507
    .end local v0    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v1, "typedProperties":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;>;"
    :goto_0
    return-object v0

    .line 500
    .end local v1    # "typedProperties":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;>;"
    .restart local v0    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v5

    .line 501
    .restart local v1    # "typedProperties":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;>;"
    move-object v5, v0

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_1
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    move-object v3, v5

    .line 502
    .local v3, "property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;-><init>()V

    move-object v4, v5

    .line 503
    .local v4, "typedProperty":Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;
    move-object v5, v4

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;->setName(Ljava/lang/String;)V

    .line 504
    move-object v5, v4

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;->setValue(Ljava/lang/String;)V

    .line 505
    move-object v5, v1

    move-object v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 506
    goto :goto_1

    .line 507
    .end local v3    # "property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "typedProperty":Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;
    :cond_1
    move-object v5, v1

    move-object v0, v5

    goto :goto_0
.end method

.method private createAnalyticsTransmissionTarget(Ljava/lang/String;)Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    .locals 9

    .prologue
    .line 568
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v1, p1

    .local v1, "transmissionTargetToken":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;-><init>(Ljava/lang/String;Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;)V

    move-object v2, v3

    .line 569
    .local v2, "transmissionTarget":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    const-string/jumbo v3, "AppCenterAnalytics"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Created transmission target with token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    move-object v3, v0

    new-instance v4, Lcom/microsoft/appcenter/analytics/Analytics$1;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/microsoft/appcenter/analytics/Analytics$1;-><init>(Lcom/microsoft/appcenter/analytics/Analytics;Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;)V

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/analytics/Analytics;->postCommandEvenIfDisabled(Ljava/lang/Runnable;)V

    .line 577
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/Analytics;
    return-object v0
.end method

.method private static generatePageName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 527
    move-object v0, p0

    .local v0, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 528
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v3, "Activity"

    move-object v2, v3

    .line 529
    .local v2, "suffix":Ljava/lang/String;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 530
    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 532
    .end local v0    # "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v0

    .restart local v0    # "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    move-object v3, v1

    move-object v0, v3

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/microsoft/appcenter/analytics/Analytics;
    .locals 4

    .prologue
    .line 179
    const-class v2, Lcom/microsoft/appcenter/analytics/Analytics;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/microsoft/appcenter/analytics/Analytics;->sInstance:Lcom/microsoft/appcenter/analytics/Analytics;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Lcom/microsoft/appcenter/analytics/Analytics;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lcom/microsoft/appcenter/analytics/Analytics;-><init>()V

    sput-object v0, Lcom/microsoft/appcenter/analytics/Analytics;->sInstance:Lcom/microsoft/appcenter/analytics/Analytics;

    .line 182
    :cond_0
    sget-object v0, Lcom/microsoft/appcenter/analytics/Analytics;->sInstance:Lcom/microsoft/appcenter/analytics/Analytics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private declared-synchronized getInstanceTransmissionTarget(Ljava/lang/String;)Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    .locals 8

    .prologue
    .line 543
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v1, p1

    .local v1, "transmissionTargetToken":Ljava/lang/String;
    move-object v6, p0

    monitor-enter v6

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 544
    :cond_0
    const-string/jumbo v3, "AppCenterAnalytics"

    const-string/jumbo v4, "Transmission target token may not be null or empty."

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    const/4 v3, 0x0

    move-object v0, v3

    .line 557
    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/Analytics;
    :goto_0
    monitor-exit v6

    return-object v0

    .line 546
    .restart local v0    # "this":Lcom/microsoft/appcenter/analytics/Analytics;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->isConfigured()Z

    move-result v3

    if-nez v3, :cond_2

    .line 547
    const-string/jumbo v3, "AppCenterAnalytics"

    const-string/jumbo v4, "Cannot create transmission target, AppCenter is not configured or started."

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 550
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/Analytics;->mTransmissionTargets:Ljava/util/Map;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    move-object v2, v3

    .line 551
    .local v2, "transmissionTarget":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    move-object v3, v2

    if-eqz v3, :cond_3

    .line 552
    const-string/jumbo v3, "AppCenterAnalytics"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Returning transmission target found with token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 555
    :cond_3
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/microsoft/appcenter/analytics/Analytics;->createAnalyticsTransmissionTarget(Ljava/lang/String;)Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    move-result-object v3

    move-object v2, v3

    .line 556
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/Analytics;->mTransmissionTargets:Ljava/util/Map;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 557
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 543
    .end local v2    # "transmissionTarget":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/Analytics;
    throw v0
.end method

.method public static getTransmissionTarget(Ljava/lang/String;)Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    .locals 3

    .prologue
    .line 517
    move-object v0, p0

    .local v0, "transmissionTargetToken":Ljava/lang/String;
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v1

    move-object v2, v0

    invoke-direct {v1, v2}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstanceTransmissionTarget(Ljava/lang/String;)Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "transmissionTargetToken":Ljava/lang/String;
    return-object v0
.end method

.method protected static isAutoPageTrackingEnabled()Z
    .locals 1

    .prologue
    .line 267
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v0

    invoke-direct {v0}, Lcom/microsoft/appcenter/analytics/Analytics;->isInstanceAutoPageTrackingEnabled()Z

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
    .line 197
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/appcenter/analytics/Analytics;->isInstanceEnabledAsync()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object v0

    return-object v0
.end method

.method private isInstanceAutoPageTrackingEnabled()Z
    .locals 2

    .prologue
    .line 843
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/microsoft/appcenter/analytics/Analytics;->mAutoPageTrackingEnabled:Z

    move v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/Analytics;
    return v0
.end method

.method public static pause()V
    .locals 1

    .prologue
    .line 233
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v0

    invoke-direct {v0}, Lcom/microsoft/appcenter/analytics/Analytics;->pauseInstanceAsync()V

    .line 234
    return-void
.end method

.method private declared-synchronized pauseInstanceAsync()V
    .locals 7

    .prologue
    .line 864
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v5, p0

    monitor-enter v5

    move-object v1, v0

    :try_start_0
    new-instance v2, Lcom/microsoft/appcenter/analytics/Analytics$9;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/microsoft/appcenter/analytics/Analytics$9;-><init>(Lcom/microsoft/appcenter/analytics/Analytics;)V

    invoke-virtual {v1, v2}, Lcom/microsoft/appcenter/analytics/Analytics;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 872
    monitor-exit v5

    return-void

    .line 864
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/Analytics;
    throw v0
.end method

.method private processOnResume(Landroid/app/Activity;)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 637
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v1, p1

    .local v1, "activity":Landroid/app/Activity;
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/analytics/Analytics;->mSessionTracker:Lcom/microsoft/appcenter/analytics/channel/SessionTracker;

    if-eqz v2, :cond_0

    .line 638
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/analytics/Analytics;->mSessionTracker:Lcom/microsoft/appcenter/analytics/channel/SessionTracker;

    invoke-virtual {v2}, Lcom/microsoft/appcenter/analytics/channel/SessionTracker;->onActivityResumed()V

    .line 639
    move-object v2, v0

    iget-boolean v2, v2, Lcom/microsoft/appcenter/analytics/Analytics;->mAutoPageTrackingEnabled:Z

    if-eqz v2, :cond_0

    .line 640
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/appcenter/analytics/Analytics;->generatePageName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/microsoft/appcenter/analytics/Analytics;->queuePage(Ljava/lang/String;Ljava/util/Map;)V

    .line 643
    :cond_0
    return-void
.end method

.method private queuePage(Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

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
    .line 791
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Lcom/microsoft/appcenter/analytics/ingestion/models/PageLog;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Lcom/microsoft/appcenter/analytics/ingestion/models/PageLog;-><init>()V

    move-object v3, v4

    .line 792
    .local v3, "pageLog":Lcom/microsoft/appcenter/analytics/ingestion/models/PageLog;
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/microsoft/appcenter/analytics/ingestion/models/PageLog;->setName(Ljava/lang/String;)V

    .line 793
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/microsoft/appcenter/analytics/ingestion/models/PageLog;->setProperties(Ljava/util/Map;)V

    .line 794
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/analytics/Analytics;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v5, v3

    const-string/jumbo v6, "group_analytics"

    const/4 v7, 0x1

    invoke-interface {v4, v5, v6, v7}, Lcom/microsoft/appcenter/channel/Channel;->enqueue(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;I)V

    .line 795
    return-void
.end method

.method public static resume()V
    .locals 1

    .prologue
    .line 241
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v0

    invoke-direct {v0}, Lcom/microsoft/appcenter/analytics/Analytics;->resumeInstanceAsync()V

    .line 242
    return-void
.end method

.method private declared-synchronized resumeInstanceAsync()V
    .locals 7

    .prologue
    .line 878
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v5, p0

    monitor-enter v5

    move-object v1, v0

    :try_start_0
    new-instance v2, Lcom/microsoft/appcenter/analytics/Analytics$10;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/microsoft/appcenter/analytics/Analytics$10;-><init>(Lcom/microsoft/appcenter/analytics/Analytics;)V

    invoke-virtual {v1, v2}, Lcom/microsoft/appcenter/analytics/Analytics;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 886
    monitor-exit v5

    return-void

    .line 878
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/Analytics;
    throw v0
.end method

.method protected static setAutoPageTrackingEnabled(Z)V
    .locals 3

    .prologue
    .line 281
    move v0, p0

    .local v0, "autoPageTrackingEnabled":Z
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v1

    move v2, v0

    invoke-direct {v1, v2}, Lcom/microsoft/appcenter/analytics/Analytics;->setInstanceAutoPageTrackingEnabled(Z)V

    .line 282
    return-void
.end method

.method private setDefaultTransmissionTarget(Ljava/lang/String;)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 913
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v1, p1

    .local v1, "transmissionTargetToken":Ljava/lang/String;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 914
    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/microsoft/appcenter/analytics/Analytics;->createAnalyticsTransmissionTarget(Ljava/lang/String;)Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    move-result-object v3

    iput-object v3, v2, Lcom/microsoft/appcenter/analytics/Analytics;->mDefaultTransmissionTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    .line 916
    :cond_0
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
    .line 209
    move v0, p0

    .local v0, "enabled":Z
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v1

    move v2, v0

    invoke-virtual {v1, v2}, Lcom/microsoft/appcenter/analytics/Analytics;->setInstanceEnabledAsync(Z)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "enabled":Z
    return-object v0
.end method

.method private declared-synchronized setInstanceAutoPageTrackingEnabled(Z)V
    .locals 5

    .prologue
    .line 850
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics;
    move v1, p1

    .local v1, "autoPageTrackingEnabled":Z
    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    move v3, v1

    :try_start_0
    iput-boolean v3, v2, Lcom/microsoft/appcenter/analytics/Analytics;->mAutoPageTrackingEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 851
    monitor-exit v4

    return-void

    .line 850
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/Analytics;
    throw v0
.end method

.method private declared-synchronized setInstanceListener(Lcom/microsoft/appcenter/analytics/channel/AnalyticsListener;)V
    .locals 5

    .prologue
    .line 857
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v1, p1

    .local v1, "listener":Lcom/microsoft/appcenter/analytics/channel/AnalyticsListener;
    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    move-object v3, v1

    :try_start_0
    iput-object v3, v2, Lcom/microsoft/appcenter/analytics/Analytics;->mAnalyticsListener:Lcom/microsoft/appcenter/analytics/channel/AnalyticsListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 858
    monitor-exit v4

    return-void

    .line 857
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/Analytics;
    throw v0
.end method

.method private setInstanceTransmissionInterval(I)Z
    .locals 12

    .prologue
    .line 926
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics;
    move v1, p1

    .local v1, "seconds":I
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/analytics/Analytics;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    if-eqz v2, :cond_0

    .line 927
    const-string/jumbo v2, "AppCenterAnalytics"

    const-string/jumbo v3, "Transmission interval should be set before the service is started."

    invoke-static {v2, v3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    const/4 v2, 0x0

    move v0, v2

    .line 939
    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/Analytics;
    :goto_0
    return v0

    .line 930
    .restart local v0    # "this":Lcom/microsoft/appcenter/analytics/Analytics;
    :cond_0
    move v2, v1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    move v2, v1

    const v3, 0x15180

    if-le v2, v3, :cond_2

    .line 931
    :cond_1
    const-string/jumbo v2, "AppCenterAnalytics"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v4, "The transmission interval is invalid. The value should be between %d seconds and %d seconds (%d day)."

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x0

    const/4 v8, 0x3

    .line 933
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x1

    const v8, 0x15180

    .line 934
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x2

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v9, 0x15180

    .line 935
    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    .line 931
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 938
    :cond_2
    move-object v2, v0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move v4, v1

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/microsoft/appcenter/analytics/Analytics;->mTransmissionInterval:J

    .line 939
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method protected static setListener(Lcom/microsoft/appcenter/analytics/channel/AnalyticsListener;)V
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "listener":Lcom/microsoft/appcenter/analytics/channel/AnalyticsListener;
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v1

    move-object v2, v0

    invoke-direct {v1, v2}, Lcom/microsoft/appcenter/analytics/Analytics;->setInstanceListener(Lcom/microsoft/appcenter/analytics/channel/AnalyticsListener;)V

    .line 255
    return-void
.end method

.method public static setTransmissionInterval(I)Z
    .locals 3

    .prologue
    .line 220
    move v0, p0

    .local v0, "seconds":I
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v1

    move v2, v0

    invoke-direct {v1, v2}, Lcom/microsoft/appcenter/analytics/Analytics;->setInstanceTransmissionInterval(I)Z

    move-result v1

    move v0, v1

    .end local v0    # "seconds":I
    return v0
.end method

.method private startAppLevelFeatures()V
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 737
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v2, v0

    iget-boolean v2, v2, Lcom/microsoft/appcenter/analytics/Analytics;->mStartedFromApp:Z

    if-eqz v2, :cond_1

    .line 740
    move-object v2, v0

    new-instance v3, Lcom/microsoft/appcenter/analytics/channel/AnalyticsValidator;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lcom/microsoft/appcenter/analytics/channel/AnalyticsValidator;-><init>()V

    iput-object v3, v2, Lcom/microsoft/appcenter/analytics/Analytics;->mAnalyticsValidator:Lcom/microsoft/appcenter/analytics/channel/AnalyticsValidator;

    .line 741
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/analytics/Analytics;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/Analytics;->mAnalyticsValidator:Lcom/microsoft/appcenter/analytics/channel/AnalyticsValidator;

    invoke-interface {v2, v3}, Lcom/microsoft/appcenter/channel/Channel;->addListener(Lcom/microsoft/appcenter/channel/Channel$Listener;)V

    .line 744
    move-object v2, v0

    new-instance v3, Lcom/microsoft/appcenter/analytics/channel/SessionTracker;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/analytics/Analytics;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    const-string/jumbo v6, "group_analytics"

    invoke-direct {v4, v5, v6}, Lcom/microsoft/appcenter/analytics/channel/SessionTracker;-><init>(Lcom/microsoft/appcenter/channel/Channel;Ljava/lang/String;)V

    iput-object v3, v2, Lcom/microsoft/appcenter/analytics/Analytics;->mSessionTracker:Lcom/microsoft/appcenter/analytics/channel/SessionTracker;

    .line 745
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/analytics/Analytics;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/Analytics;->mSessionTracker:Lcom/microsoft/appcenter/analytics/channel/SessionTracker;

    invoke-interface {v2, v3}, Lcom/microsoft/appcenter/channel/Channel;->addListener(Lcom/microsoft/appcenter/channel/Channel$Listener;)V

    .line 748
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/analytics/Analytics;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 749
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/analytics/Analytics;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    move-object v1, v2

    .line 750
    .local v1, "activity":Landroid/app/Activity;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 751
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/microsoft/appcenter/analytics/Analytics;->processOnResume(Landroid/app/Activity;)V

    .line 756
    .end local v1    # "activity":Landroid/app/Activity;
    :cond_0
    move-object v2, v0

    invoke-static {}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->getChannelListener()Lcom/microsoft/appcenter/channel/Channel$Listener;

    move-result-object v3

    iput-object v3, v2, Lcom/microsoft/appcenter/analytics/Analytics;->mAnalyticsTransmissionTargetListener:Lcom/microsoft/appcenter/channel/Channel$Listener;

    .line 757
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/analytics/Analytics;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/Analytics;->mAnalyticsTransmissionTargetListener:Lcom/microsoft/appcenter/channel/Channel$Listener;

    invoke-interface {v2, v3}, Lcom/microsoft/appcenter/channel/Channel;->addListener(Lcom/microsoft/appcenter/channel/Channel$Listener;)V

    .line 759
    :cond_1
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/microsoft/appcenter/analytics/Analytics;->trackEvent(Ljava/lang/String;Lcom/microsoft/appcenter/analytics/EventProperties;Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;I)V

    .line 328
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Lcom/microsoft/appcenter/analytics/EventProperties;)V
    .locals 5

    .prologue
    .line 427
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v1, p1

    .local v1, "properties":Lcom/microsoft/appcenter/analytics/EventProperties;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/analytics/Analytics;->trackEvent(Ljava/lang/String;Lcom/microsoft/appcenter/analytics/EventProperties;I)V

    .line 428
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Lcom/microsoft/appcenter/analytics/EventProperties;I)V
    .locals 7

    .prologue
    .line 465
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v1, p1

    .local v1, "properties":Lcom/microsoft/appcenter/analytics/EventProperties;
    move v2, p2

    .local v2, "flags":I
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    move v6, v2

    invoke-static {v3, v4, v5, v6}, Lcom/microsoft/appcenter/analytics/Analytics;->trackEvent(Ljava/lang/String;Lcom/microsoft/appcenter/analytics/EventProperties;Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;I)V

    .line 466
    return-void
.end method

.method static trackEvent(Ljava/lang/String;Lcom/microsoft/appcenter/analytics/EventProperties;Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;I)V
    .locals 9

    .prologue
    .line 472
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v1, p1

    .local v1, "properties":Lcom/microsoft/appcenter/analytics/EventProperties;
    move-object v2, p2

    .local v2, "transmissionTarget":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    move v3, p3

    .local v3, "flags":I
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v4

    move-object v5, v0

    move-object v6, v1

    invoke-static {v6}, Lcom/microsoft/appcenter/analytics/Analytics;->convertProperties(Lcom/microsoft/appcenter/analytics/EventProperties;)Ljava/util/List;

    move-result-object v6

    move-object v7, v2

    move v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/microsoft/appcenter/analytics/Analytics;->trackEventAsync(Ljava/lang/String;Ljava/util/List;Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;I)V

    .line 473
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/util/Map;)V
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
    .line 358
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v1, p1

    .local v1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Lcom/microsoft/appcenter/analytics/Analytics;->convertProperties(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/microsoft/appcenter/analytics/Analytics;->trackEventAsync(Ljava/lang/String;Ljava/util/List;Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;I)V

    .line 359
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/util/Map;I)V
    .locals 8
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
    .line 394
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v1, p1

    .local v1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move v2, p2

    .local v2, "flags":I
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v3

    move-object v4, v0

    move-object v5, v1

    invoke-static {v5}, Lcom/microsoft/appcenter/analytics/Analytics;->convertProperties(Ljava/util/Map;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v2

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/microsoft/appcenter/analytics/Analytics;->trackEventAsync(Ljava/lang/String;Ljava/util/List;Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;I)V

    .line 395
    return-void
.end method

.method private declared-synchronized trackEventAsync(Ljava/lang/String;Ljava/util/List;Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;I)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;",
            ">;",
            "Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 806
    move-object/from16 v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object/from16 v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "properties":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;>;"
    move-object/from16 v3, p3

    .local v3, "transmissionTarget":Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    move/from16 v4, p4

    .local v4, "flags":I
    move-object/from16 v15, p0

    monitor-enter v15

    :try_start_0
    invoke-static {}, Lcom/microsoft/appcenter/utils/context/UserIdContext;->getInstance()Lcom/microsoft/appcenter/utils/context/UserIdContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/microsoft/appcenter/utils/context/UserIdContext;->getUserId()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 807
    .local v5, "userId":Ljava/lang/String;
    move-object v6, v0

    new-instance v7, Lcom/microsoft/appcenter/analytics/Analytics$8;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v9, v0

    move-object v10, v3

    move-object v11, v5

    move-object v12, v1

    move-object v13, v2

    move v14, v4

    invoke-direct/range {v8 .. v14}, Lcom/microsoft/appcenter/analytics/Analytics$8;-><init>(Lcom/microsoft/appcenter/analytics/Analytics;Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    invoke-virtual {v6, v7}, Lcom/microsoft/appcenter/analytics/Analytics;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 837
    monitor-exit v15

    return-void

    .line 806
    .end local v5    # "userId":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v15

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/Analytics;
    throw v0
.end method

.method protected static trackPage(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/analytics/Analytics;->trackPage(Ljava/lang/String;Ljava/util/Map;)V

    .line 294
    return-void
.end method

.method protected static trackPage(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
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
    .line 311
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v1, p1

    .local v1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lcom/microsoft/appcenter/analytics/Analytics;->trackPageAsync(Ljava/lang/String;Ljava/util/Map;)V

    .line 312
    return-void
.end method

.method private declared-synchronized trackPageAsync(Ljava/lang/String;Ljava/util/Map;)V
    .locals 12
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
    .line 770
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v10, p0

    monitor-enter v10

    move-object v4, v2

    if-eqz v4, :cond_0

    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v2

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :goto_0
    move-object v3, v4

    .line 771
    .local v3, "propertiesCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v4, v0

    new-instance v5, Lcom/microsoft/appcenter/analytics/Analytics$7;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    move-object v8, v1

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Lcom/microsoft/appcenter/analytics/Analytics$7;-><init>(Lcom/microsoft/appcenter/analytics/Analytics;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v4, v5}, Lcom/microsoft/appcenter/analytics/Analytics;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 784
    monitor-exit v10

    return-void

    .line 770
    .end local v3    # "propertiesCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v10

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/Analytics;
    throw v0
.end method

.method static declared-synchronized unsetInstance()V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 187
    const-class v1, Lcom/microsoft/appcenter/analytics/Analytics;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/microsoft/appcenter/analytics/Analytics;->sInstance:Lcom/microsoft/appcenter/analytics/Analytics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit v1

    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected declared-synchronized applyEnabledState(Z)V
    .locals 12

    .prologue
    .line 702
    move-object v1, p0

    .local v1, "this":Lcom/microsoft/appcenter/analytics/Analytics;
    move v2, p1

    .local v2, "enabled":Z
    move-object v11, p0

    monitor-enter v11

    move v3, v2

    if-eqz v3, :cond_1

    .line 703
    move-object v3, v1

    :try_start_0
    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/Analytics;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    const-string/jumbo v4, "group_analytics_critical"

    move-object v5, v1

    invoke-virtual {v5}, Lcom/microsoft/appcenter/analytics/Analytics;->getTriggerCount()I

    move-result v5

    const-wide/16 v6, 0xbb8

    move-object v8, v1

    invoke-virtual {v8}, Lcom/microsoft/appcenter/analytics/Analytics;->getTriggerMaxParallelRequests()I

    move-result v8

    const/4 v9, 0x0

    move-object v10, v1

    invoke-virtual {v10}, Lcom/microsoft/appcenter/analytics/Analytics;->getChannelListener()Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    move-result-object v10

    invoke-interface/range {v3 .. v10}, Lcom/microsoft/appcenter/channel/Channel;->addGroup(Ljava/lang/String;IJILcom/microsoft/appcenter/ingestion/Ingestion;Lcom/microsoft/appcenter/channel/Channel$GroupListener;)V

    .line 706
    move-object v3, v1

    invoke-direct {v3}, Lcom/microsoft/appcenter/analytics/Analytics;->startAppLevelFeatures()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 728
    :cond_0
    :goto_0
    monitor-exit v11

    return-void

    .line 711
    :cond_1
    move-object v3, v1

    :try_start_1
    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/Analytics;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    const-string/jumbo v4, "group_analytics_critical"

    invoke-interface {v3, v4}, Lcom/microsoft/appcenter/channel/Channel;->removeGroup(Ljava/lang/String;)V

    .line 714
    move-object v3, v1

    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/Analytics;->mAnalyticsValidator:Lcom/microsoft/appcenter/analytics/channel/AnalyticsValidator;

    if-eqz v3, :cond_2

    .line 715
    move-object v3, v1

    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/Analytics;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v4, v1

    iget-object v4, v4, Lcom/microsoft/appcenter/analytics/Analytics;->mAnalyticsValidator:Lcom/microsoft/appcenter/analytics/channel/AnalyticsValidator;

    invoke-interface {v3, v4}, Lcom/microsoft/appcenter/channel/Channel;->removeListener(Lcom/microsoft/appcenter/channel/Channel$Listener;)V

    .line 716
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/microsoft/appcenter/analytics/Analytics;->mAnalyticsValidator:Lcom/microsoft/appcenter/analytics/channel/AnalyticsValidator;

    .line 718
    :cond_2
    move-object v3, v1

    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/Analytics;->mSessionTracker:Lcom/microsoft/appcenter/analytics/channel/SessionTracker;

    if-eqz v3, :cond_3

    .line 719
    move-object v3, v1

    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/Analytics;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v4, v1

    iget-object v4, v4, Lcom/microsoft/appcenter/analytics/Analytics;->mSessionTracker:Lcom/microsoft/appcenter/analytics/channel/SessionTracker;

    invoke-interface {v3, v4}, Lcom/microsoft/appcenter/channel/Channel;->removeListener(Lcom/microsoft/appcenter/channel/Channel$Listener;)V

    .line 720
    move-object v3, v1

    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/Analytics;->mSessionTracker:Lcom/microsoft/appcenter/analytics/channel/SessionTracker;

    invoke-virtual {v3}, Lcom/microsoft/appcenter/analytics/channel/SessionTracker;->clearSessions()V

    .line 721
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/microsoft/appcenter/analytics/Analytics;->mSessionTracker:Lcom/microsoft/appcenter/analytics/channel/SessionTracker;

    .line 723
    :cond_3
    move-object v3, v1

    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/Analytics;->mAnalyticsTransmissionTargetListener:Lcom/microsoft/appcenter/channel/Channel$Listener;

    if-eqz v3, :cond_0

    .line 724
    move-object v3, v1

    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/Analytics;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v4, v1

    iget-object v4, v4, Lcom/microsoft/appcenter/analytics/Analytics;->mAnalyticsTransmissionTargetListener:Lcom/microsoft/appcenter/channel/Channel$Listener;

    invoke-interface {v3, v4}, Lcom/microsoft/appcenter/channel/Channel;->removeListener(Lcom/microsoft/appcenter/channel/Channel$Listener;)V

    .line 725
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/microsoft/appcenter/analytics/Analytics;->mAnalyticsTransmissionTargetListener:Lcom/microsoft/appcenter/channel/Channel$Listener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 702
    :catchall_0
    move-exception v1

    monitor-exit v11

    .end local v1    # "this":Lcom/microsoft/appcenter/analytics/Analytics;
    throw v1
.end method

.method protected getChannelListener()Lcom/microsoft/appcenter/channel/Channel$GroupListener;
    .locals 5

    .prologue
    .line 668
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics;
    new-instance v1, Lcom/microsoft/appcenter/analytics/Analytics$6;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/microsoft/appcenter/analytics/Analytics$6;-><init>(Lcom/microsoft/appcenter/analytics/Analytics;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/Analytics;
    return-object v0
.end method

.method getCurrentActivity()Ljava/lang/ref/WeakReference;
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 890
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/Analytics;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/Analytics;
    return-object v0
.end method

.method getEnabledPreferenceKeyPrefix()Ljava/lang/String;
    .locals 4

    .prologue
    .line 982
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    invoke-virtual {v2}, Lcom/microsoft/appcenter/analytics/Analytics;->getEnabledPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/Analytics;
    return-object v0
.end method

.method protected getGroupName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 587
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics;
    const-string/jumbo v1, "group_analytics"

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/Analytics;
    return-object v0
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
    .line 602
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/Analytics;->mFactories:Ljava/util/Map;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/Analytics;
    return-object v0
.end method

.method protected getLoggerTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 597
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics;
    const-string/jumbo v1, "AppCenterAnalytics"

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/Analytics;
    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 592
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics;
    const-string/jumbo v1, "Analytics"

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/Analytics;
    return-object v0
.end method

.method protected getTriggerInterval()J
    .locals 3

    .prologue
    .line 626
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v1, v0

    iget-wide v1, v1, Lcom/microsoft/appcenter/analytics/Analytics;->mTransmissionInterval:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/Analytics;
    return-wide v0
.end method

.method public isAppSecretRequired()Z
    .locals 2

    .prologue
    .line 582
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/Analytics;
    return v0
.end method

.method public declared-synchronized onActivityPaused(Landroid/app/Activity;)V
    .locals 10

    .prologue
    .line 647
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v1, p1

    .local v1, "activity":Landroid/app/Activity;
    move-object v8, p0

    monitor-enter v8

    :try_start_0
    new-instance v3, Lcom/microsoft/appcenter/analytics/Analytics$4;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/microsoft/appcenter/analytics/Analytics$4;-><init>(Lcom/microsoft/appcenter/analytics/Analytics;)V

    move-object v2, v3

    .line 654
    .local v2, "updateCurrentActivityRunnable":Ljava/lang/Runnable;
    move-object v3, v0

    new-instance v4, Lcom/microsoft/appcenter/analytics/Analytics$5;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/microsoft/appcenter/analytics/Analytics$5;-><init>(Lcom/microsoft/appcenter/analytics/Analytics;Ljava/lang/Runnable;)V

    move-object v5, v2

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lcom/microsoft/appcenter/analytics/Analytics;->post(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 664
    monitor-exit v8

    return-void

    .line 647
    .end local v2    # "updateCurrentActivityRunnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception v0

    monitor-exit v8

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/Analytics;
    throw v0
.end method

.method public declared-synchronized onActivityResumed(Landroid/app/Activity;)V
    .locals 11

    .prologue
    .line 607
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v1, p1

    .local v1, "activity":Landroid/app/Activity;
    move-object v9, p0

    monitor-enter v9

    :try_start_0
    new-instance v3, Lcom/microsoft/appcenter/analytics/Analytics$2;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/microsoft/appcenter/analytics/Analytics$2;-><init>(Lcom/microsoft/appcenter/analytics/Analytics;Landroid/app/Activity;)V

    move-object v2, v3

    .line 614
    .local v2, "updateCurrentActivityRunnable":Ljava/lang/Runnable;
    move-object v3, v0

    new-instance v4, Lcom/microsoft/appcenter/analytics/Analytics$3;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v2

    move-object v8, v1

    invoke-direct {v5, v6, v7, v8}, Lcom/microsoft/appcenter/analytics/Analytics$3;-><init>(Lcom/microsoft/appcenter/analytics/Analytics;Ljava/lang/Runnable;Landroid/app/Activity;)V

    move-object v5, v2

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lcom/microsoft/appcenter/analytics/Analytics;->post(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 622
    monitor-exit v9

    return-void

    .line 607
    .end local v2    # "updateCurrentActivityRunnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception v0

    monitor-exit v9

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/Analytics;
    throw v0
.end method

.method public onConfigurationUpdated(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 903
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v1, p1

    .local v1, "appSecret":Ljava/lang/String;
    move-object v2, p2

    .local v2, "transmissionTargetToken":Ljava/lang/String;
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/microsoft/appcenter/analytics/Analytics;->mStartedFromApp:Z

    .line 904
    move-object v3, v0

    invoke-direct {v3}, Lcom/microsoft/appcenter/analytics/Analytics;->startAppLevelFeatures()V

    .line 905
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/microsoft/appcenter/analytics/Analytics;->setDefaultTransmissionTarget(Ljava/lang/String;)V

    .line 906
    return-void
.end method

.method public declared-synchronized onStarted(Landroid/content/Context;Lcom/microsoft/appcenter/channel/Channel;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 13
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/appcenter/channel/Channel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 895
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "channel":Lcom/microsoft/appcenter/channel/Channel;
    move-object/from16 v3, p3

    .local v3, "appSecret":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "transmissionTargetToken":Ljava/lang/String;
    move/from16 v5, p5

    .local v5, "startedFromApp":Z
    move-object v12, p0

    monitor-enter v12

    move-object v6, v0

    move-object v7, v1

    :try_start_0
    iput-object v7, v6, Lcom/microsoft/appcenter/analytics/Analytics;->mContext:Landroid/content/Context;

    .line 896
    move-object v6, v0

    move v7, v5

    iput-boolean v7, v6, Lcom/microsoft/appcenter/analytics/Analytics;->mStartedFromApp:Z

    .line 897
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move v11, v5

    invoke-super/range {v6 .. v11}, Lcom/microsoft/appcenter/AbstractAppCenterService;->onStarted(Landroid/content/Context;Lcom/microsoft/appcenter/channel/Channel;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 898
    move-object v6, v0

    move-object v7, v4

    invoke-direct {v6, v7}, Lcom/microsoft/appcenter/analytics/Analytics;->setDefaultTransmissionTarget(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 899
    monitor-exit v12

    return-void

    .line 895
    :catchall_0
    move-exception v0

    monitor-exit v12

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/Analytics;
    throw v0
.end method

.method protected declared-synchronized post(Ljava/lang/Runnable;)V
    .locals 5

    .prologue
    .line 964
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v1, p1

    .local v1, "runnable":Ljava/lang/Runnable;
    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    move-object v3, v1

    :try_start_0
    invoke-super {v2, v3}, Lcom/microsoft/appcenter/AbstractAppCenterService;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 965
    monitor-exit v4

    return-void

    .line 964
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/Analytics;
    throw v0
.end method

.method postCommand(Ljava/lang/Runnable;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;Ljava/lang/Object;)V
    .locals 8
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
    .line 956
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v1, p1

    .local v1, "runnable":Ljava/lang/Runnable;
    move-object v2, p2

    .local v2, "future":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<TT;>;"
    move-object v3, p3

    .local v3, "valueIfDisabledOrNotStarted":Ljava/lang/Object;, "TT;"
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/microsoft/appcenter/analytics/Analytics;->postAsyncGetter(Ljava/lang/Runnable;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;Ljava/lang/Object;)V

    .line 957
    return-void
.end method

.method postCommandEvenIfDisabled(Ljava/lang/Runnable;)V
    .locals 6

    .prologue
    .line 973
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/Analytics;
    move-object v1, p1

    .local v1, "runnable":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/microsoft/appcenter/analytics/Analytics;->post(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)Z

    move-result v2

    .line 974
    return-void
.end method
