.class public Lcom/microsoft/appcenter/analytics/channel/SessionTracker;
.super Lcom/microsoft/appcenter/channel/AbstractChannelListener;
.source "SessionTracker.java"


# static fields
.field private static final SESSION_TIMEOUT:J = 0x4e20L


# instance fields
.field private final mChannel:Lcom/microsoft/appcenter/channel/Channel;

.field private final mGroupName:Ljava/lang/String;

.field private mLastPausedTime:Ljava/lang/Long;

.field private mLastQueuedLogTime:J

.field private mLastResumedTime:Ljava/lang/Long;

.field private mSid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Lcom/microsoft/appcenter/channel/Channel;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/channel/SessionTracker;
    move-object v1, p1

    .local v1, "channel":Lcom/microsoft/appcenter/channel/Channel;
    move-object v2, p2

    .local v2, "groupName":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Lcom/microsoft/appcenter/channel/AbstractChannelListener;-><init>()V

    .line 74
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/microsoft/appcenter/analytics/channel/SessionTracker;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    .line 75
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/microsoft/appcenter/analytics/channel/SessionTracker;->mGroupName:Ljava/lang/String;

    .line 76
    return-void
.end method

.method private hasSessionTimedOut()Z
    .locals 13

    .prologue
    .line 187
    move-object v1, p0

    .local v1, "this":Lcom/microsoft/appcenter/analytics/channel/SessionTracker;
    move-object v6, v1

    iget-object v6, v6, Lcom/microsoft/appcenter/analytics/channel/SessionTracker;->mLastPausedTime:Ljava/lang/Long;

    if-nez v6, :cond_0

    .line 188
    const/4 v6, 0x0

    move v1, v6

    .line 196
    .end local v1    # "this":Lcom/microsoft/appcenter/analytics/channel/SessionTracker;
    .local v2, "now":J
    .local v4, "noLogSentForLong":Z
    .local v5, "wasBackgroundForLong":Z
    :goto_0
    return v1

    .line 192
    .end local v2    # "now":J
    .end local v4    # "noLogSentForLong":Z
    .end local v5    # "wasBackgroundForLong":Z
    .restart local v1    # "this":Lcom/microsoft/appcenter/analytics/channel/SessionTracker;
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-wide v2, v6

    .line 193
    .restart local v2    # "now":J
    move-wide v6, v2

    move-object v8, v1

    iget-wide v8, v8, Lcom/microsoft/appcenter/analytics/channel/SessionTracker;->mLastQueuedLogTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x4e20

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1

    const/4 v6, 0x1

    :goto_1
    move v4, v6

    .line 194
    .restart local v4    # "noLogSentForLong":Z
    move-object v6, v1

    iget-object v6, v6, Lcom/microsoft/appcenter/analytics/channel/SessionTracker;->mLastResumedTime:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object v8, v1

    iget-object v8, v8, Lcom/microsoft/appcenter/analytics/channel/SessionTracker;->mLastPausedTime:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object v10, v1

    iget-wide v10, v10, Lcom/microsoft/appcenter/analytics/channel/SessionTracker;->mLastQueuedLogTime:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x4e20

    cmp-long v6, v6, v8

    if-ltz v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    move v5, v6

    .line 195
    .restart local v5    # "wasBackgroundForLong":Z
    const-string/jumbo v6, "AppCenterAnalytics"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "noLogSentForLong="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " wasBackgroundForLong="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    move v6, v4

    if-eqz v6, :cond_3

    move v6, v5

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    :goto_3
    move v1, v6

    goto :goto_0

    .line 193
    .end local v4    # "noLogSentForLong":Z
    .end local v5    # "wasBackgroundForLong":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 194
    .restart local v4    # "noLogSentForLong":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 196
    .restart local v5    # "wasBackgroundForLong":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_3
.end method

.method private sendStartSessionIfNeeded()V
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 124
    move-object v1, p0

    .local v1, "this":Lcom/microsoft/appcenter/analytics/channel/SessionTracker;
    move-object v3, v1

    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/channel/SessionTracker;->mSid:Ljava/util/UUID;

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-direct {v3}, Lcom/microsoft/appcenter/analytics/channel/SessionTracker;->hasSessionTimedOut()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    :cond_0
    move-object v3, v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    iput-object v4, v3, Lcom/microsoft/appcenter/analytics/channel/SessionTracker;->mSid:Ljava/util/UUID;

    .line 130
    invoke-static {}, Lcom/microsoft/appcenter/utils/context/SessionContext;->getInstance()Lcom/microsoft/appcenter/utils/context/SessionContext;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Lcom/microsoft/appcenter/analytics/channel/SessionTracker;->mSid:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/utils/context/SessionContext;->addSession(Ljava/util/UUID;)V

    .line 136
    move-object v3, v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/microsoft/appcenter/analytics/channel/SessionTracker;->mLastQueuedLogTime:J

    .line 139
    new-instance v3, Lcom/microsoft/appcenter/analytics/ingestion/models/StartSessionLog;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lcom/microsoft/appcenter/analytics/ingestion/models/StartSessionLog;-><init>()V

    move-object v2, v3

    .line 140
    .local v2, "startSessionLog":Lcom/microsoft/appcenter/analytics/ingestion/models/StartSessionLog;
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Lcom/microsoft/appcenter/analytics/channel/SessionTracker;->mSid:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/analytics/ingestion/models/StartSessionLog;->setSid(Ljava/util/UUID;)V

    .line 141
    move-object v3, v1

    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/channel/SessionTracker;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v4, v2

    move-object v5, v1

    iget-object v5, v5, Lcom/microsoft/appcenter/analytics/channel/SessionTracker;->mGroupName:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {v3, v4, v5, v6}, Lcom/microsoft/appcenter/channel/Channel;->enqueue(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;I)V

    .line 143
    .end local v2    # "startSessionLog":Lcom/microsoft/appcenter/analytics/ingestion/models/StartSessionLog;
    :cond_1
    return-void
.end method


# virtual methods
.method public clearSessions()V
    .locals 2

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/channel/SessionTracker;
    invoke-static {}, Lcom/microsoft/appcenter/utils/context/SessionContext;->getInstance()Lcom/microsoft/appcenter/utils/context/SessionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/appcenter/utils/context/SessionContext;->clearSessions()V

    .line 173
    return-void
.end method

.method public onActivityPaused()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/channel/SessionTracker;
    const-string/jumbo v1, "AppCenterAnalytics"

    const-string/jumbo v2, "onActivityPaused"

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    move-object v1, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/microsoft/appcenter/analytics/channel/SessionTracker;->mLastPausedTime:Ljava/lang/Long;

    .line 166
    return-void
.end method

.method public onActivityResumed()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/channel/SessionTracker;
    const-string/jumbo v1, "AppCenterAnalytics"

    const-string/jumbo v2, "onActivityResumed"

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    move-object v1, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/microsoft/appcenter/analytics/channel/SessionTracker;->mLastResumedTime:Ljava/lang/Long;

    .line 154
    move-object v1, v0

    invoke-direct {v1}, Lcom/microsoft/appcenter/analytics/channel/SessionTracker;->sendStartSessionIfNeeded()V

    .line 155
    return-void
.end method

.method public onPreparingLog(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;)V
    .locals 8
    .param p1    # Lcom/microsoft/appcenter/ingestion/models/Log;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/channel/SessionTracker;
    move-object v1, p1

    .local v1, "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    move-object v2, p2

    .local v2, "groupName":Ljava/lang/String;
    move-object v5, v1

    instance-of v5, v5, Lcom/microsoft/appcenter/analytics/ingestion/models/StartSessionLog;

    if-nez v5, :cond_0

    move-object v5, v1

    instance-of v5, v5, Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;

    if-eqz v5, :cond_1

    .line 86
    .line 111
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    move-object v5, v1

    invoke-interface {v5}, Lcom/microsoft/appcenter/ingestion/models/Log;->getTimestamp()Ljava/util/Date;

    move-result-object v5

    move-object v3, v5

    .line 95
    .local v3, "timestamp":Ljava/util/Date;
    move-object v5, v3

    if-eqz v5, :cond_3

    .line 96
    invoke-static {}, Lcom/microsoft/appcenter/utils/context/SessionContext;->getInstance()Lcom/microsoft/appcenter/utils/context/SessionContext;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/microsoft/appcenter/utils/context/SessionContext;->getSessionAt(J)Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;

    move-result-object v5

    move-object v4, v5

    .line 97
    .local v4, "pastSession":Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 98
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v6}, Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;->getSessionId()Ljava/util/UUID;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/microsoft/appcenter/ingestion/models/Log;->setSid(Ljava/util/UUID;)V

    .line 100
    .line 111
    .end local v4    # "pastSession":Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;
    :cond_2
    :goto_1
    goto :goto_0

    .line 106
    :cond_3
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/microsoft/appcenter/analytics/channel/SessionTracker;->mSid:Ljava/util/UUID;

    invoke-interface {v5, v6}, Lcom/microsoft/appcenter/ingestion/models/Log;->setSid(Ljava/util/UUID;)V

    .line 109
    move-object v5, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/microsoft/appcenter/analytics/channel/SessionTracker;->mLastQueuedLogTime:J

    goto :goto_1
.end method
