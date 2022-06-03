.class public Lcom/microsoft/appcenter/analytics/AuthenticationProvider;
.super Ljava/lang/Object;
.source "AuthenticationProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/appcenter/analytics/AuthenticationProvider$AuthenticationCallback;,
        Lcom/microsoft/appcenter/analytics/AuthenticationProvider$TokenProvider;,
        Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;
    }
.end annotation


# static fields
.field private static final REFRESH_THRESHOLD:J = 0x927c0L


# instance fields
.field private mCallback:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$AuthenticationCallback;

.field private mExpiryDate:Ljava/util/Date;

.field private final mTicketKey:Ljava/lang/String;

.field private final mTicketKeyHash:Ljava/lang/String;

.field private final mTokenProvider:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$TokenProvider;

.field private final mType:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;


# direct methods
.method public constructor <init>(Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;Ljava/lang/String;Lcom/microsoft/appcenter/analytics/AuthenticationProvider$TokenProvider;)V
    .locals 6

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/AuthenticationProvider;
    move-object v1, p1

    .local v1, "type":Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;
    move-object v2, p2

    .local v2, "ticketKey":Ljava/lang/String;
    move-object v3, p3

    .local v3, "tokenProvider":Lcom/microsoft/appcenter/analytics/AuthenticationProvider$TokenProvider;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 69
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mType:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;

    .line 70
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mTicketKey:Ljava/lang/String;

    .line 71
    move-object v4, v0

    move-object v5, v2

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    iput-object v5, v4, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mTicketKeyHash:Ljava/lang/String;

    .line 72
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mTokenProvider:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$TokenProvider;

    .line 73
    return-void

    .line 71
    :cond_0
    move-object v5, v2

    invoke-static {v5}, Lcom/microsoft/appcenter/utils/HashUtils;->sha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/microsoft/appcenter/analytics/AuthenticationProvider;Ljava/lang/String;Ljava/util/Date;Lcom/microsoft/appcenter/analytics/AuthenticationProvider$AuthenticationCallback;)V
    .locals 8

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/analytics/AuthenticationProvider;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/String;
    move-object v2, p2

    .local v2, "x2":Ljava/util/Date;
    move-object v3, p3

    .local v3, "x3":Lcom/microsoft/appcenter/analytics/AuthenticationProvider$AuthenticationCallback;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->handleTokenUpdate(Ljava/lang/String;Ljava/util/Date;Lcom/microsoft/appcenter/analytics/AuthenticationProvider$AuthenticationCallback;)V

    return-void
.end method

.method private declared-synchronized handleTokenUpdate(Ljava/lang/String;Ljava/util/Date;Lcom/microsoft/appcenter/analytics/AuthenticationProvider$AuthenticationCallback;)V
    .locals 9

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/AuthenticationProvider;
    move-object v1, p1

    .local v1, "token":Ljava/lang/String;
    move-object v2, p2

    .local v2, "expiryDate":Ljava/util/Date;
    move-object v3, p3

    .local v3, "callback":Lcom/microsoft/appcenter/analytics/AuthenticationProvider$AuthenticationCallback;
    move-object v7, p0

    monitor-enter v7

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mCallback:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$AuthenticationCallback;

    move-object v5, v3

    if-eq v4, v5, :cond_0

    .line 144
    const-string/jumbo v4, "AppCenterAnalytics"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Ignore duplicate authentication callback calls, provider="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mType:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    .line 167
    :goto_0
    monitor-exit v7

    return-void

    .line 149
    :cond_0
    move-object v4, v0

    const/4 v5, 0x0

    :try_start_1
    iput-object v5, v4, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mCallback:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$AuthenticationCallback;

    .line 152
    const-string/jumbo v4, "AppCenterAnalytics"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Got result back from token provider="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mType:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    move-object v4, v1

    if-nez v4, :cond_1

    .line 154
    const-string/jumbo v4, "AppCenterAnalytics"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Authentication failed for ticketKey="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mTicketKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    goto :goto_0

    .line 157
    :cond_1
    move-object v4, v2

    if-nez v4, :cond_2

    .line 158
    const-string/jumbo v4, "AppCenterAnalytics"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No expiry date provided for ticketKey="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mTicketKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    goto :goto_0

    .line 163
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mTicketKeyHash:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    iget-object v6, v6, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mType:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;

    invoke-static {v6}, Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;->access$100(Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/microsoft/appcenter/utils/TicketCache;->putTicket(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mExpiryDate:Ljava/util/Date;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    goto/16 :goto_0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v7

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/AuthenticationProvider;
    throw v0
.end method


# virtual methods
.method declared-synchronized acquireTokenAsync()V
    .locals 7

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/AuthenticationProvider;
    move-object v5, p0

    monitor-enter v5

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mCallback:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$AuthenticationCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 118
    .line 131
    :goto_0
    monitor-exit v5

    return-void

    .line 122
    :cond_0
    :try_start_1
    const-string/jumbo v1, "AppCenterAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling token provider="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mType:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " callback."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    move-object v1, v0

    new-instance v2, Lcom/microsoft/appcenter/analytics/AuthenticationProvider$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/microsoft/appcenter/analytics/AuthenticationProvider$1;-><init>(Lcom/microsoft/appcenter/analytics/AuthenticationProvider;)V

    iput-object v2, v1, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mCallback:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$AuthenticationCallback;

    .line 130
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mTokenProvider:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$TokenProvider;

    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mTicketKey:Ljava/lang/String;

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mCallback:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$AuthenticationCallback;

    invoke-interface {v1, v2, v3}, Lcom/microsoft/appcenter/analytics/AuthenticationProvider$TokenProvider;->acquireToken(Ljava/lang/String;Lcom/microsoft/appcenter/analytics/AuthenticationProvider$AuthenticationCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/AuthenticationProvider;
    throw v0
.end method

.method declared-synchronized checkTokenExpiry()V
    .locals 9

    .prologue
    .line 173
    move-object v1, p0

    .local v1, "this":Lcom/microsoft/appcenter/analytics/AuthenticationProvider;
    move-object v8, p0

    monitor-enter v8

    move-object v2, v1

    :try_start_0
    iget-object v2, v2, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mExpiryDate:Ljava/util/Date;

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mExpiryDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x927c0

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 174
    move-object v2, v1

    invoke-virtual {v2}, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->acquireTokenAsync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :cond_0
    monitor-exit v8

    return-void

    .line 173
    :catchall_0
    move-exception v1

    monitor-exit v8

    .end local v1    # "this":Lcom/microsoft/appcenter/analytics/AuthenticationProvider;
    throw v1
.end method

.method getTicketKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/AuthenticationProvider;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mTicketKey:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/AuthenticationProvider;
    return-object v0
.end method

.method getTicketKeyHash()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/AuthenticationProvider;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mTicketKeyHash:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/AuthenticationProvider;
    return-object v0
.end method

.method getTokenProvider()Lcom/microsoft/appcenter/analytics/AuthenticationProvider$TokenProvider;
    .locals 2

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/AuthenticationProvider;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mTokenProvider:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$TokenProvider;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/AuthenticationProvider;
    return-object v0
.end method

.method getType()Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/AuthenticationProvider;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mType:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/analytics/AuthenticationProvider;
    return-object v0
.end method
