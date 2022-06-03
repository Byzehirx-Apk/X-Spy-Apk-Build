.class public Lcom/microsoft/appcenter/analytics/channel/AnalyticsValidator;
.super Lcom/microsoft/appcenter/channel/AbstractChannelListener;
.source "AnalyticsValidator.java"


# static fields
.field static final MAX_NAME_LENGTH:I = 0x100
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_PROPERTY_COUNT:I = 0x14
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_PROPERTY_ITEM_LENGTH:I = 0x7d
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/channel/AnalyticsValidator;
    move-object v1, v0

    invoke-direct {v1}, Lcom/microsoft/appcenter/channel/AbstractChannelListener;-><init>()V

    return-void
.end method

.method private static copyProperty(Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;Ljava/lang/String;)Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
    .locals 9

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "property":Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
    move-object v1, p1

    .local v1, "newKey":Ljava/lang/String;
    move-object v5, v0

    invoke-virtual {v5}, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;->getType()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 218
    .local v2, "type":Ljava/lang/String;
    const-string/jumbo v5, "boolean"

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 219
    new-instance v5, Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;-><init>()V

    move-object v4, v5

    .line 220
    .local v4, "typedCopy":Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;
    move-object v5, v4

    move-object v6, v0

    check-cast v6, Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;

    invoke-virtual {v6}, Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;->getValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;->setValue(Z)V

    .line 221
    move-object v5, v4

    move-object v3, v5

    .line 241
    .end local v4    # "typedCopy":Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;
    .local v3, "copy":Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
    :goto_0
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;->setName(Ljava/lang/String;)V

    .line 242
    move-object v5, v3

    move-object v0, v5

    .end local v0    # "property":Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
    return-object v0

    .line 222
    .end local v3    # "copy":Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
    .restart local v0    # "property":Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
    :cond_0
    const-string/jumbo v5, "dateTime"

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 223
    new-instance v5, Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;-><init>()V

    move-object v4, v5

    .line 224
    .local v4, "typedCopy":Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;
    move-object v5, v4

    move-object v6, v0

    check-cast v6, Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;

    invoke-virtual {v6}, Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;->getValue()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;->setValue(Ljava/util/Date;)V

    .line 225
    move-object v5, v4

    move-object v3, v5

    .line 226
    .restart local v3    # "copy":Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
    goto :goto_0

    .end local v3    # "copy":Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
    .end local v4    # "typedCopy":Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;
    :cond_1
    const-string/jumbo v5, "double"

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 227
    new-instance v5, Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;-><init>()V

    move-object v4, v5

    .line 228
    .local v4, "typedCopy":Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;
    move-object v5, v4

    move-object v6, v0

    check-cast v6, Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;

    invoke-virtual {v6}, Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;->getValue()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;->setValue(D)V

    .line 229
    move-object v5, v4

    move-object v3, v5

    .line 230
    .restart local v3    # "copy":Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
    goto :goto_0

    .end local v3    # "copy":Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
    .end local v4    # "typedCopy":Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;
    :cond_2
    const-string/jumbo v5, "long"

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 231
    new-instance v5, Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;-><init>()V

    move-object v4, v5

    .line 232
    .local v4, "typedCopy":Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;
    move-object v5, v4

    move-object v6, v0

    check-cast v6, Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;

    invoke-virtual {v6}, Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;->getValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;->setValue(J)V

    .line 233
    move-object v5, v4

    move-object v3, v5

    .line 234
    .restart local v3    # "copy":Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
    goto :goto_0

    .line 237
    .end local v3    # "copy":Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
    .end local v4    # "typedCopy":Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;
    :cond_3
    new-instance v5, Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;-><init>()V

    move-object v4, v5

    .line 238
    .local v4, "typedCopy":Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;
    move-object v5, v4

    move-object v6, v0

    check-cast v6, Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;

    invoke-virtual {v6}, Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;->setValue(Ljava/lang/String;)V

    .line 239
    move-object v5, v4

    move-object v3, v5

    .restart local v3    # "copy":Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
    goto/16 :goto_0
.end method

.method private validateLog(Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;)Z
    .locals 5
    .param p1    # Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/channel/AnalyticsValidator;
    move-object v1, p1

    .local v1, "log":Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;
    move-object v3, v1

    invoke-virtual {v3}, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/analytics/channel/AnalyticsValidator;->validateName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 76
    .local v2, "name":Ljava/lang/String;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 77
    const/4 v3, 0x0

    move v0, v3

    .line 81
    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/channel/AnalyticsValidator;
    :goto_0
    return v0

    .line 79
    .restart local v0    # "this":Lcom/microsoft/appcenter/analytics/channel/AnalyticsValidator;
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;->getTypedProperties()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/appcenter/analytics/channel/AnalyticsValidator;->validateProperties(Ljava/util/List;)V

    .line 80
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;->setName(Ljava/lang/String;)V

    .line 81
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method private validateLog(Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;)Z
    .locals 7
    .param p1    # Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/channel/AnalyticsValidator;
    move-object v1, p1

    .local v1, "log":Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;
    move-object v4, v1

    invoke-virtual {v4}, Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/microsoft/appcenter/analytics/channel/AnalyticsValidator;->validateName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 59
    .local v2, "name":Ljava/lang/String;
    move-object v4, v2

    if-nez v4, :cond_0

    .line 60
    const/4 v4, 0x0

    move v0, v4

    .line 65
    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/channel/AnalyticsValidator;
    :goto_0
    return v0

    .line 62
    .restart local v0    # "this":Lcom/microsoft/appcenter/analytics/channel/AnalyticsValidator;
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;->getProperties()Ljava/util/Map;

    move-result-object v4

    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v6}, Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/microsoft/appcenter/analytics/channel/AnalyticsValidator;->validateProperties(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    move-object v3, v4

    .line 63
    .local v3, "validatedProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;->setName(Ljava/lang/String;)V

    .line 64
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;->setProperties(Ljava/util/Map;)V

    .line 65
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method private static validateName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v1, p1

    .local v1, "logType":Ljava/lang/String;
    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    :cond_0
    const-string/jumbo v2, "AppCenterAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " name cannot be null or empty."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v2, 0x0

    move-object v0, v2

    .line 100
    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 96
    .restart local v0    # "name":Ljava/lang/String;
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x100

    if-le v2, v3, :cond_2

    .line 97
    const-string/jumbo v2, "AppCenterAnalytics"

    const-string/jumbo v3, "%s \'%s\' : name length cannot be longer than %s characters. Name will be truncated."

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v0

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x2

    const/16 v7, 0x100

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    move-object v2, v0

    const/4 v3, 0x0

    const/16 v4, 0x100

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 100
    :cond_2
    move-object v2, v0

    move-object v0, v2

    goto :goto_0
.end method

.method private static validateProperties(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v1, p1

    .local v1, "logName":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "logType":Ljava/lang/String;
    move-object v9, v0

    if-nez v9, :cond_0

    .line 113
    const/4 v9, 0x0

    move-object v0, v9

    .line 147
    .end local v0    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v0

    .line 116
    .restart local v0    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v9, Ljava/util/HashMap;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    move-object v4, v9

    .line 117
    .local v4, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v9, v0

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v5, v9

    :goto_1
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    move-object v6, v9

    .line 118
    .local v6, "property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v9, v6

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v7, v9

    .line 119
    .local v7, "key":Ljava/lang/String;
    move-object v9, v6

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v8, v9

    .line 120
    .local v8, "value":Ljava/lang/String;
    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    const/16 v10, 0x14

    if-lt v9, v10, :cond_2

    .line 121
    const-string/jumbo v9, "%s \'%s\' : properties cannot contain more than %s items. Skipping other properties."

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v2

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    move-object v13, v1

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x2

    const/16 v13, 0x14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 122
    .local v3, "message":Ljava/lang/String;
    const-string/jumbo v9, "AppCenterAnalytics"

    move-object v10, v3

    invoke-static {v9, v10}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 147
    .end local v3    # "message":Ljava/lang/String;
    .end local v6    # "property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_1
    move-object v9, v4

    move-object v0, v9

    goto :goto_0

    .line 125
    .restart local v6    # "property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "key":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    :cond_2
    move-object v9, v7

    if-eqz v9, :cond_3

    move-object v9, v7

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 126
    :cond_3
    const-string/jumbo v9, "%s \'%s\' : a property key cannot be null or empty. Property will be skipped."

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v2

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    move-object v13, v1

    aput-object v13, v11, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 127
    .restart local v3    # "message":Ljava/lang/String;
    const-string/jumbo v9, "AppCenterAnalytics"

    move-object v10, v3

    invoke-static {v9, v10}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    goto/16 :goto_1

    .line 130
    .end local v3    # "message":Ljava/lang/String;
    :cond_4
    move-object v9, v8

    if-nez v9, :cond_5

    .line 131
    const-string/jumbo v9, "%s \'%s\' : property \'%s\' : property value cannot be null. Property \'%s\' will be skipped."

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v2

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    move-object v13, v1

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x2

    move-object v13, v7

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x3

    move-object v13, v7

    aput-object v13, v11, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 132
    .restart local v3    # "message":Ljava/lang/String;
    const-string/jumbo v9, "AppCenterAnalytics"

    move-object v10, v3

    invoke-static {v9, v10}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    goto/16 :goto_1

    .line 135
    .end local v3    # "message":Ljava/lang/String;
    :cond_5
    move-object v9, v7

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x7d

    if-le v9, v10, :cond_6

    .line 136
    const-string/jumbo v9, "%s \'%s\' : property \'%s\' : property key length cannot be longer than %s characters. Property key will be truncated."

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v2

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    move-object v13, v1

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x2

    move-object v13, v7

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x3

    const/16 v13, 0x7d

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 137
    .restart local v3    # "message":Ljava/lang/String;
    const-string/jumbo v9, "AppCenterAnalytics"

    move-object v10, v3

    invoke-static {v9, v10}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    move-object v9, v7

    const/4 v10, 0x0

    const/16 v11, 0x7d

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 140
    .end local v3    # "message":Ljava/lang/String;
    :cond_6
    move-object v9, v8

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x7d

    if-le v9, v10, :cond_7

    .line 141
    const-string/jumbo v9, "%s \'%s\' : property \'%s\' : property value cannot be longer than %s characters. Property value will be truncated."

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v2

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    move-object v13, v1

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x2

    move-object v13, v7

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x3

    const/16 v13, 0x7d

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 142
    .restart local v3    # "message":Ljava/lang/String;
    const-string/jumbo v9, "AppCenterAnalytics"

    move-object v10, v3

    invoke-static {v9, v10}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    move-object v9, v8

    const/4 v10, 0x0

    const/16 v11, 0x7d

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 145
    .end local v3    # "message":Ljava/lang/String;
    :cond_7
    move-object v9, v4

    move-object v10, v7

    move-object v11, v8

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 146
    goto/16 :goto_1
.end method

.method private static validateProperties(Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    move-object/from16 v0, p0

    .local v0, "properties":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;>;"
    move-object v10, v0

    if-nez v10, :cond_0

    .line 157
    .line 213
    :goto_0
    return-void

    .line 159
    :cond_0
    const/4 v10, 0x0

    move v1, v10

    .line 160
    .local v1, "count":I
    const/4 v10, 0x0

    move v2, v10

    .line 162
    .local v2, "maxCountReached":Z
    move-object v10, v0

    invoke-interface {v10}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v10

    move-object v4, v10

    .local v4, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;>;"
    :goto_1
    move-object v10, v4

    invoke-interface {v10}, Ljava/util/ListIterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 163
    const/4 v10, 0x1

    move v5, v10

    .line 164
    .local v5, "copyNeededOnModification":Z
    move-object v10, v4

    invoke-interface {v10}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;

    move-object v6, v10

    .line 165
    .local v6, "property":Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
    move-object v10, v6

    invoke-virtual {v10}, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;->getName()Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 166
    .local v7, "key":Ljava/lang/String;
    move v10, v1

    const/16 v11, 0x14

    if-lt v10, v11, :cond_2

    .line 167
    move v10, v2

    if-nez v10, :cond_1

    .line 168
    const-string/jumbo v10, "Typed properties cannot contain more than %s items. Skipping other properties."

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    const/16 v14, 0x14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 169
    .local v3, "message":Ljava/lang/String;
    const-string/jumbo v10, "AppCenterAnalytics"

    move-object v11, v3

    invoke-static {v10, v11}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const/4 v10, 0x1

    move v2, v10

    .line 172
    .end local v3    # "message":Ljava/lang/String;
    :cond_1
    move-object v10, v4

    invoke-interface {v10}, Ljava/util/ListIterator;->remove()V

    .line 173
    goto :goto_1

    .line 175
    :cond_2
    move-object v10, v7

    if-eqz v10, :cond_3

    move-object v10, v7

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 176
    :cond_3
    const-string/jumbo v10, "AppCenterAnalytics"

    const-string/jumbo v11, "A typed property key cannot be null or empty. Property will be skipped."

    invoke-static {v10, v11}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    move-object v10, v4

    invoke-interface {v10}, Ljava/util/ListIterator;->remove()V

    .line 178
    goto :goto_1

    .line 180
    :cond_4
    move-object v10, v7

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x7d

    if-le v10, v11, :cond_5

    .line 181
    const-string/jumbo v10, "Typed property \'%s\' : property key length cannot be longer than %s characters. Property key will be truncated."

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move-object v14, v7

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x1

    const/16 v14, 0x7d

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 182
    .restart local v3    # "message":Ljava/lang/String;
    const-string/jumbo v10, "AppCenterAnalytics"

    move-object v11, v3

    invoke-static {v10, v11}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    move-object v10, v7

    const/4 v11, 0x0

    const/16 v12, 0x7d

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 184
    move-object v10, v6

    move-object v11, v7

    invoke-static {v10, v11}, Lcom/microsoft/appcenter/analytics/channel/AnalyticsValidator;->copyProperty(Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;Ljava/lang/String;)Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;

    move-result-object v10

    move-object v6, v10

    .line 185
    move-object v10, v4

    move-object v11, v6

    invoke-interface {v10, v11}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 186
    const/4 v10, 0x0

    move v5, v10

    .line 188
    .end local v3    # "message":Ljava/lang/String;
    :cond_5
    move-object v10, v6

    instance-of v10, v10, Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;

    if-eqz v10, :cond_7

    .line 189
    move-object v10, v6

    check-cast v10, Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;

    move-object v8, v10

    .line 190
    .local v8, "stringTypedProperty":Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;
    move-object v10, v8

    invoke-virtual {v10}, Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;->getValue()Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 191
    .local v9, "value":Ljava/lang/String;
    move-object v10, v9

    if-nez v10, :cond_6

    .line 192
    const-string/jumbo v10, "Typed property \'%s\' : property value cannot be null. Property \'%s\' will be skipped."

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move-object v14, v7

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x1

    move-object v14, v7

    aput-object v14, v12, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 193
    .restart local v3    # "message":Ljava/lang/String;
    const-string/jumbo v10, "AppCenterAnalytics"

    move-object v11, v3

    invoke-static {v10, v11}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    move-object v10, v4

    invoke-interface {v10}, Ljava/util/ListIterator;->remove()V

    .line 195
    goto/16 :goto_1

    .line 197
    .end local v3    # "message":Ljava/lang/String;
    :cond_6
    move-object v10, v9

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x7d

    if-le v10, v11, :cond_7

    .line 198
    const-string/jumbo v10, "A String property \'%s\' : property value cannot be longer than %s characters. Property value will be truncated."

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move-object v14, v7

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x1

    const/16 v14, 0x7d

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 199
    .restart local v3    # "message":Ljava/lang/String;
    const-string/jumbo v10, "AppCenterAnalytics"

    move-object v11, v3

    invoke-static {v10, v11}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    move-object v10, v9

    const/4 v11, 0x0

    const/16 v12, 0x7d

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 201
    move v10, v5

    if-eqz v10, :cond_8

    .line 202
    new-instance v10, Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;-><init>()V

    move-object v8, v10

    .line 203
    move-object v10, v8

    move-object v11, v7

    invoke-virtual {v10, v11}, Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;->setName(Ljava/lang/String;)V

    .line 204
    move-object v10, v8

    move-object v11, v9

    invoke-virtual {v10, v11}, Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;->setValue(Ljava/lang/String;)V

    .line 205
    move-object v10, v4

    move-object v11, v8

    invoke-interface {v10, v11}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 211
    .end local v3    # "message":Ljava/lang/String;
    .end local v8    # "stringTypedProperty":Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;
    .end local v9    # "value":Ljava/lang/String;
    :cond_7
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 212
    goto/16 :goto_1

    .line 207
    .restart local v3    # "message":Ljava/lang/String;
    .restart local v8    # "stringTypedProperty":Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;
    .restart local v9    # "value":Ljava/lang/String;
    :cond_8
    move-object v10, v8

    move-object v11, v9

    invoke-virtual {v10, v11}, Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;->setValue(Ljava/lang/String;)V

    goto :goto_2

    .line 213
    .end local v3    # "message":Ljava/lang/String;
    .end local v5    # "copyNeededOnModification":Z
    .end local v6    # "property":Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "stringTypedProperty":Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;
    .end local v9    # "value":Ljava/lang/String;
    :cond_9
    goto/16 :goto_0
.end method


# virtual methods
.method public shouldFilter(Lcom/microsoft/appcenter/ingestion/models/Log;)Z
    .locals 4
    .param p1    # Lcom/microsoft/appcenter/ingestion/models/Log;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/channel/AnalyticsValidator;
    move-object v1, p1

    .local v1, "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    move-object v2, v1

    instance-of v2, v2, Lcom/microsoft/appcenter/analytics/ingestion/models/PageLog;

    if-eqz v2, :cond_1

    .line 248
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;

    invoke-direct {v2, v3}, Lcom/microsoft/appcenter/analytics/channel/AnalyticsValidator;->validateLog(Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 252
    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/channel/AnalyticsValidator;
    :goto_1
    return v0

    .line 248
    .restart local v0    # "this":Lcom/microsoft/appcenter/analytics/channel/AnalyticsValidator;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 249
    :cond_1
    move-object v2, v1

    instance-of v2, v2, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;

    if-eqz v2, :cond_3

    .line 250
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;

    invoke-direct {v2, v3}, Lcom/microsoft/appcenter/analytics/channel/AnalyticsValidator;->validateLog(Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    move v0, v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 252
    :cond_3
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method
