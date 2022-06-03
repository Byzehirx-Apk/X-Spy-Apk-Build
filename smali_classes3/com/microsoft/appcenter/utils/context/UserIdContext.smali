.class public Lcom/microsoft/appcenter/utils/context/UserIdContext;
.super Ljava/lang/Object;
.source "UserIdContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/appcenter/utils/context/UserIdContext$Listener;
    }
.end annotation


# static fields
.field private static final CUSTOM_PREFIX:Ljava/lang/String; = "c"

.field public static final USER_ID_APP_CENTER_MAX_LENGTH:I = 0x100
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static sInstance:Lcom/microsoft/appcenter/utils/context/UserIdContext;


# instance fields
.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/microsoft/appcenter/utils/context/UserIdContext$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/context/UserIdContext;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 50
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, v1, Lcom/microsoft/appcenter/utils/context/UserIdContext;->mListeners:Ljava/util/Set;

    return-void
.end method

.method public static checkUserIdValidForAppCenter(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "userId":Ljava/lang/String;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x100

    if-le v1, v2, :cond_0

    .line 105
    const-string/jumbo v1, "AppCenter"

    const-string/jumbo v2, "userId is limited to 256 characters."

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const/4 v1, 0x0

    move v0, v1

    .line 108
    .end local v0    # "userId":Ljava/lang/String;
    :goto_0
    return v0

    .restart local v0    # "userId":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method

.method public static checkUserIdValidForOneCollector(Ljava/lang/String;)Z
    .locals 10

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "userId":Ljava/lang/String;
    move-object v3, v0

    if-nez v3, :cond_0

    .line 77
    const/4 v3, 0x1

    move v0, v3

    .line 94
    .end local v0    # "userId":Ljava/lang/String;
    .local v1, "prefixIndex":I
    :goto_0
    return v0

    .line 79
    .end local v1    # "prefixIndex":I
    .restart local v0    # "userId":Ljava/lang/String;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    const-string/jumbo v3, "AppCenter"

    const-string/jumbo v4, "userId must not be empty."

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 83
    :cond_1
    move-object v3, v0

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    move v1, v3

    .line 84
    .restart local v1    # "prefixIndex":I
    move v3, v1

    if-ltz v3, :cond_3

    .line 85
    move-object v3, v0

    const/4 v4, 0x0

    move v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 86
    .local v2, "prefix":Ljava/lang/String;
    move-object v3, v2

    const-string/jumbo v4, "c"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 87
    const-string/jumbo v3, "AppCenter"

    const-string/jumbo v4, "userId prefix must be \'%s%s\', \'%s%s\' is not supported."

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const-string/jumbo v8, "c"

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    const-string/jumbo v8, ":"

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x2

    move-object v8, v2

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x3

    const-string/jumbo v8, ":"

    aput-object v8, v6, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 89
    :cond_2
    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_3

    .line 90
    const-string/jumbo v3, "AppCenter"

    const-string/jumbo v4, "userId must not be empty."

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 94
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/microsoft/appcenter/utils/context/UserIdContext;
    .locals 4

    .prologue
    .line 58
    const-class v2, Lcom/microsoft/appcenter/utils/context/UserIdContext;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/microsoft/appcenter/utils/context/UserIdContext;->sInstance:Lcom/microsoft/appcenter/utils/context/UserIdContext;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/microsoft/appcenter/utils/context/UserIdContext;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lcom/microsoft/appcenter/utils/context/UserIdContext;-><init>()V

    sput-object v0, Lcom/microsoft/appcenter/utils/context/UserIdContext;->sInstance:Lcom/microsoft/appcenter/utils/context/UserIdContext;

    .line 61
    :cond_0
    sget-object v0, Lcom/microsoft/appcenter/utils/context/UserIdContext;->sInstance:Lcom/microsoft/appcenter/utils/context/UserIdContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static getPrefixedUserId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "userId":Ljava/lang/String;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "c:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 121
    .end local v0    # "userId":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "userId":Ljava/lang/String;
    :cond_0
    move-object v1, v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static declared-synchronized unsetInstance()V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 66
    const-class v1, Lcom/microsoft/appcenter/utils/context/UserIdContext;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/microsoft/appcenter/utils/context/UserIdContext;->sInstance:Lcom/microsoft/appcenter/utils/context/UserIdContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit v1

    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized updateUserId(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/context/UserIdContext;
    move-object v1, p1

    .local v1, "userId":Ljava/lang/String;
    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/microsoft/appcenter/utils/context/UserIdContext;->mUserId:Ljava/lang/String;

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    const/4 v2, 0x0

    move v0, v2

    .line 178
    .end local v0    # "this":Lcom/microsoft/appcenter/utils/context/UserIdContext;
    :goto_0
    monitor-exit v4

    return v0

    .line 177
    .restart local v0    # "this":Lcom/microsoft/appcenter/utils/context/UserIdContext;
    :cond_0
    move-object v2, v0

    move-object v3, v1

    :try_start_1
    iput-object v3, v2, Lcom/microsoft/appcenter/utils/context/UserIdContext;->mUserId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/context/UserIdContext;
    throw v0
.end method


# virtual methods
.method public addListener(Lcom/microsoft/appcenter/utils/context/UserIdContext$Listener;)V
    .locals 4
    .param p1    # Lcom/microsoft/appcenter/utils/context/UserIdContext$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/context/UserIdContext;
    move-object v1, p1

    .local v1, "listener":Lcom/microsoft/appcenter/utils/context/UserIdContext$Listener;
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/utils/context/UserIdContext;->mListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 131
    return-void
.end method

.method public declared-synchronized getUserId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/context/UserIdContext;
    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/microsoft/appcenter/utils/context/UserIdContext;->mUserId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/context/UserIdContext;
    monitor-exit v2

    return-object v0

    .restart local v0    # "this":Lcom/microsoft/appcenter/utils/context/UserIdContext;
    :catchall_0
    move-exception v0

    monitor-exit v2

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/context/UserIdContext;
    throw v0
.end method

.method public removeListener(Lcom/microsoft/appcenter/utils/context/UserIdContext$Listener;)V
    .locals 4
    .param p1    # Lcom/microsoft/appcenter/utils/context/UserIdContext$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/context/UserIdContext;
    move-object v1, p1

    .local v1, "listener":Lcom/microsoft/appcenter/utils/context/UserIdContext$Listener;
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/utils/context/UserIdContext;->mListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 140
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/context/UserIdContext;
    move-object v1, p1

    .local v1, "userId":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/microsoft/appcenter/utils/context/UserIdContext;->updateUserId(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 158
    .line 165
    :goto_0
    return-void

    .line 162
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/utils/context/UserIdContext;->mListeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/appcenter/utils/context/UserIdContext$Listener;

    move-object v3, v4

    .line 163
    .local v3, "listener":Lcom/microsoft/appcenter/utils/context/UserIdContext$Listener;
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/utils/context/UserIdContext;->mUserId:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/microsoft/appcenter/utils/context/UserIdContext$Listener;->onNewUserId(Ljava/lang/String;)V

    .line 164
    goto :goto_1

    .line 165
    .end local v3    # "listener":Lcom/microsoft/appcenter/utils/context/UserIdContext$Listener;
    :cond_1
    goto :goto_0
.end method
