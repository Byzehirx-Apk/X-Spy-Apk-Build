.class public Lcom/microsoft/appcenter/utils/context/SessionContext;
.super Ljava/lang/Object;
.source "SessionContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;
    }
.end annotation


# static fields
.field private static final STORAGE_KEY:Ljava/lang/String; = "sessions"

.field private static final STORAGE_KEY_VALUE_SEPARATOR:Ljava/lang/String; = "/"

.field private static final STORAGE_MAX_SESSIONS:I = 0xa

.field private static sInstance:Lcom/microsoft/appcenter/utils/context/SessionContext;


# instance fields
.field private final mAppLaunchTimestamp:J

.field private final mSessions:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 22
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 69
    move-object/from16 v1, p0

    .local v1, "this":Lcom/microsoft/appcenter/utils/context/SessionContext;
    move-object v12, v1

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 54
    move-object v12, v1

    new-instance v13, Ljava/util/TreeMap;

    move-object/from16 v21, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v21

    invoke-direct {v14}, Ljava/util/TreeMap;-><init>()V

    iput-object v13, v12, Lcom/microsoft/appcenter/utils/context/SessionContext;->mSessions:Ljava/util/NavigableMap;

    .line 72
    move-object v12, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v12, Lcom/microsoft/appcenter/utils/context/SessionContext;->mAppLaunchTimestamp:J

    .line 73
    const-string/jumbo v12, "sessions"

    invoke-static {v12}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->getStringSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v12

    move-object v2, v12

    .line 74
    .local v2, "storedSessions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v12, v2

    if-eqz v12, :cond_2

    .line 75
    move-object v12, v2

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v3, v12

    :goto_0
    move-object v12, v3

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    move-object v12, v3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object v4, v12

    .line 76
    .local v4, "session":Ljava/lang/String;
    move-object v12, v4

    const-string/jumbo v13, "/"

    const/4 v14, -0x1

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v12

    move-object v5, v12

    .line 78
    .local v5, "split":[Ljava/lang/String;
    move-object v12, v5

    const/4 v13, 0x0

    :try_start_0
    aget-object v12, v12, v13

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    move-wide v6, v12

    .line 79
    .local v6, "time":J
    move-object v12, v5

    const/4 v13, 0x1

    aget-object v12, v12, v13

    move-object v8, v12

    .line 80
    .local v8, "rawSid":Ljava/lang/String;
    move-object v12, v8

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x0

    :goto_1
    move-object v9, v12

    .line 82
    .local v9, "sid":Ljava/util/UUID;
    move-object v12, v5

    array-length v12, v12

    const/4 v13, 0x2

    if-le v12, v13, :cond_1

    .line 83
    move-object v12, v5

    const/4 v13, 0x2

    aget-object v12, v12, v13

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    move-wide v10, v12

    .line 89
    .local v10, "appLaunchTimestamp":J
    :goto_2
    move-object v12, v1

    iget-object v12, v12, Lcom/microsoft/appcenter/utils/context/SessionContext;->mSessions:Ljava/util/NavigableMap;

    move-wide v13, v6

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    new-instance v14, Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    move-wide/from16 v16, v6

    move-object/from16 v18, v9

    move-wide/from16 v19, v10

    invoke-direct/range {v15 .. v20}, Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;-><init>(JLjava/util/UUID;J)V

    invoke-interface {v12, v13, v14}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 92
    .line 93
    .end local v6    # "time":J
    .end local v8    # "rawSid":Ljava/lang/String;
    .end local v9    # "sid":Ljava/util/UUID;
    .end local v10    # "appLaunchTimestamp":J
    :goto_3
    goto :goto_0

    .line 80
    .restart local v6    # "time":J
    .restart local v8    # "rawSid":Ljava/lang/String;
    :cond_0
    move-object v12, v8

    invoke-static {v12}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    goto :goto_1

    .line 87
    .restart local v9    # "sid":Ljava/util/UUID;
    :cond_1
    move-wide v12, v6

    move-wide v10, v12

    .restart local v10    # "appLaunchTimestamp":J
    goto :goto_2

    .line 90
    .end local v6    # "time":J
    .end local v8    # "rawSid":Ljava/lang/String;
    .end local v9    # "sid":Ljava/util/UUID;
    .end local v10    # "appLaunchTimestamp":J
    :catch_0
    move-exception v12

    move-object v6, v12

    .line 91
    .local v6, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v12, "AppCenter"

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v21, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v21

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Ignore invalid session in store: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v14, v6

    invoke-static {v12, v13, v14}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 95
    .end local v4    # "session":Ljava/lang/String;
    .end local v5    # "split":[Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :cond_2
    const-string/jumbo v12, "AppCenter"

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v21, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v21

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Loaded stored sessions: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v1

    iget-object v14, v14, Lcom/microsoft/appcenter/utils/context/SessionContext;->mSessions:Ljava/util/NavigableMap;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    move-object v12, v1

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/microsoft/appcenter/utils/context/SessionContext;->addSession(Ljava/util/UUID;)V

    .line 102
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/microsoft/appcenter/utils/context/SessionContext;
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 106
    const-class v2, Lcom/microsoft/appcenter/utils/context/SessionContext;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/microsoft/appcenter/utils/context/SessionContext;->sInstance:Lcom/microsoft/appcenter/utils/context/SessionContext;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/microsoft/appcenter/utils/context/SessionContext;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lcom/microsoft/appcenter/utils/context/SessionContext;-><init>()V

    sput-object v0, Lcom/microsoft/appcenter/utils/context/SessionContext;->sInstance:Lcom/microsoft/appcenter/utils/context/SessionContext;

    .line 109
    :cond_0
    sget-object v0, Lcom/microsoft/appcenter/utils/context/SessionContext;->sInstance:Lcom/microsoft/appcenter/utils/context/SessionContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized unsetInstance()V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 114
    const-class v1, Lcom/microsoft/appcenter/utils/context/SessionContext;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/microsoft/appcenter/utils/context/SessionContext;->sInstance:Lcom/microsoft/appcenter/utils/context/SessionContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit v1

    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized addSession(Ljava/util/UUID;)V
    .locals 18

    .prologue
    .line 126
    move-object/from16 v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/context/SessionContext;
    move-object/from16 v1, p1

    .local v1, "sessionId":Ljava/util/UUID;
    move-object/from16 v16, p0

    monitor-enter v16

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-wide v2, v7

    .line 127
    .local v2, "now":J
    move-object v7, v0

    iget-object v7, v7, Lcom/microsoft/appcenter/utils/context/SessionContext;->mSessions:Ljava/util/NavigableMap;

    move-wide v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    new-instance v9, Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    move-wide v11, v2

    move-object v13, v1

    move-object v14, v0

    iget-wide v14, v14, Lcom/microsoft/appcenter/utils/context/SessionContext;->mAppLaunchTimestamp:J

    invoke-direct/range {v10 .. v15}, Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;-><init>(JLjava/util/UUID;J)V

    invoke-interface {v7, v8, v9}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 130
    move-object v7, v0

    iget-object v7, v7, Lcom/microsoft/appcenter/utils/context/SessionContext;->mSessions:Ljava/util/NavigableMap;

    invoke-interface {v7}, Ljava/util/NavigableMap;->size()I

    move-result v7

    const/16 v8, 0xa

    if-le v7, v8, :cond_0

    .line 131
    move-object v7, v0

    iget-object v7, v7, Lcom/microsoft/appcenter/utils/context/SessionContext;->mSessions:Ljava/util/NavigableMap;

    invoke-interface {v7}, Ljava/util/NavigableMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v7

    .line 135
    :cond_0
    new-instance v7, Ljava/util/LinkedHashSet;

    move-object/from16 v17, v7

    move-object/from16 v7, v17

    move-object/from16 v8, v17

    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v4, v7

    .line 136
    .local v4, "sessionStorage":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v7, v0

    iget-object v7, v7, Lcom/microsoft/appcenter/utils/context/SessionContext;->mSessions:Ljava/util/NavigableMap;

    invoke-interface {v7}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    :goto_0
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;

    move-object v6, v7

    .line 137
    .local v6, "session":Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;
    move-object v7, v4

    move-object v8, v6

    invoke-virtual {v8}, Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 138
    goto :goto_0

    .line 139
    .end local v6    # "session":Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;
    :cond_1
    const-string/jumbo v7, "sessions"

    move-object v8, v4

    invoke-static {v7, v8}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit v16

    return-void

    .line 126
    .end local v2    # "now":J
    .end local v4    # "sessionStorage":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    monitor-exit v16

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/context/SessionContext;
    throw v0
.end method

.method public declared-synchronized clearSessions()V
    .locals 3

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/context/SessionContext;
    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/microsoft/appcenter/utils/context/SessionContext;->mSessions:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->clear()V

    .line 161
    const-string/jumbo v1, "sessions"

    invoke-static {v1}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit v2

    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v2

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/context/SessionContext;
    throw v0
.end method

.method public declared-synchronized getSessionAt(J)Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;
    .locals 9

    .prologue
    .line 149
    move-object v1, p0

    .local v1, "this":Lcom/microsoft/appcenter/utils/context/SessionContext;
    move-wide v2, p1

    .local v2, "timestamp":J
    move-object v8, p0

    monitor-enter v8

    move-object v5, v1

    :try_start_0
    iget-object v5, v5, Lcom/microsoft/appcenter/utils/context/SessionContext;->mSessions:Ljava/util/NavigableMap;

    move-wide v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    move-object v4, v5

    .line 150
    .local v4, "pastEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;>;"
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 151
    move-object v5, v4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v5

    .line 153
    .end local v1    # "this":Lcom/microsoft/appcenter/utils/context/SessionContext;
    :goto_0
    monitor-exit v8

    return-object v1

    .restart local v1    # "this":Lcom/microsoft/appcenter/utils/context/SessionContext;
    :cond_0
    const/4 v5, 0x0

    move-object v1, v5

    goto :goto_0

    .line 149
    .end local v4    # "pastEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit v8

    .end local v1    # "this":Lcom/microsoft/appcenter/utils/context/SessionContext;
    throw v1
.end method
