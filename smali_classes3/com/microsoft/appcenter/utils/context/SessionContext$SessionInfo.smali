.class public Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;
.super Ljava/lang/Object;
.source "SessionContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/utils/context/SessionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionInfo"
.end annotation


# instance fields
.field private final mAppLaunchTimestamp:J

.field private final mSessionId:Ljava/util/UUID;

.field private final mTimestamp:J


# direct methods
.method constructor <init>(JLjava/util/UUID;J)V
    .locals 10

    .prologue
    .line 191
    move-object v1, p0

    .local v1, "this":Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;
    move-wide v2, p1

    .local v2, "timestamp":J
    move-object v4, p3

    .local v4, "sessionId":Ljava/util/UUID;
    move-wide v5, p4

    .local v5, "appLaunchTimestamp":J
    move-object v7, v1

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 192
    move-object v7, v1

    move-wide v8, v2

    iput-wide v8, v7, Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;->mTimestamp:J

    .line 193
    move-object v7, v1

    move-object v8, v4

    iput-object v8, v7, Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;->mSessionId:Ljava/util/UUID;

    .line 194
    move-object v7, v1

    move-wide v8, v5

    iput-wide v8, v7, Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;->mAppLaunchTimestamp:J

    .line 195
    return-void
.end method


# virtual methods
.method public getAppLaunchTimestamp()J
    .locals 3

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;
    move-object v1, v0

    iget-wide v1, v1, Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;->mAppLaunchTimestamp:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;
    return-wide v0
.end method

.method public getSessionId()Ljava/util/UUID;
    .locals 2

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;->mSessionId:Ljava/util/UUID;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;
    return-object v0
.end method

.method getTimestamp()J
    .locals 3

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;
    move-object v1, v0

    iget-wide v1, v1, Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;->mTimestamp:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 221
    move-object v1, p0

    .local v1, "this":Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v4}, Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 222
    .local v2, "rawSession":Ljava/lang/String;
    move-object v3, v1

    invoke-virtual {v3}, Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;->getSessionId()Ljava/util/UUID;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;->getSessionId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 225
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;->getAppLaunchTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 226
    move-object v3, v2

    move-object v1, v3

    .end local v1    # "this":Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;
    return-object v1
.end method
