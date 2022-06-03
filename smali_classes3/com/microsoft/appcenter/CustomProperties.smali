.class public Lcom/microsoft/appcenter/CustomProperties;
.super Ljava/lang/Object;
.source "CustomProperties.java"


# static fields
.field private static final KEY_PATTERN:Ljava/util/regex/Pattern;

.field static final MAX_PROPERTIES_COUNT:I = 0x3c
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_PROPERTY_KEY_LENGTH:I = 0x80
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final MAX_PROPERTY_VALUE_LENGTH:I = 0x80

.field private static final VALUE_NULL_ERROR_MESSAGE:Ljava/lang/String; = "Custom property value cannot be null, did you mean to call clear?"


# instance fields
.field private final mProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, "^[a-zA-Z][a-zA-Z0-9]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/microsoft/appcenter/CustomProperties;->KEY_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/CustomProperties;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 41
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/microsoft/appcenter/CustomProperties;->mProperties:Ljava/util/Map;

    return-void
.end method

.method private addProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/CustomProperties;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/CustomProperties;->mProperties:Ljava/util/Map;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/CustomProperties;->mProperties:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    const/16 v4, 0x3c

    if-ge v3, v4, :cond_1

    .line 137
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/CustomProperties;->mProperties:Ljava/util/Map;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_1
    const-string/jumbo v3, "AppCenter"

    const-string/jumbo v4, "Custom properties cannot contain more than 60 items"

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isValidKey(Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/CustomProperties;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, v1

    if-eqz v2, :cond_0

    sget-object v2, Lcom/microsoft/appcenter/CustomProperties;->KEY_PATTERN:Ljava/util/regex/Pattern;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_1

    .line 145
    :cond_0
    const-string/jumbo v2, "AppCenter"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Custom property \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\" must match \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/microsoft/appcenter/CustomProperties;->KEY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const/4 v2, 0x0

    move v0, v2

    .line 155
    .end local v0    # "this":Lcom/microsoft/appcenter/CustomProperties;
    :goto_0
    return v0

    .line 148
    .restart local v0    # "this":Lcom/microsoft/appcenter/CustomProperties;
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x80

    if-le v2, v3, :cond_2

    .line 149
    const-string/jumbo v2, "AppCenter"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Custom property \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\" length cannot be longer than "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " characters."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 152
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/CustomProperties;->mProperties:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 153
    const-string/jumbo v2, "AppCenter"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Custom property \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\" is already set or cleared and will be overridden."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_3
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method private isValidNumberValue(Ljava/lang/String;Ljava/lang/Number;)Z
    .locals 10

    .prologue
    .line 171
    move-object v1, p0

    .local v1, "this":Lcom/microsoft/appcenter/CustomProperties;
    move-object v2, p1

    .local v2, "key":Ljava/lang/String;
    move-object v3, p2

    .local v3, "value":Ljava/lang/Number;
    move-object v6, v3

    if-nez v6, :cond_0

    .line 172
    const-string/jumbo v6, "AppCenter"

    const-string/jumbo v7, "Custom property value cannot be null, did you mean to call clear?"

    invoke-static {v6, v7}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const/4 v6, 0x0

    move v1, v6

    .line 180
    .end local v1    # "this":Lcom/microsoft/appcenter/CustomProperties;
    :goto_0
    return v1

    .line 175
    .restart local v1    # "this":Lcom/microsoft/appcenter/CustomProperties;
    :cond_0
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    move-wide v4, v6

    .line 176
    .local v4, "doubleValue":D
    move-wide v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-nez v6, :cond_1

    move-wide v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 177
    :cond_1
    const-string/jumbo v6, "AppCenter"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Custom property \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\" value cannot be NaN or infinite."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const/4 v6, 0x0

    move v1, v6

    goto :goto_0

    .line 180
    :cond_2
    const/4 v6, 0x1

    move v1, v6

    goto :goto_0
.end method

.method private isValidStringValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/CustomProperties;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/String;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 160
    const-string/jumbo v3, "AppCenter"

    const-string/jumbo v4, "Custom property value cannot be null, did you mean to call clear?"

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const/4 v3, 0x0

    move v0, v3

    .line 167
    .end local v0    # "this":Lcom/microsoft/appcenter/CustomProperties;
    :goto_0
    return v0

    .line 163
    .restart local v0    # "this":Lcom/microsoft/appcenter/CustomProperties;
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x80

    if-le v3, v4, :cond_1

    .line 164
    const-string/jumbo v3, "AppCenter"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Custom property \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\" value length cannot be longer than "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " characters."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 167
    :cond_1
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized clear(Ljava/lang/String;)Lcom/microsoft/appcenter/CustomProperties;
    .locals 6

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/CustomProperties;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v5, p0

    monitor-enter v5

    move-object v2, v0

    move-object v3, v1

    :try_start_0
    invoke-direct {v2, v3}, Lcom/microsoft/appcenter/CustomProperties;->isValidKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/microsoft/appcenter/CustomProperties;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/CustomProperties;
    monitor-exit v5

    return-object v0

    .line 127
    .restart local v0    # "this":Lcom/microsoft/appcenter/CustomProperties;
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "this":Lcom/microsoft/appcenter/CustomProperties;
    throw v0
.end method

.method declared-synchronized getProperties()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/CustomProperties;
    move-object v4, p0

    monitor-enter v4

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/CustomProperties;->mProperties:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/CustomProperties;
    monitor-exit v4

    return-object v0

    .restart local v0    # "this":Lcom/microsoft/appcenter/CustomProperties;
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/microsoft/appcenter/CustomProperties;
    throw v0
.end method

.method public declared-synchronized set(Ljava/lang/String;Ljava/lang/Number;)Lcom/microsoft/appcenter/CustomProperties;
    .locals 7

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/CustomProperties;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Number;
    move-object v6, p0

    monitor-enter v6

    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-direct {v3, v4}, Lcom/microsoft/appcenter/CustomProperties;->isValidKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/microsoft/appcenter/CustomProperties;->isValidNumberValue(Ljava/lang/String;Ljava/lang/Number;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/microsoft/appcenter/CustomProperties;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Lcom/microsoft/appcenter/CustomProperties;
    monitor-exit v6

    return-object v0

    .line 98
    .restart local v0    # "this":Lcom/microsoft/appcenter/CustomProperties;
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lcom/microsoft/appcenter/CustomProperties;
    throw v0
.end method

.method public declared-synchronized set(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/CustomProperties;
    .locals 7

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/CustomProperties;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/String;
    move-object v6, p0

    monitor-enter v6

    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-direct {v3, v4}, Lcom/microsoft/appcenter/CustomProperties;->isValidKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/microsoft/appcenter/CustomProperties;->isValidStringValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/microsoft/appcenter/CustomProperties;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Lcom/microsoft/appcenter/CustomProperties;
    monitor-exit v6

    return-object v0

    .line 62
    .restart local v0    # "this":Lcom/microsoft/appcenter/CustomProperties;
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lcom/microsoft/appcenter/CustomProperties;
    throw v0
.end method

.method public declared-synchronized set(Ljava/lang/String;Ljava/util/Date;)Lcom/microsoft/appcenter/CustomProperties;
    .locals 7

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/CustomProperties;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/util/Date;
    move-object v6, p0

    monitor-enter v6

    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-direct {v3, v4}, Lcom/microsoft/appcenter/CustomProperties;->isValidKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 80
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/microsoft/appcenter/CustomProperties;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_0
    :goto_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Lcom/microsoft/appcenter/CustomProperties;
    monitor-exit v6

    return-object v0

    .line 82
    .restart local v0    # "this":Lcom/microsoft/appcenter/CustomProperties;
    :cond_1
    :try_start_1
    const-string/jumbo v3, "AppCenter"

    const-string/jumbo v4, "Custom property value cannot be null, did you mean to call clear?"

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lcom/microsoft/appcenter/CustomProperties;
    throw v0
.end method

.method public declared-synchronized set(Ljava/lang/String;Z)Lcom/microsoft/appcenter/CustomProperties;
    .locals 7

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/CustomProperties;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move v2, p2

    .local v2, "value":Z
    move-object v6, p0

    monitor-enter v6

    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-direct {v3, v4}, Lcom/microsoft/appcenter/CustomProperties;->isValidKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/microsoft/appcenter/CustomProperties;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :cond_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Lcom/microsoft/appcenter/CustomProperties;
    monitor-exit v6

    return-object v0

    .line 114
    .restart local v0    # "this":Lcom/microsoft/appcenter/CustomProperties;
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lcom/microsoft/appcenter/CustomProperties;
    throw v0
.end method
