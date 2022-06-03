.class public Lcom/microsoft/appcenter/utils/NetworkStateHelper;
.super Ljava/lang/Object;
.source "NetworkStateHelper.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/appcenter/utils/NetworkStateHelper$ConnectivityReceiver;,
        Lcom/microsoft/appcenter/utils/NetworkStateHelper$Listener;
    }
.end annotation


# static fields
.field private static sSharedInstance:Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mConnectivityReceiver:Lcom/microsoft/appcenter/utils/NetworkStateHelper$ConnectivityReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/microsoft/appcenter/utils/NetworkStateHelper$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 56
    move-object v2, v0

    new-instance v3, Ljava/util/concurrent/CopyOnWriteArraySet;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v3, v2, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mListeners:Ljava/util/Set;

    .line 71
    move-object v2, v0

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v3, v2, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v2, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mContext:Landroid/content/Context;

    .line 81
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, v2, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 82
    move-object v2, v0

    invoke-virtual {v2}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->reopen()V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/appcenter/utils/NetworkStateHelper;Landroid/net/Network;)V
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    move-object v1, p1

    .local v1, "x1":Landroid/net/Network;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->onNetworkAvailable(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic access$100(Lcom/microsoft/appcenter/utils/NetworkStateHelper;Landroid/net/Network;)V
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    move-object v1, p1

    .local v1, "x1":Landroid/net/Network;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->onNetworkLost(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic access$300(Lcom/microsoft/appcenter/utils/NetworkStateHelper;)V
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    move-object v1, v0

    invoke-direct {v1}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->handleNetworkStateUpdate()V

    return-void
.end method

.method private getOldIntentFilter()Landroid/content/IntentFilter;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    new-instance v1, Landroid/content/IntentFilter;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    return-object v0
.end method

.method public static declared-synchronized getSharedInstance(Landroid/content/Context;)Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    .locals 6

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    const-class v4, Lcom/microsoft/appcenter/utils/NetworkStateHelper;

    monitor-enter v4

    :try_start_0
    sget-object v1, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->sSharedInstance:Lcom/microsoft/appcenter/utils/NetworkStateHelper;

    if-nez v1, :cond_0

    .line 97
    new-instance v1, Lcom/microsoft/appcenter/utils/NetworkStateHelper;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->sSharedInstance:Lcom/microsoft/appcenter/utils/NetworkStateHelper;

    .line 99
    :cond_0
    sget-object v1, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->sSharedInstance:Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .end local v0    # "context":Landroid/content/Context;
    monitor-exit v4

    return-object v0

    .line 96
    .restart local v0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "context":Landroid/content/Context;
    throw v0
.end method

.method private handleNetworkStateUpdate()V
    .locals 5

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    move-object v2, v0

    invoke-direct {v2}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->isAnyNetworkConnected()Z

    move-result v2

    move v1, v2

    .line 227
    .local v1, "connected":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    move v3, v1

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    move v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->notifyNetworkStateUpdated(Z)V

    .line 230
    :cond_0
    return-void

    .line 227
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isAnyNetworkConnected()Z
    .locals 9

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_3

    .line 171
    move-object v7, v0

    iget-object v7, v7, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v7

    move-object v1, v7

    .line 172
    .local v1, "networks":[Landroid/net/Network;
    move-object v7, v1

    if-nez v7, :cond_0

    .line 173
    const/4 v7, 0x0

    move v0, v7

    .line 194
    .end local v0    # "this":Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    .local v1, "networks":[Landroid/net/NetworkInfo;
    .local v5, "info":Landroid/net/NetworkInfo;
    :goto_0
    return v0

    .line 175
    .end local v5    # "info":Landroid/net/NetworkInfo;
    .restart local v0    # "this":Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    .local v1, "networks":[Landroid/net/Network;
    :cond_0
    move-object v7, v1

    move-object v2, v7

    move-object v7, v2

    array-length v7, v7

    move v3, v7

    const/4 v7, 0x0

    move v4, v7

    :goto_1
    move v7, v4

    move v8, v3

    if-ge v7, v8, :cond_2

    move-object v7, v2

    move v8, v4

    aget-object v7, v7, v8

    move-object v5, v7

    .line 176
    .local v5, "network":Landroid/net/Network;
    move-object v7, v0

    iget-object v7, v7, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v7

    move-object v6, v7

    .line 177
    .local v6, "info":Landroid/net/NetworkInfo;
    move-object v7, v6

    if-eqz v7, :cond_1

    move-object v7, v6

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 178
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 175
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 181
    .line 194
    .end local v1    # "networks":[Landroid/net/Network;
    .end local v5    # "network":Landroid/net/Network;
    .end local v6    # "info":Landroid/net/NetworkInfo;
    :cond_2
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 184
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v7

    move-object v1, v7

    .line 185
    .local v1, "networks":[Landroid/net/NetworkInfo;
    move-object v7, v1

    if-nez v7, :cond_4

    .line 186
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 188
    :cond_4
    move-object v7, v1

    move-object v2, v7

    move-object v7, v2

    array-length v7, v7

    move v3, v7

    const/4 v7, 0x0

    move v4, v7

    :goto_2
    move v7, v4

    move v8, v3

    if-ge v7, v8, :cond_2

    move-object v7, v2

    move v8, v4

    aget-object v7, v7, v8

    move-object v5, v7

    .line 189
    .local v5, "info":Landroid/net/NetworkInfo;
    move-object v7, v5

    if-eqz v7, :cond_5

    move-object v7, v5

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 190
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 188
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method private notifyNetworkStateUpdated(Z)V
    .locals 8

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    move v1, p1

    .local v1, "connected":Z
    const-string/jumbo v4, "AppCenter"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Network has been "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    if-eqz v6, :cond_0

    const-string/jumbo v6, "connected."

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mListeners:Ljava/util/Set;

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

    check-cast v4, Lcom/microsoft/appcenter/utils/NetworkStateHelper$Listener;

    move-object v3, v4

    .line 240
    .local v3, "listener":Lcom/microsoft/appcenter/utils/NetworkStateHelper$Listener;
    move-object v4, v3

    move v5, v1

    invoke-interface {v4, v5}, Lcom/microsoft/appcenter/utils/NetworkStateHelper$Listener;->onNetworkStateUpdated(Z)V

    .line 241
    goto :goto_1

    .line 238
    .end local v3    # "listener":Lcom/microsoft/appcenter/utils/NetworkStateHelper$Listener;
    :cond_0
    const-string/jumbo v6, "disconnected."

    goto :goto_0

    .line 242
    :cond_1
    return-void
.end method

.method private onNetworkAvailable(Landroid/net/Network;)V
    .locals 6
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    move-object v1, p1

    .local v1, "network":Landroid/net/Network;
    const-string/jumbo v2, "AppCenter"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is available."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->notifyNetworkStateUpdated(Z)V

    .line 206
    :cond_0
    return-void
.end method

.method private onNetworkLost(Landroid/net/Network;)V
    .locals 10
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    move-object v1, p1

    .local v1, "network":Landroid/net/Network;
    const-string/jumbo v4, "AppCenter"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Network "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is lost."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v4

    move-object v2, v4

    .line 215
    .local v2, "networks":[Landroid/net/Network;
    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v2

    array-length v4, v4

    if-eqz v4, :cond_0

    move-object v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/net/Network;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    .line 216
    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v4, 0x1

    :goto_0
    move v3, v4

    .line 217
    .local v3, "noNetwork":Z
    move v4, v3

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 218
    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->notifyNetworkStateUpdated(Z)V

    .line 220
    :cond_1
    return-void

    .line 216
    .end local v3    # "noNetwork":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized unsetInstance()V
    .locals 2

    .prologue
    .line 86
    const-class v1, Lcom/microsoft/appcenter/utils/NetworkStateHelper;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->sSharedInstance:Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit v1

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addListener(Lcom/microsoft/appcenter/utils/NetworkStateHelper$Listener;)V
    .locals 4

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    move-object v1, p1

    .local v1, "listener":Lcom/microsoft/appcenter/utils/NetworkStateHelper$Listener;
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 261
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 247
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 248
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 252
    :goto_0
    return-void

    .line 250
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mContext:Landroid/content/Context;

    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mConnectivityReceiver:Lcom/microsoft/appcenter/utils/NetworkStateHelper$ConnectivityReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public isNetworkConnected()Z
    .locals 2

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-direct {v1}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->isAnyNetworkConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    return v0

    .restart local v0    # "this":Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeListener(Lcom/microsoft/appcenter/utils/NetworkStateHelper$Listener;)V
    .locals 4

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    move-object v1, p1

    .local v1, "listener":Lcom/microsoft/appcenter/utils/NetworkStateHelper$Listener;
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 270
    return-void
.end method

.method public reopen()V
    .locals 8

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 116
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Landroid/net/NetworkRequest$Builder;-><init>()V

    move-object v1, v2

    .line 117
    .local v1, "request":Landroid/net/NetworkRequest$Builder;
    move-object v2, v1

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    .line 118
    move-object v2, v0

    new-instance v3, Lcom/microsoft/appcenter/utils/NetworkStateHelper$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/microsoft/appcenter/utils/NetworkStateHelper$1;-><init>(Lcom/microsoft/appcenter/utils/NetworkStateHelper;)V

    iput-object v3, v2, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 130
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object v3, v1

    invoke-virtual {v3}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v3, v4}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 131
    .line 146
    .line 147
    .end local v1    # "request":Landroid/net/NetworkRequest$Builder;
    :goto_0
    return-void

    .line 132
    :cond_0
    move-object v2, v0

    new-instance v3, Lcom/microsoft/appcenter/utils/NetworkStateHelper$ConnectivityReceiver;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/microsoft/appcenter/utils/NetworkStateHelper$ConnectivityReceiver;-><init>(Lcom/microsoft/appcenter/utils/NetworkStateHelper;Lcom/microsoft/appcenter/utils/NetworkStateHelper$1;)V

    iput-object v3, v2, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mConnectivityReceiver:Lcom/microsoft/appcenter/utils/NetworkStateHelper$ConnectivityReceiver;

    .line 133
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mContext:Landroid/content/Context;

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mConnectivityReceiver:Lcom/microsoft/appcenter/utils/NetworkStateHelper$ConnectivityReceiver;

    move-object v4, v0

    invoke-direct {v4}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->getOldIntentFilter()Landroid/content/IntentFilter;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 134
    move-object v2, v0

    invoke-direct {v2}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->handleNetworkStateUpdate()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 142
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "AppCenter"

    const-string/jumbo v3, "Cannot access network state information."

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method
