.class public Lcom/microsoft/appcenter/analytics/EventProperties;
.super Ljava/lang/Object;
.source "EventProperties.java"


# static fields
.field private static final VALUE_NULL_ERROR_MESSAGE:Ljava/lang/String; = "Property value cannot be null"


# instance fields
.field private final mProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/EventProperties;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 35
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, v1, Lcom/microsoft/appcenter/analytics/EventProperties;->mProperties:Ljava/util/Map;

    return-void
.end method

.method private isValidKey(Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/EventProperties;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 145
    const-string/jumbo v2, "AppCenterAnalytics"

    const-string/jumbo v3, "Property key must not be null"

    invoke-static {v2, v3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const/4 v2, 0x0

    move v0, v2

    .line 151
    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/EventProperties;
    :goto_0
    return v0

    .line 148
    .restart local v0    # "this":Lcom/microsoft/appcenter/analytics/EventProperties;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/analytics/EventProperties;->mProperties:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    const-string/jumbo v2, "AppCenterAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Property \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\" is already set and will be overridden."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_1
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method private isValidValue(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/EventProperties;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 159
    const-string/jumbo v2, "AppCenterAnalytics"

    const-string/jumbo v3, "Property value cannot be null"

    invoke-static {v2, v3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const/4 v2, 0x0

    move v0, v2

    .line 162
    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/EventProperties;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/microsoft/appcenter/analytics/EventProperties;
    :cond_0
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method getProperties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/EventProperties;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/EventProperties;->mProperties:Ljava/util/Map;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/EventProperties;
    return-object v0
.end method

.method public set(Ljava/lang/String;D)Lcom/microsoft/appcenter/analytics/EventProperties;
    .locals 10

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/EventProperties;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-wide v2, p2

    .local v2, "value":D
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/microsoft/appcenter/analytics/EventProperties;->isValidKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 90
    move-wide v5, v2

    invoke-static {v5, v6}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-nez v5, :cond_0

    move-wide v5, v2

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 91
    :cond_0
    const-string/jumbo v5, "AppCenterAnalytics"

    const-string/jumbo v6, "Double property value cannot be NaN or infinite."

    invoke-static {v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_1
    :goto_0
    move-object v5, v0

    move-object v0, v5

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/EventProperties;
    return-object v0

    .line 93
    .restart local v0    # "this":Lcom/microsoft/appcenter/analytics/EventProperties;
    :cond_2
    new-instance v5, Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;-><init>()V

    move-object v4, v5

    .line 94
    .local v4, "property":Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;->setName(Ljava/lang/String;)V

    .line 95
    move-object v5, v4

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;->setValue(D)V

    .line 96
    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/analytics/EventProperties;->mProperties:Ljava/util/Map;

    move-object v6, v1

    move-object v7, v4

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0
.end method

.method public set(Ljava/lang/String;J)Lcom/microsoft/appcenter/analytics/EventProperties;
    .locals 10

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/EventProperties;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-wide v2, p2

    .local v2, "value":J
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/microsoft/appcenter/analytics/EventProperties;->isValidKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 113
    new-instance v5, Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;-><init>()V

    move-object v4, v5

    .line 114
    .local v4, "property":Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;->setName(Ljava/lang/String;)V

    .line 115
    move-object v5, v4

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;->setValue(J)V

    .line 116
    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/analytics/EventProperties;->mProperties:Ljava/util/Map;

    move-object v6, v1

    move-object v7, v4

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 118
    .end local v4    # "property":Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;
    :cond_0
    move-object v5, v0

    move-object v0, v5

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/EventProperties;
    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/analytics/EventProperties;
    .locals 8

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/EventProperties;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/microsoft/appcenter/analytics/EventProperties;->isValidKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/microsoft/appcenter/analytics/EventProperties;->isValidValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    new-instance v4, Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;-><init>()V

    move-object v3, v4

    .line 133
    .local v3, "property":Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;->setName(Ljava/lang/String;)V

    .line 134
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;->setValue(Ljava/lang/String;)V

    .line 135
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/analytics/EventProperties;->mProperties:Ljava/util/Map;

    move-object v5, v1

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 137
    .end local v3    # "property":Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;
    :cond_0
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/EventProperties;
    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/util/Date;)Lcom/microsoft/appcenter/analytics/EventProperties;
    .locals 8

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/EventProperties;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/util/Date;
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/microsoft/appcenter/analytics/EventProperties;->isValidKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/microsoft/appcenter/analytics/EventProperties;->isValidValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 71
    new-instance v4, Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;-><init>()V

    move-object v3, v4

    .line 72
    .local v3, "property":Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;->setName(Ljava/lang/String;)V

    .line 73
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;->setValue(Ljava/util/Date;)V

    .line 74
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/analytics/EventProperties;->mProperties:Ljava/util/Map;

    move-object v5, v1

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 76
    .end local v3    # "property":Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;
    :cond_0
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/EventProperties;
    return-object v0
.end method

.method public set(Ljava/lang/String;Z)Lcom/microsoft/appcenter/analytics/EventProperties;
    .locals 8

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/EventProperties;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move v2, p2

    .local v2, "value":Z
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/microsoft/appcenter/analytics/EventProperties;->isValidKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    new-instance v4, Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;-><init>()V

    move-object v3, v4

    .line 53
    .local v3, "property":Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;->setName(Ljava/lang/String;)V

    .line 54
    move-object v4, v3

    move v5, v2

    invoke-virtual {v4, v5}, Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;->setValue(Z)V

    .line 55
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/analytics/EventProperties;->mProperties:Ljava/util/Map;

    move-object v5, v1

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 57
    .end local v3    # "property":Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;
    :cond_0
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/EventProperties;
    return-object v0
.end method
